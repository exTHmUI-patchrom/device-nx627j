.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final HYPHENEDIT_MASK_END_OF_LINE:I = 0x7

.field public static final HYPHENEDIT_MASK_START_OF_LINE:I = 0x18

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLocaleListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativeColorFilter:J

.field private mNativePaint:J

.field private mNativeShader:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mShader:Landroid/graphics/Shader;

.field private mShadowLayerColor:I

.field private mShadowLayerDx:F

.field private mShadowLayerDy:F

.field private mShadowLayerRadius:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 95
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 98
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 101
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 104
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 469
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 478
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 479
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 480
    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 485
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 486
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 498
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 499
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 500
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 45
    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(J[CIIFI[F)I
.end method

.method private static native nDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nEqualsForTextMeasurement(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nGetColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(J[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(J[CIIIIZI)F
.end method

.method private static native nGetStrikeThruPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrikeThruThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(J[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextPath(JILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(J[CIIIII)I
.end method

.method private static native nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlinePosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlineThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasGlyph(JILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private static native nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetElegantTextHeight(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShadowLayer(JFFFI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTextLocalesByMinikinLocaleListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTypeface(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 554
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 555
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 556
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 557
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 558
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 559
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 560
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 562
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 563
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 564
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 566
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 567
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 568
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 569
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 571
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 572
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 573
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 574
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 575
    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 6

    .line 1444
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1447
    :try_start_0
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1448
    .local v2, "minikinLocaleListId":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 1449
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v3

    .line 1450
    .local v3, "newID":I
    sget-object v4, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    monitor-exit v1

    return-void

    .line 1453
    .end local v3    # "newID":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1455
    return-void

    .line 1453
    .end local v2    # "minikinLocaleListId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public ascent()F
    .locals 2

    .line 1736
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .line 2055
    if-eqz p1, :cond_5

    .line 2058
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 2062
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2065
    :cond_0
    if-nez p2, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 2066
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 2070
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2073
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2075
    if-eqz p4, :cond_2

    .line 2076
    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .line 2076
    .local v1, "result":I
    goto :goto_0

    .line 2078
    .end local v1    # "result":I
    :cond_2
    const/4 v4, 0x0

    sub-int v1, p3, p2

    neg-int v5, v1

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .line 2081
    .restart local v1    # "result":I
    :goto_0
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2082
    return v1

    .line 2063
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_3
    :goto_1
    return v1

    .line 2059
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2056
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .line 2103
    if-eqz p1, :cond_3

    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2108
    return v1

    .line 2110
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2111
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    .line 2115
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2116
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2117
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p3, v2

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v2

    .line 2119
    .local v2, "res":I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2120
    if-eqz p4, :cond_2

    aget v3, p4, v1

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v1

    .line 2121
    :cond_2
    return v2

    .line 2104
    .end local v0    # "oldSize":F
    .end local v2    # "res":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public breakText([CIIF[F)I
    .locals 13
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    move-object v0, p0

    move-object v9, p1

    .line 2012
    if-eqz v9, :cond_5

    .line 2015
    if-ltz p2, :cond_4

    array-length v1, v9

    sub-int/2addr v1, p2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 2019
    array-length v1, v9

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2022
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2023
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, v9

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    return v1

    .line 2027
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 2028
    .local v11, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2029
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p4, v3

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, v9

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    .line 2031
    .local v1, "res":I
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2032
    if-eqz p5, :cond_2

    aget v2, p5, v10

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p5, v10

    .line 2033
    :cond_2
    return v1

    .line 2020
    .end local v1    # "res":I
    .end local v11    # "oldSize":F
    :cond_3
    :goto_0
    return v10

    .line 2016
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2013
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearShadowLayer()V
    .locals 2

    .line 1330
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1331
    return-void
.end method

.method public descent()F
    .locals 2

    .line 1750
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 2845
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 2

    .line 970
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    .line 659
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getColor()I
    .locals 2

    .line 947
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1135
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 1095
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    .line 681
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 1590
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 2
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 1797
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 1805
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1806
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1807
    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 1859
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 1863
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1864
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1865
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 1624
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getHinting()I
    .locals 2

    .line 698
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getHyphenEdit()I
    .locals 2

    .line 1709
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .line 1543
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .line 1222
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 9

    .line 639
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v3

    .line 640
    .local v3, "newNativeShader":J
    :goto_0
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 641
    iput-wide v3, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 642
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v7, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    :goto_1
    move-wide v0, v1

    .line 645
    .local v0, "newNativeColorFilter":J
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_3

    .line 646
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 647
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v7, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 649
    :cond_3
    iget-wide v5, p0, Landroid/graphics/Paint;->mNativePaint:J

    return-wide v5
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    move-object v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    .line 2821
    if-eqz v0, :cond_1

    .line 2824
    or-int v3, v1, p2

    or-int/2addr v3, p3

    or-int/2addr v3, v2

    sub-int v4, p2, v1

    or-int/2addr v3, v4

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p3

    or-int/2addr v3, v4

    .line 2826
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 2830
    sub-int v3, v2, v1

    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 2831
    .local v3, "buf":[C
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2832
    sub-int v6, p2, v1

    sub-int v7, p3, v1

    const/4 v8, 0x0

    sub-int v9, v2, v1

    move-object v4, p0

    move-object v5, v3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v4

    add-int/2addr v4, v1

    .line 2834
    .local v4, "result":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2835
    return v4

    .line 2827
    .end local v3    # "buf":[C
    .end local v4    # "result":I
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2822
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    move-object v9, p1

    .line 2794
    if-eqz v9, :cond_1

    .line 2797
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 2803
    move-object v10, p0

    iget-wide v0, v10, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 2800
    :cond_0
    move-object v10, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2795
    :cond_1
    move-object v10, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .line 1194
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 2744
    if-eqz v0, :cond_2

    .line 2747
    or-int v5, v3, v1

    or-int v5, v5, p7

    or-int/2addr v5, v2

    or-int/2addr v5, v4

    sub-int v6, v1, v3

    or-int/2addr v5, v6

    sub-int v6, p7, v1

    or-int/2addr v5, v6

    sub-int v6, v2, p7

    or-int/2addr v5, v6

    sub-int v6, v4, v2

    or-int/2addr v5, v6

    .line 2749
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    or-int/2addr v5, v6

    if-ltz v5, :cond_1

    .line 2752
    if-ne v2, v1, :cond_0

    .line 2753
    const/4 v5, 0x0

    return v5

    .line 2756
    :cond_0
    sub-int v5, v4, v3

    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v5

    .line 2757
    .local v5, "buf":[C
    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2758
    sub-int v8, v1, v3

    sub-int v9, v2, v3

    const/4 v10, 0x0

    sub-int v11, v4, v3

    sub-int v13, p7, v3

    move-object v6, p0

    move-object v7, v5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v6

    .line 2760
    .local v6, "result":F
    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2761
    return v6

    .line 2750
    .end local v5    # "buf":[C
    .end local v6    # "result":F
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2745
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "text cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 13
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    .line 2714
    if-eqz v9, :cond_2

    .line 2717
    or-int v0, p4, v10

    or-int v0, v0, p7

    or-int/2addr v0, v11

    or-int v0, v0, p5

    sub-int v1, v10, p4

    or-int/2addr v0, v1

    sub-int v1, p7, v10

    or-int/2addr v0, v1

    sub-int v1, v11, p7

    or-int/2addr v0, v1

    sub-int v1, p5, v11

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2722
    if-ne v11, v10, :cond_0

    .line 2723
    const/4 v0, 0x0

    return v0

    .line 2726
    :cond_0
    move-object v12, p0

    iget-wide v0, v12, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, v9

    move v3, v10

    move v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result v0

    return v0

    .line 2720
    :cond_1
    move-object v12, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2715
    :cond_2
    move-object v12, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 1104
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrikeThruPosition()F
    .locals 2

    .line 851
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public getStrikeThruThickness()F
    .locals 2

    .line 858
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 3

    .line 1051
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 3

    .line 1070
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    .line 1029
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .line 1006
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 3

    .line 923
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 3

    .line 1352
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 2624
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2627
    if-eqz p4, :cond_0

    .line 2630
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2631
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2632
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 2633
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2634
    return-void

    .line 2628
    .end local v0    # "buf":[C
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2625
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 2604
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 2607
    if-eqz p4, :cond_0

    .line 2610
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 2611
    return-void

    .line 2608
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2605
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 2646
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 2649
    if-eqz p4, :cond_0

    .line 2652
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 2654
    return-void

    .line 2650
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2647
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    .line 1375
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    .line 1385
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    move-object v0, p0

    .line 2588
    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 2591
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 2592
    return-void

    .line 2589
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    move-object v0, p0

    .line 2568
    or-int v1, p2, p3

    if-ltz v1, :cond_0

    add-int v1, p2, p3

    move-object v11, p1

    array-length v2, v11

    if-gt v1, v2, :cond_1

    .line 2571
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, v11

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 2572
    return-void

    .line 2569
    :cond_0
    move-object v11, p1

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    .line 2313
    if-eqz v0, :cond_8

    .line 2316
    or-int v1, v10, v11

    or-int/2addr v1, v12

    or-int/2addr v1, v13

    or-int v1, v1, p8

    sub-int v2, v11, v10

    or-int/2addr v1, v2

    sub-int v2, v10, v12

    or-int/2addr v1, v2

    sub-int v2, v13, v11

    or-int/2addr v1, v2

    .line 2318
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v13

    or-int/2addr v1, v2

    .line 2319
    const/4 v2, 0x0

    if-nez v14, :cond_0

    .line 2320
    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v14

    sub-int v3, v3, p8

    sub-int v4, v11, v10

    sub-int/2addr v3, v4

    :goto_0
    or-int/2addr v1, v3

    if-ltz v1, :cond_7

    .line 2324
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2325
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object/from16 v1, p0

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v7, p6

    move-object v8, v14

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    .line 2328
    :cond_1
    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_6

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 2333
    :cond_2
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_3

    .line 2334
    move-object v1, v0

    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move/from16 v6, p6

    move-object v7, v14

    move/from16 v8, p8

    move-object/from16 v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v1

    return v1

    .line 2337
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_5

    if-ne v11, v10, :cond_4

    goto :goto_1

    .line 2341
    :cond_4
    sub-int v9, v13, v12

    .line 2342
    .local v9, "contextLen":I
    sub-int v15, v11, v10

    .line 2343
    .local v15, "len":I
    invoke-static {v9}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v8

    .line 2344
    .local v8, "buf":[C
    invoke-static {v0, v12, v13, v8, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2345
    sub-int v3, v10, v12

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    move v4, v15

    move v6, v9

    move/from16 v7, p6

    move-object/from16 v16, v8

    move-object v8, v14

    .line 2345
    .end local v8    # "buf":[C
    .local v16, "buf":[C
    move/from16 v17, v9

    move/from16 v9, p8

    .line 2345
    .end local v9    # "contextLen":I
    .local v17, "contextLen":I
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    .line 2347
    .local v1, "result":F
    move-object/from16 v2, v16

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2348
    .end local v16    # "buf":[C
    .local v2, "buf":[C
    return v1

    .line 2338
    .end local v1    # "result":F
    .end local v2    # "buf":[C
    .end local v15    # "len":I
    .end local v17    # "contextLen":I
    :cond_5
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 2330
    :cond_6
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v7, p6

    move-object v8, v14

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    .line 2321
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2314
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    move-object/from16 v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v10, p7

    .line 2394
    if-eqz p1, :cond_8

    .line 2397
    or-int v1, v11, v12

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, v12, v11

    or-int/2addr v1, v2

    sub-int v2, v11, p4

    or-int/2addr v1, v2

    sub-int v2, p5, v12

    or-int/2addr v1, v2

    .line 2399
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    .line 2400
    if-nez v10, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2401
    :cond_0
    array-length v2, v10

    sub-int v2, v2, p8

    sub-int v3, v12, v11

    sub-int/2addr v2, v3

    :goto_0
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 2405
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    if-ne v11, v12, :cond_1

    goto/16 :goto_4

    .line 2409
    :cond_1
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-nez v1, :cond_3

    .line 2410
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2411
    if-eqz p6, :cond_2

    .line 2410
    move v8, v3

    goto :goto_1

    .line 2411
    :cond_2
    nop

    .line 2410
    move v8, v2

    :goto_1
    move-wide v1, v4

    move-object/from16 v3, p1

    move v4, v11

    move v5, v12

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v9, v10

    move-object v14, v10

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v1

    return v1

    .line 2414
    :cond_3
    move-object v14, v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 2415
    .local v10, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2416
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2417
    if-eqz p6, :cond_4

    .line 2416
    move v8, v3

    goto :goto_2

    .line 2417
    :cond_4
    nop

    .line 2416
    move v8, v2

    :goto_2
    move-wide v1, v4

    move-object/from16 v3, p1

    move v4, v11

    move v5, v12

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v9, v14

    move v13, v10

    move/from16 v10, p8

    .line 2416
    .end local v10    # "oldSize":F
    .local v13, "oldSize":F
    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 2418
    .local v1, "totalAdvance":F
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2420
    if-eqz v14, :cond_5

    .line 2421
    move/from16 v2, p8

    .line 2421
    .local v2, "i":I
    sub-int v3, v12, v11

    add-int/2addr v3, v2

    .line 2421
    .local v3, "e":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 2422
    aget v4, v14, v2

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v14, v2

    .line 2421
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2425
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    return v2

    .line 2406
    .end local v1    # "totalAdvance":F
    .end local v13    # "oldSize":F
    :cond_6
    :goto_4
    move-object v14, v10

    const/4 v1, 0x0

    return v1

    .line 2402
    :cond_7
    move-object v14, v10

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2395
    :cond_8
    move-object v14, v10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 14
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    move-object v0, p0

    move-object v11, p1

    move-object/from16 v10, p7

    .line 2268
    if-eqz v11, :cond_8

    .line 2271
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v11

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 2275
    if-nez v10, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2276
    :cond_0
    array-length v2, v10

    add-int v3, p8, p3

    sub-int/2addr v2, v3

    :goto_0
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 2280
    array-length v1, v11

    if-eqz v1, :cond_6

    if-nez p3, :cond_1

    goto/16 :goto_4

    .line 2283
    :cond_1
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-nez v1, :cond_3

    .line 2284
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2285
    if-eqz p6, :cond_2

    .line 2284
    move v8, v3

    goto :goto_1

    .line 2285
    :cond_2
    nop

    .line 2284
    move v8, v2

    :goto_1
    move-wide v1, v4

    move-object v3, v11

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v9, v10

    move-object v12, v10

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    return v1

    .line 2289
    :cond_3
    move-object v12, v10

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 2290
    .local v10, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2291
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2292
    if-eqz p6, :cond_4

    .line 2291
    move v8, v3

    goto :goto_2

    .line 2292
    :cond_4
    nop

    .line 2291
    move v8, v2

    :goto_2
    move-wide v1, v4

    move-object v3, v11

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v9, v12

    move v11, v10

    move/from16 v10, p8

    .line 2291
    .end local v10    # "oldSize":F
    .local v11, "oldSize":F
    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 2293
    .local v1, "res":F
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2295
    if-eqz v12, :cond_5

    .line 2296
    move/from16 v2, p8

    .line 2296
    .local v2, "i":I
    add-int v3, v2, p3

    .line 2296
    .local v3, "e":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 2297
    aget v4, v12, v2

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v12, v2

    .line 2296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2300
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    return v2

    .line 2281
    .end local v1    # "res":F
    .end local v11    # "oldSize":F
    :cond_6
    :goto_4
    move-object v12, v10

    const/4 v1, 0x0

    return v1

    .line 2277
    :cond_7
    move-object v12, v10

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2269
    :cond_8
    move-object v12, v10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    move-object/from16 v0, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 2497
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2502
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 2503
    move-object v1, v0

    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p0

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v1

    return v1

    .line 2507
    :cond_1
    sub-int v1, v9, v8

    .line 2508
    .local v1, "contextLen":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2509
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v0, v8, v9, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2510
    const/4 v12, 0x0

    sub-int v15, p5, v8

    move-object/from16 v10, p0

    move-object v11, v2

    move v13, v1

    move/from16 v14, p4

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v3

    .line 2511
    .local v3, "relPos":I
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2512
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int v4, v3, v8

    :goto_0
    return v4

    .line 2499
    .end local v1    # "contextLen":I
    .end local v2    # "buf":[C
    .end local v3    # "relPos":I
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move v3, v8

    move v4, v9

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v1

    return v1
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2543
    move/from16 v9, p6

    or-int v0, p2, p3

    or-int v0, v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 2545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v9, v0, :cond_0

    .line 2550
    move-object v10, p0

    iget-wide v1, v10, Landroid/graphics/Paint;->mNativePaint:J

    move-object v0, v10

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 2547
    :cond_0
    move-object v10, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 13
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2456
    move/from16 v9, p6

    add-int v10, p2, p3

    .line 2457
    .local v10, "contextEnd":I
    or-int v0, p2, v10

    or-int v0, v0, p5

    sub-int v1, v10, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v10, p5

    or-int/2addr v0, v1

    move-object v11, p1

    array-length v1, v11

    sub-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v9, v0, :cond_0

    .line 2464
    move-object v12, p0

    iget-wide v1, v12, Landroid/graphics/Paint;->mNativePaint:J

    move-object v0, v12

    move-object v3, v11

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v0

    return v0

    .line 2461
    :cond_0
    move-object v12, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextScaleX()F
    .locals 2

    .line 1502
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .line 1483
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    .line 1523
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 2174
    if-eqz p1, :cond_8

    .line 2177
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_7

    .line 2180
    sub-int v0, p3, p2

    array-length v1, p4

    if-gt v0, v1, :cond_6

    .line 2184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2187
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2188
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2190
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2194
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 2195
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 2199
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2200
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2201
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 2202
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2203
    return v1

    .line 2192
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2185
    :cond_5
    :goto_1
    return v1

    .line 2181
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2178
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2175
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    move-object/from16 v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    .line 2217
    move-object/from16 v13, p4

    if-eqz p1, :cond_6

    .line 2220
    or-int v1, v11, v12

    sub-int v2, v12, v11

    or-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v12

    or-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 2223
    sub-int v1, v12, v11

    array-length v2, v13

    if-gt v1, v2, :cond_4

    .line 2227
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v11, v12, :cond_0

    goto :goto_1

    .line 2230
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2231
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v11

    move v7, v12

    move-object v9, v13

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2232
    sub-int v1, v12, v11

    return v1

    .line 2235
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 2236
    .local v10, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2237
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v15, 0x0

    move-object/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v11

    move v7, v12

    move-object v9, v13

    move v14, v10

    move v10, v15

    .line 2237
    .end local v10    # "oldSize":F
    .local v14, "oldSize":F
    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2238
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2239
    const/16 v16, 0x0

    .line 2239
    .local v16, "i":I
    :goto_0
    move/from16 v1, v16

    .line 2239
    .end local v16    # "i":I
    .local v1, "i":I
    sub-int v2, v12, v11

    if-ge v1, v2, :cond_2

    .line 2240
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2239
    add-int/lit8 v16, v1, 0x1

    .line 2239
    .end local v1    # "i":I
    .restart local v16    # "i":I
    goto :goto_0

    .line 2242
    .end local v16    # "i":I
    :cond_2
    sub-int v1, v12, v11

    return v1

    .line 2228
    .end local v14    # "oldSize":F
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 2224
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2221
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2218
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .line 2254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 17
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    .line 2136
    move-object/from16 v13, p4

    if-eqz v11, :cond_5

    .line 2139
    or-int v1, p2, v12

    if-ltz v1, :cond_4

    add-int v1, p2, v12

    array-length v2, v11

    if-gt v1, v2, :cond_4

    array-length v1, v13

    if-gt v12, v1, :cond_4

    .line 2144
    array-length v1, v11

    if-eqz v1, :cond_3

    if-nez v12, :cond_0

    goto :goto_1

    .line 2147
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2148
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object v3, v11

    move/from16 v4, p2

    move v5, v12

    move/from16 v6, p2

    move v7, v12

    move-object v9, v13

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2149
    return v12

    .line 2152
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 2153
    .local v10, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2154
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v15, 0x0

    move-object v3, v11

    move/from16 v4, p2

    move v5, v12

    move/from16 v6, p2

    move v7, v12

    move-object v9, v13

    move v14, v10

    move v10, v15

    .line 2154
    .end local v10    # "oldSize":F
    .local v14, "oldSize":F
    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2155
    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2156
    const/16 v16, 0x0

    .line 2156
    .local v16, "i":I
    :goto_0
    move/from16 v1, v16

    .line 2156
    .end local v16    # "i":I
    .local v1, "i":I
    if-ge v1, v12, :cond_2

    .line 2157
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2156
    add-int/lit8 v16, v1, 0x1

    .line 2156
    .end local v1    # "i":I
    .restart local v16    # "i":I
    goto :goto_0

    .line 2159
    .end local v16    # "i":I
    :cond_2
    return v12

    .line 2145
    .end local v14    # "oldSize":F
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 2141
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2137
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1254
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUnderlinePosition()F
    .locals 2

    .line 815
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public getUnderlineThickness()F
    .locals 2

    .line 822
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public getWordSpacing()F
    .locals 2

    .line 1564
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .line 1162
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasEqualAttributes(Landroid/graphics/Paint;)Z
    .locals 2
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 585
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v1, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iget-object v1, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iget-object v1, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iget-object v1, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget-object v1, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iget-boolean v1, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iget v1, p1, Landroid/graphics/Paint;->mCompatScaling:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iget v1, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    iget v1, p1, Landroid/graphics/Paint;->mBidiFlags:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 595
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v1, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 596
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iget-object v1, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 597
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    iget v1, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    if-ne v0, v1, :cond_0

    .line 602
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p0}, Landroid/graphics/Paint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 606
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Landroid/graphics/Paint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 585
    :goto_0
    return v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 2673
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    .line 1340
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    .line 718
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isDither()Z
    .locals 1

    .line 744
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isElegantTextHeight()Z
    .locals 2

    .line 1463
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .line 877
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .line 899
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 1

    .line 767
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .line 786
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .line 805
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1967
    if-eqz p1, :cond_7

    .line 1970
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_6

    .line 1974
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 1977
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1978
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 1980
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1984
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 1985
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 1988
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1989
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1990
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1991
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 1992
    return v1

    .line 1982
    .end local v0    # "buf":[C
    .end local v1    # "result":F
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 1975
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 1971
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1968
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1952
    if-eqz p1, :cond_0

    .line 1955
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 1953
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1923
    if-eqz p1, :cond_4

    .line 1926
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 1930
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 1933
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 1934
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1937
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1938
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1939
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 1941
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1942
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 1931
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1927
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1924
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureText([CII)F
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .line 1891
    if-eqz p1, :cond_4

    .line 1894
    or-int v0, p2, p3

    if-ltz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 1898
    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1901
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 1902
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1906
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1907
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1908
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 1910
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1911
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 1899
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1895
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1892
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 3

    .line 504
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 505
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 513
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 514
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 515
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 516
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 517
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 518
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 521
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 522
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 524
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 525
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 526
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 527
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 528
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 531
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 532
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 533
    iput v1, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 534
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    .line 542
    if-eq p0, p1, :cond_0

    .line 544
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 545
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 993
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 994
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "a"    # I

    .line 981
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 982
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    .line 730
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 731
    return-void
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 668
    and-int/lit8 p1, p1, 0x7

    .line 669
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 672
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 673
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 959
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 960
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1147
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1152
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1153
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 4
    .param p1, "factor"    # F

    .line 622
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 624
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_0

    .line 626
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 627
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 628
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 630
    :goto_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 758
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 759
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 2
    .param p1, "elegant"    # Z

    .line 1474
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    .line 1475
    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2
    .param p1, "fakeBoldText"    # Z

    .line 887
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 888
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .line 912
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 913
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 690
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 691
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    .line 1605
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    const/4 p1, 0x0

    .line 1608
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1610
    :cond_2
    return-void

    .line 1612
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1613
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 1614
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 1670
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "settings":Ljava/lang/String;
    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 1676
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1685
    :cond_1
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1686
    .local v1, "targetTypeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    .line 1687
    .local v3, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    .local v4, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v7

    .line 1689
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1690
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1693
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1694
    return v6

    .line 1696
    :cond_5
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 1697
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1698
    return v2

    .line 1677
    .end local v1    # "targetTypeface":Landroid/graphics/Typeface;
    .end local v3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v4    # "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    :cond_6
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 1678
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 1678
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1680
    return v2

    .line 1673
    :cond_7
    :goto_3
    return v2
.end method

.method public setHinting(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 706
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 707
    return-void
.end method

.method public setHyphenEdit(I)V
    .locals 2
    .param p1, "hyphen"    # I

    .line 1722
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    .line 1723
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .line 1554
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 1555
    return-void
.end method

.method public setLinearText(Z)V
    .locals 2
    .param p1, "linearText"    # Z

    .line 777
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 778
    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .line 1236
    const-wide/16 v0, 0x0

    .line 1237
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    .line 1238
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1240
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1241
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1242
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .line 1207
    const-wide/16 v0, 0x0

    .line 1208
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    .line 1209
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1211
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1212
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1213
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 0
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1303
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 4
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1119
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    .line 1120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1122
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1125
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1126
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .line 1319
    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1320
    iput p2, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1321
    iput p3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1322
    iput p4, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    .line 1323
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    .line 1324
    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2
    .param p1, "strikeThruText"    # Z

    .line 868
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 869
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 1061
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1062
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .line 1080
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1081
    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2
    .param p1, "miter"    # F

    .line 1040
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1041
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 1018
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1019
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 934
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 935
    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2
    .param p1, "subpixelText"    # Z

    .line 796
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 797
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 1364
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1365
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1397
    if-eqz p1, :cond_1

    .line 1400
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    return-void

    .line 1403
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1404
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1405
    return-void

    .line 1398
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1435
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1439
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1440
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1441
    return-void

    .line 1436
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .line 1513
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1514
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 1492
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1493
    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2
    .param p1, "skewX"    # F

    .line 1533
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 1534
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1267
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1268
    .local v0, "typefaceNative":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1269
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1270
    return-object p1
.end method

.method public setUnderlineText(Z)V
    .locals 2
    .param p1, "underlineText"    # Z

    .line 832
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 833
    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2
    .param p1, "wordSpacing"    # F

    .line 1576
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 1577
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1179
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1180
    .local v0, "newMode":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget v1, v1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_1

    :cond_1
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1181
    .local v1, "curMode":I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 1182
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1184
    :cond_2
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1185
    return-object p1
.end method
