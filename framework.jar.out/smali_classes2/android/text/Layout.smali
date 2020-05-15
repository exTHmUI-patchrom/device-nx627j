.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field public static final TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 112
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2472
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2477
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .line 226
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 228
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2428
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 249
    if-ltz p3, :cond_1

    .line 256
    if-eqz p2, :cond_0

    .line 257
    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 258
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 261
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 262
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 263
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 264
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 265
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 266
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 267
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 268
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 269
    return-void

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/text/Layout;IZZ)[F
    .locals 1
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Layout;IZ)F
    .locals 1
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/Layout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [C
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/text/TextUtils$TruncateAt;

    .line 49
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 25
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1869
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1870
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1871
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1873
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 1874
    add-int/lit8 v5, v5, -0x1

    .line 1877
    :cond_0
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 1878
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v8

    add-int/2addr v9, v4

    .line 1879
    .local v9, "here":I
    iget-object v10, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int/2addr v10, v9

    .line 1881
    .local v10, "there":I
    if-le v10, v5, :cond_1

    .line 1882
    move v10, v5

    .line 1885
    :cond_1
    if-gt v2, v10, :cond_3

    if-lt v3, v9, :cond_3

    .line 1886
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1887
    .local v11, "st":I
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1889
    .local v12, "en":I
    if-eq v11, v12, :cond_3

    .line 1890
    invoke-direct {v0, v11, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 1891
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v12, v14, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    .line 1893
    .local v15, "h2":F
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 1894
    .local v22, "left":F
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 1897
    .local v23, "right":F
    iget-object v7, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v8, 0x1

    aget v7, v7, v16

    const/high16 v16, 0x4000000

    and-int v7, v7, v16

    if-eqz v7, :cond_2

    .line 1898
    nop

    .line 1899
    const/16 v21, 0x0

    goto :goto_1

    :cond_2
    move/from16 v21, v14

    .line 1901
    .local v21, "layout":I
    :goto_1
    move/from16 v7, p4

    int-to-float v14, v7

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v17, v22

    move/from16 v18, v14

    move/from16 v19, v23

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .end local v9    # "here":I
    .end local v10    # "there":I
    .end local v11    # "st":I
    .end local v12    # "en":I
    .end local v13    # "h1":F
    .end local v15    # "h2":F
    .end local v21    # "layout":I
    .end local v22    # "left":F
    .end local v23    # "right":F
    goto :goto_2

    .line 1877
    :cond_3
    move/from16 v7, p4

    move/from16 v0, p5

    :goto_2
    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v7, 0x0

    goto :goto_0

    .line 1905
    .end local v8    # "i":I
    :cond_4
    move/from16 v7, p4

    move/from16 v0, p5

    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 15
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 2269
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    .line 2270
    .local v3, "ellipsisCount":I
    if-nez v3, :cond_0

    .line 2271
    return-void

    .line 2273
    :cond_0
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 2274
    .local v4, "ellipsisStart":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2276
    .local v5, "lineStart":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v6

    .line 2277
    .local v6, "ellipsisString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 2279
    .local v7, "ellipsisStringLen":I
    const/4 v8, 0x0

    if-lt v3, v7, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v8

    .line 2280
    .local v9, "useEllipsisString":Z
    :goto_0
    nop

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_5

    .line 2282
    if-eqz v9, :cond_2

    if-ge v8, v7, :cond_2

    .line 2283
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "c":C
    goto :goto_2

    .line 2285
    .end local v10    # "c":C
    :cond_2
    const v10, 0xfeff

    .line 2288
    .restart local v10    # "c":C
    :goto_2
    add-int v11, v8, v4

    add-int/2addr v11, v5

    .line 2289
    .local v11, "a":I
    if-gt v1, v11, :cond_3

    move/from16 v12, p2

    if-ge v11, v12, :cond_4

    .line 2290
    add-int v13, p5, v11

    sub-int/2addr v13, v1

    aput-char v10, p4, v13

    .end local v10    # "c":C
    .end local v11    # "a":I
    goto :goto_3

    .line 2280
    :cond_3
    move/from16 v12, p2

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2293
    .end local v8    # "i":I
    :cond_5
    move/from16 v12, p2

    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .line 164
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 6
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 175
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 152
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "upperLimit"    # F

    .line 186
    const/4 v0, 0x0

    .line 189
    .local v0, "need":F
    move v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "need":F
    :goto_0
    if-gt v0, p2, :cond_3

    .line 190
    const/16 v2, 0xa

    invoke-static {p0, v2, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 192
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 193
    move v2, p2

    .line 196
    :cond_0
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    .line 197
    .local v3, "w":F
    cmpl-float v4, v3, p5

    if-lez v4, :cond_1

    .line 198
    return p5

    .line 201
    :cond_1
    cmpl-float v4, v3, v1

    if-lez v4, :cond_2

    .line 202
    move v1, v3

    .line 204
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 189
    .end local v3    # "w":F
    move v0, v2

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    .end local v2    # "next":I
    :cond_3
    return v1
.end method

.method private getHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 1156
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0
.end method

.method private getHorizontal(IZIZ)F
    .locals 18
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1166
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 1167
    .local v11, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 1168
    .local v12, "end":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    .line 1169
    .local v13, "dir":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    .line 1170
    .local v14, "hasTab":Z
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    .line 1172
    .local v15, "directions":Landroid/text/Layout$Directions;
    const/4 v2, 0x0

    .line 1173
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v14, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1176
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v11, v12, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1177
    .local v3, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 1178
    new-instance v4, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v2, v4

    .line 1182
    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v3    # "tabs":[Landroid/text/style/TabStopSpan;
    .local v16, "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    move-object/from16 v16, v2

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    .line 1183
    .local v10, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v10

    move v5, v11

    move v6, v12

    move v7, v13

    move-object v8, v15

    move v9, v14

    move/from16 v17, v12

    move-object v12, v10

    move-object/from16 v10, v16

    .end local v10    # "tl":Landroid/text/TextLine;
    .local v12, "tl":Landroid/text/TextLine;
    .local v17, "end":I
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1184
    sub-int v3, p1, v11

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-virtual {v12, v3, v5, v4}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    .line 1185
    .local v3, "wid":F
    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1187
    if-eqz p4, :cond_1

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    .line 1188
    iget v6, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v6

    .line 1190
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    .line 1191
    .local v6, "left":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v7

    .line 1193
    .local v7, "right":I
    invoke-direct {v0, v1, v6, v7}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    return v8
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .line 1160
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1162
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .locals 18
    .param p1, "lineNum"    # I

    move-object/from16 v0, p0

    .line 331
    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 333
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 334
    .local v3, "left":I
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    .line 336
    .local v4, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 338
    .local v5, "dir":I
    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 339
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 340
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 341
    .local v7, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 343
    .local v9, "start":I
    if-eqz v9, :cond_1

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v8

    .line 345
    .local v11, "isFirstParaLine":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 346
    iget-object v12, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v13, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v12, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v12

    .line 348
    .local v12, "spanEnd":I
    const-class v13, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v12, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    .line 350
    array-length v13, v6

    sub-int/2addr v13, v8

    .local v13, "n":I
    :goto_2
    if-ltz v13, :cond_3

    .line 351
    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/AlignmentSpan;

    if-eqz v14, :cond_2

    .line 352
    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/AlignmentSpan;

    invoke-interface {v14}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 353
    goto :goto_3

    .line 350
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 358
    .end local v12    # "spanEnd":I
    .end local v13    # "n":I
    :cond_3
    :goto_3
    array-length v12, v6

    .line 359
    .local v12, "length":I
    move v13, v11

    .line 360
    .local v13, "useFirstLineMargin":Z
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_4
    if-ge v14, v12, :cond_5

    .line 361
    aget-object v15, v6, v14

    instance-of v15, v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v15, :cond_4

    .line 362
    aget-object v15, v6, v14

    check-cast v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v15}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v15

    .line 363
    .local v15, "count":I
    aget-object v10, v6, v14

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 364
    .local v10, "startLine":I
    add-int v8, v10, v15

    if-ge v1, v8, :cond_4

    .line 365
    const/4 v13, 0x1

    .line 366
    goto :goto_5

    .line 360
    .end local v10    # "startLine":I
    .end local v15    # "count":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_4

    .line 370
    .end local v14    # "n":I
    :cond_5
    :goto_5
    const/16 v16, 0x0

    .local v16, "n":I
    :goto_6
    move/from16 v8, v16

    .end local v16    # "n":I
    .local v8, "n":I
    if-ge v8, v12, :cond_8

    .line 371
    aget-object v10, v6, v8

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan;

    if-eqz v10, :cond_7

    .line 372
    aget-object v10, v6, v8

    check-cast v10, Landroid/text/style/LeadingMarginSpan;

    .line 373
    .local v10, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    .line 374
    invoke-interface {v10, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_7

    .line 376
    :cond_6
    invoke-interface {v10, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    .line 370
    .end local v10    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    :goto_7
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "n":I
    .restart local v16    # "n":I
    goto :goto_6

    .line 383
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v9    # "start":I
    .end local v11    # "isFirstParaLine":Z
    .end local v12    # "length":I
    .end local v13    # "useFirstLineMargin":Z
    .end local v16    # "n":I
    :cond_8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_a

    .line 384
    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .local v7, "align":Landroid/text/Layout$Alignment;
    :goto_8
    goto :goto_a

    .line 385
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_c

    .line 386
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_9
    goto :goto_8

    .line 388
    :cond_c
    move-object v7, v2

    .line 392
    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e

    .line 393
    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 394
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .local v8, "indentWidth":I
    :goto_b
    goto :goto_c

    .line 396
    .end local v8    # "indentWidth":I
    :cond_d
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    .line 398
    :cond_e
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_10

    .line 399
    const/4 v8, 0x1

    if-ne v5, v8, :cond_f

    .line 400
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    .line 402
    :cond_f
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_b

    .line 405
    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 408
    .restart local v8    # "indentWidth":I
    :goto_c
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 16
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    move-object/from16 v0, p0

    .line 1382
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1383
    .local v10, "start":I
    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    goto :goto_0

    .line 1384
    .local v5, "end":I
    :goto_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v11

    .line 1385
    .local v11, "hasTabs":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v12

    .line 1386
    .local v12, "directions":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    .line 1388
    .local v13, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 1389
    .local v14, "tl":Landroid/text/TextLine;
    iget-object v9, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1390
    .local v9, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1391
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1392
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v14

    move-object v2, v9

    move v4, v10

    move v6, v13

    move-object v7, v12

    move v8, v11

    move-object v15, v9

    move-object/from16 v9, p2

    .end local v9    # "paint":Landroid/text/TextPaint;
    .local v15, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1393
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1394
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v14, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1396
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1397
    .local v1, "width":F
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1398
    return v1
.end method

.method private getLineExtent(IZ)F
    .locals 18
    .param p1, "line"    # I
    .param p2, "full"    # Z

    move-object/from16 v0, p0

    .line 1340
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1341
    .local v10, "start":I
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v11, v1

    .line 1343
    .local v11, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 1344
    .local v12, "hasTabs":Z
    const/4 v1, 0x0

    .line 1345
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v12, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 1348
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v10, v11, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1349
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 1350
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v1, v3

    .line 1353
    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    .local v13, "tabStops":Landroid/text/Layout$TabStops;
    :cond_1
    move-object v13, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    .line 1355
    .local v14, "directions":Landroid/text/Layout$Directions;
    if-nez v14, :cond_2

    .line 1356
    const/4 v1, 0x0

    return v1

    .line 1358
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    .line 1360
    .local v15, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    .line 1361
    .local v9, "tl":Landroid/text/TextLine;
    iget-object v8, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1362
    .local v8, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1363
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1364
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, v8

    move v4, v10

    move v5, v11

    move v6, v15

    move-object v7, v14

    move-object/from16 v16, v8

    move v8, v12

    .end local v8    # "paint":Landroid/text/TextPaint;
    .local v16, "paint":Landroid/text/TextPaint;
    move/from16 v17, v10

    move-object v10, v9

    move-object v9, v13

    .end local v9    # "tl":Landroid/text/TextLine;
    .local v10, "tl":Landroid/text/TextLine;
    .local v17, "start":I
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1365
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1366
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1368
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1369
    .local v1, "width":F
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1370
    return v1
.end method

.method private getLineHorizontals(IZZ)[F
    .locals 21
    .param p1, "line"    # I
    .param p2, "clamped"    # Z
    .param p3, "primary"    # Z

    move-object/from16 v0, p0

    .line 1205
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1206
    .local v10, "start":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1207
    .local v11, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    .line 1208
    .local v12, "dir":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v13

    .line 1209
    .local v13, "hasTab":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    .line 1211
    .local v14, "directions":Landroid/text/Layout$Directions;
    const/4 v1, 0x0

    .line 1212
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v13, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 1215
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v10, v11, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1216
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 1217
    new-instance v3, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v1, v3

    .line 1221
    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    :cond_0
    move-object v15, v1

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    .line 1222
    .local v9, "tl":Landroid/text/TextLine;
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v1, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v14

    move v8, v13

    move/from16 v16, v12

    move-object v12, v9

    move-object v9, v15

    .end local v9    # "tl":Landroid/text/TextLine;
    .local v12, "tl":Landroid/text/TextLine;
    .local v16, "dir":I
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1223
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    .line 1224
    .local v1, "trailings":[Z
    if-nez p3, :cond_1

    .line 1225
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1226
    aget-boolean v5, v1, v4

    xor-int/lit8 v5, v5, 0x1

    aput-boolean v5, v1, v4

    .line 1225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1229
    .end local v4    # "offset":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v12, v1, v4}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v4

    .line 1230
    .local v4, "wid":[F
    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1232
    if-eqz p2, :cond_3

    .line 1233
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_1
    array-length v7, v4

    if-gt v6, v7, :cond_3

    .line 1234
    aget v7, v4, v6

    iget v8, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1235
    iget v7, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v7, v7

    aput v7, v4, v6

    .line 1233
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1239
    .end local v6    # "offset":I
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    .line 1240
    .local v6, "left":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v7

    .line 1242
    .local v7, "right":I
    move/from16 v8, p1

    invoke-direct {v0, v8, v6, v7}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v9

    .line 1243
    .local v9, "lineStartPos":I
    sub-int v17, v11, v10

    add-int/lit8 v2, v17, 0x1

    new-array v2, v2, [F

    .line 1244
    .local v2, "horizontal":[F
    const/16 v18, 0x0

    .local v18, "offset":I
    :goto_2
    move/from16 v19, v18

    .end local v18    # "offset":I
    .local v19, "offset":I
    array-length v0, v2

    move-object/from16 v20, v1

    move/from16 v1, v19

    if-ge v1, v0, :cond_4

    .line 1245
    .end local v19    # "offset":I
    .local v1, "offset":I
    .local v20, "trailings":[Z
    int-to-float v0, v9

    aget v17, v4, v1

    add-float v0, v0, v17

    aput v0, v2, v1

    .line 1244
    add-int/lit8 v18, v1, 0x1

    .end local v1    # "offset":I
    .restart local v18    # "offset":I
    move-object/from16 v1, v20

    move-object/from16 v0, p0

    goto :goto_2

    .line 1247
    .end local v18    # "offset":I
    :cond_4
    return-object v2
.end method

.method private getLineStartPos(III)I
    .locals 10
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 691
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 692
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 694
    .local v1, "dir":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 695
    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v0, v2

    goto :goto_2

    .line 696
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    .line 697
    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v0, v2

    .line 701
    :cond_3
    :goto_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    .line 702
    if-ne v1, v3, :cond_4

    .line 703
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    .local v2, "x":I
    :goto_3
    goto :goto_5

    .line 705
    .end local v2    # "x":I
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    goto :goto_3

    .line 708
    :cond_5
    const/4 v2, 0x0

    .line 709
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 710
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 711
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 712
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 714
    .local v6, "spanEnd":I
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    .line 716
    .local v7, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v8, v7

    if-lez v8, :cond_6

    .line 717
    new-instance v8, Landroid/text/Layout$TabStops;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v2, v8

    .line 720
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "spanEnd":I
    .end local v7    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    .line 721
    .local v4, "max":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8

    .line 722
    if-ne v1, v3, :cond_7

    .line 723
    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    .line 730
    .end local v4    # "max":I
    .local v2, "x":I
    .local v3, "x":I
    :goto_4
    move v2, v3

    goto :goto_5

    .line 726
    .end local v3    # "x":I
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v4    # "max":I
    :cond_7
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_4

    .line 729
    :cond_8
    and-int/lit8 v4, v4, -0x2

    .line 730
    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v3, v6

    shr-int v2, v5, v3

    .line 733
    .end local v4    # "max":I
    .local v2, "x":I
    :goto_5
    return v2
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1611
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1613
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1614
    return p3

    .line 1617
    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    .line 1618
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1620
    .local v1, "ch":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1621
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1624
    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1625
    goto :goto_1

    .line 1617
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 1630
    .end local v1    # "ch":C
    :cond_3
    :goto_1
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .locals 7
    .param p1, "offset"    # I

    .line 1741
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1742
    return v0

    .line 1744
    :cond_0
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1745
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1747
    .local v2, "c":C
    const v3, 0xdc00

    if-lt v2, v3, :cond_1

    const v3, 0xdfff

    if-gt v2, v3, :cond_1

    .line 1748
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1750
    .local v3, "c1":C
    const v4, 0xd800

    if-lt v3, v4, :cond_1

    const v4, 0xdbff

    if-gt v3, v4, :cond_1

    .line 1751
    add-int/lit8 p1, p1, -0x1

    .line 1754
    .end local v3    # "c1":C
    :cond_1
    iget-boolean v3, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_3

    .line 1755
    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, p1, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ReplacementSpan;

    .line 1758
    .local v3, "spans":[Landroid/text/style/ReplacementSpan;
    nop

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1759
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1760
    .local v4, "start":I
    move-object v5, v1

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v3, v0

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1762
    .local v5, "end":I
    if-ge v4, p1, :cond_2

    if-le v5, p1, :cond_2

    .line 1763
    move p1, v4

    .line 1758
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1767
    .end local v0    # "i":I
    .end local v3    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 20
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1687
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1688
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1689
    .local v4, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1690
    .local v5, "lineEnd":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1692
    .local v6, "lineDir":I
    const/4 v7, 0x0

    .line 1693
    .local v7, "lineChanged":Z
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v6, v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-ne v2, v9, :cond_1

    move v8, v10

    nop

    .line 1695
    .local v8, "advance":Z
    :cond_1
    if-eqz v8, :cond_3

    .line 1696
    if-ne v1, v5, :cond_5

    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_2

    .line 1698
    const/4 v7, 0x1

    .line 1699
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1701
    :cond_2
    return v1

    .line 1705
    :cond_3
    if-ne v1, v4, :cond_5

    .line 1706
    if-lez v3, :cond_4

    .line 1707
    const/4 v7, 0x1

    .line 1708
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1710
    :cond_4
    return v1

    .line 1715
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 1716
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1717
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1718
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    .line 1719
    .local v9, "newDir":I
    if-eq v9, v6, :cond_6

    .line 1723
    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    .line 1724
    .end local p2    # "toLeft":Z
    .local v2, "toLeft":Z
    move v6, v9

    .line 1728
    .end local v9    # "newDir":I
    :cond_6
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    .line 1730
    .local v18, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    .line 1732
    .local v15, "tl":Landroid/text/TextLine;
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    move-object/from16 v15, v18

    .end local v15    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    invoke-virtual/range {v9 .. v17}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1733
    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    .line 1734
    .end local p1    # "caret":I
    .local v9, "caret":I
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1735
    return v9
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 14
    .param p1, "line"    # I

    .line 2041
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2042
    return v1

    .line 2044
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 2046
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2047
    .local v2, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2048
    .local v3, "lineEnd":I
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 2050
    .local v4, "spanEnd":I
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    .line 2052
    .local v5, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v6, v5

    if-nez v6, :cond_1

    .line 2053
    return v1

    .line 2056
    :cond_1
    const/4 v6, 0x0

    .line 2058
    .local v6, "margin":I
    const/4 v7, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v7

    .line 2059
    .local v8, "useFirstLineMargin":Z
    :goto_1
    move v9, v8

    move v8, v1

    .local v8, "i":I
    .local v9, "useFirstLineMargin":Z
    :goto_2
    array-length v10, v5

    if-ge v8, v10, :cond_6

    .line 2060
    aget-object v10, v5, v8

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5

    .line 2061
    aget-object v10, v5, v8

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2062
    .local v10, "spStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2063
    .local v11, "spanLine":I
    aget-object v12, v5, v8

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 2065
    .local v12, "count":I
    add-int v13, v11, v12

    if-ge p1, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    or-int/2addr v9, v13

    .line 2059
    .end local v10    # "spStart":I
    .end local v11    # "spanLine":I
    .end local v12    # "count":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2068
    .end local v8    # "i":I
    :cond_6
    nop

    .local v1, "i":I
    :goto_4
    array-length v7, v5

    if-ge v1, v7, :cond_7

    .line 2069
    aget-object v7, v5, v1

    .line 2070
    .local v7, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v7, v9}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v8

    add-int/2addr v6, v8

    .line 2068
    .end local v7    # "span":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2073
    .end local v1    # "i":I
    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2256
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2257
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2260
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 2261
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2263
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .locals 4
    .param p1, "lineNum"    # I

    .line 325
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 327
    .local v0, "lineEnd":I
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method static synthetic lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .locals 6
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 1916
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 25
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 2078
    const/4 v1, 0x0

    .line 2079
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    move-object v13, v0

    .line 2081
    .local v13, "tl":Landroid/text/TextLine;
    move-object/from16 v14, p4

    :try_start_0
    invoke-static {v10, v11, v12, v14, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v0

    .line 2082
    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .local v15, "mt":Landroid/text/MeasuredParagraph;
    :try_start_1
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 2083
    .local v0, "chars":[C
    array-length v1, v0

    move v9, v1

    .line 2084
    .local v9, "len":I
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 2085
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 2086
    .local v6, "dir":I
    const/4 v2, 0x0

    .line 2087
    .local v2, "hasTabs":Z
    const/4 v3, 0x0

    .line 2089
    .local v3, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v4, 0x0

    .line 2090
    .local v4, "margin":I
    instance-of v5, v10, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    .line 2091
    move-object v5, v10

    check-cast v5, Landroid/text/Spanned;

    .line 2092
    .local v5, "spanned":Landroid/text/Spanned;
    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v11, v12, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    .line 2094
    .local v8, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v1, v8

    move/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "margin":I
    .local v17, "margin":I
    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v18, v8, v4

    move-object/from16 v19, v18

    .line 2095
    .local v19, "lms":Landroid/text/style/LeadingMarginSpan;
    move/from16 v20, v1

    const/4 v1, 0x1

    move/from16 v21, v2

    move-object/from16 v2, v19

    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    .end local v19    # "lms":Landroid/text/style/LeadingMarginSpan;
    .local v2, "lms":Landroid/text/style/LeadingMarginSpan;
    .local v21, "hasTabs":Z
    add-int v17, v17, v1

    .line 2094
    .end local v2    # "lms":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v20

    move/from16 v2, v21

    goto :goto_0

    .line 2098
    .end local v5    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/LeadingMarginSpan;
    .end local v21    # "hasTabs":Z
    .local v2, "hasTabs":Z
    :cond_0
    move/from16 v21, v2

    move/from16 v8, v17

    goto :goto_1

    .end local v17    # "margin":I
    .restart local v4    # "margin":I
    :cond_1
    move/from16 v21, v2

    move v8, v4

    .end local v2    # "hasTabs":Z
    .end local v4    # "margin":I
    .local v8, "margin":I
    .restart local v21    # "hasTabs":Z
    :goto_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v1, v16

    .end local v16    # "i":I
    .local v1, "i":I
    if-ge v1, v9, :cond_5

    .line 2099
    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    .line 2100
    const/4 v2, 0x1

    .line 2101
    .end local v21    # "hasTabs":Z
    .restart local v2    # "hasTabs":Z
    instance-of v4, v10, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    .line 2102
    move-object v4, v10

    check-cast v4, Landroid/text/Spanned;

    .line 2103
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v11, v12, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 2105
    .local v5, "spanEnd":I
    move-object/from16 v22, v0

    const-class v0, Landroid/text/style/TabStopSpan;

    .end local v0    # "chars":[C
    .local v22, "chars":[C
    invoke-static {v4, v11, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 2107
    .local v0, "spans":[Landroid/text/style/TabStopSpan;
    move/from16 v23, v2

    array-length v2, v0

    .end local v2    # "hasTabs":Z
    .local v23, "hasTabs":Z
    if-lez v2, :cond_2

    .line 2108
    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v24, v3

    const/16 v3, 0x14

    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .local v24, "tabStops":Landroid/text/Layout$TabStops;
    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v3, v2

    .end local v0    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spanEnd":I
    .end local v24    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_3

    .line 2110
    :cond_2
    move-object/from16 v24, v3

    .line 2114
    :goto_3
    move-object/from16 v24, v3

    goto :goto_4

    .end local v1    # "i":I
    .end local v22    # "chars":[C
    .end local v23    # "hasTabs":Z
    .local v0, "chars":[C
    .restart local v2    # "hasTabs":Z
    :cond_3
    move-object/from16 v22, v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    .end local v0    # "chars":[C
    .end local v2    # "hasTabs":Z
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v22    # "chars":[C
    .restart local v23    # "hasTabs":Z
    .restart local v24    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_4

    .line 2098
    .end local v22    # "chars":[C
    .end local v23    # "hasTabs":Z
    .end local v24    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v1    # "i":I
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v21    # "hasTabs":Z
    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v22    # "chars":[C
    .restart local v24    # "tabStops":Landroid/text/Layout$TabStops;
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "i":I
    .restart local v16    # "i":I
    goto :goto_2

    .line 2114
    .end local v16    # "i":I
    .end local v22    # "chars":[C
    .end local v24    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_5
    move-object/from16 v22, v0

    move-object/from16 v24, v3

    move/from16 v23, v21

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v21    # "hasTabs":Z
    .restart local v22    # "chars":[C
    .restart local v23    # "hasTabs":Z
    .restart local v24    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_4
    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v11

    move v5, v12

    move v0, v8

    move/from16 v8, v23

    .end local v8    # "margin":I
    .local v0, "margin":I
    move/from16 v16, v9

    move-object/from16 v9, v24

    .end local v9    # "len":I
    .local v16, "len":I
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 2115
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float/2addr v1, v2

    .line 2117
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2118
    if-eqz v15, :cond_6

    .line 2119
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 2115
    :cond_6
    return v1

    .line 2117
    .end local v0    # "margin":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v16    # "len":I
    .end local v22    # "chars":[C
    .end local v23    # "hasTabs":Z
    .end local v24    # "tabStops":Landroid/text/Layout$TabStops;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v15    # "mt":Landroid/text/MeasuredParagraph;
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    :catchall_1
    move-exception v0

    move-object v15, v1

    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v15    # "mt":Landroid/text/MeasuredParagraph;
    :goto_5
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2118
    if-eqz v15, :cond_7

    .line 2119
    invoke-virtual {v15}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_7
    throw v0
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .line 2199
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2200
    .local v0, "nh":F
    const/4 v1, 0x0

    .line 2202
    .local v1, "alltabs":Z
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    .line 2203
    if-nez p4, :cond_0

    .line 2204
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 2205
    const/4 v1, 0x1

    .line 2208
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 2209
    if-nez v1, :cond_1

    .line 2210
    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_1

    .line 2211
    goto :goto_1

    .line 2214
    :cond_1
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 2216
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_2

    .line 2217
    int-to-float v0, v3

    .line 2208
    .end local v3    # "where":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2220
    .end local v2    # "i":I
    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 2221
    return v0

    .line 2224
    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    mul-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    return v2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 12
    .param p1, "offset"    # I

    .line 1034
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1035
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1036
    .local v1, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1037
    .local v2, "lineEnd":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1039
    .local v3, "runs":[I
    const/4 v4, -0x1

    .line 1040
    .local v4, "levelAt":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    const v8, 0x3ffffff

    if-ge v6, v7, :cond_3

    .line 1041
    aget v7, v3, v6

    add-int/2addr v7, v1

    .line 1042
    .local v7, "start":I
    add-int/lit8 v9, v6, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v8

    add-int/2addr v9, v7

    .line 1043
    .local v9, "limit":I
    if-le v9, v2, :cond_0

    .line 1044
    move v9, v2

    .line 1046
    :cond_0
    if-lt p1, v7, :cond_2

    if-ge p1, v9, :cond_2

    .line 1047
    if-le p1, v7, :cond_1

    .line 1049
    return v5

    .line 1051
    :cond_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    .line 1052
    goto :goto_1

    .line 1040
    .end local v7    # "start":I
    .end local v9    # "limit":I
    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1055
    .end local v6    # "i":I
    :cond_3
    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_5

    .line 1057
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    move v4, v6

    .line 1061
    :cond_5
    const/4 v6, -0x1

    .line 1062
    .local v6, "levelBefore":I
    if-ne p1, v1, :cond_7

    .line 1063
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v8, v7, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v7

    :goto_3
    move v6, v8

    goto :goto_5

    .line 1065
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 1066
    move v9, v5

    .local v9, "i":I
    :goto_4
    array-length v10, v3

    if-ge v9, v10, :cond_a

    .line 1067
    aget v10, v3, v9

    add-int/2addr v10, v1

    .line 1068
    .local v10, "start":I
    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v8

    add-int/2addr v11, v10

    .line 1069
    .local v11, "limit":I
    if-le v11, v2, :cond_8

    .line 1070
    move v11, v2

    .line 1072
    :cond_8
    if-lt p1, v10, :cond_9

    if-ge p1, v11, :cond_9

    .line 1073
    add-int/lit8 v8, v9, 0x1

    aget v8, v3, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v6, v8, 0x3f

    .line 1074
    goto :goto_5

    .line 1066
    .end local v10    # "start":I
    .end local v11    # "limit":I
    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 1079
    .end local v9    # "i":I
    :cond_a
    :goto_5
    if-ge v6, v4, :cond_b

    move v5, v7

    nop

    :cond_b
    return v5
.end method

.method private primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12
    .param p1, "line"    # I

    .line 1089
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1090
    .local v0, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1091
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1093
    .local v2, "runs":[I
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 1095
    .local v3, "trailing":[Z
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1096
    .local v5, "level":[B
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_1

    .line 1097
    aget v8, v2, v7

    add-int/2addr v8, v0

    .line 1098
    .local v8, "start":I
    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 1099
    .local v9, "limit":I
    if-le v9, v1, :cond_0

    .line 1100
    move v9, v1

    .line 1102
    :cond_0
    sub-int v10, v9, v0

    sub-int/2addr v10, v4

    add-int/lit8 v11, v7, 0x1

    aget v11, v2, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v11, v11, 0x3f

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 1096
    .end local v8    # "start":I
    .end local v9    # "limit":I
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 1106
    .end local v7    # "i":I
    :cond_1
    move v7, v6

    .restart local v7    # "i":I
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_5

    .line 1107
    aget v8, v2, v7

    add-int/2addr v8, v0

    .line 1108
    .restart local v8    # "start":I
    add-int/lit8 v9, v7, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v9, v9

    .line 1109
    .local v9, "currentLevel":B
    sub-int v10, v8, v0

    if-ne v8, v0, :cond_3

    .line 1110
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_2

    .line 1111
    move v11, v6

    goto :goto_2

    .line 1110
    :cond_2
    nop

    .line 1111
    move v11, v4

    goto :goto_2

    :cond_3
    sub-int v11, v8, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_2
    if-le v9, v11, :cond_4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v6

    :goto_3
    aput-boolean v11, v3, v10

    .line 1106
    .end local v8    # "start":I
    .end local v9    # "currentLevel":B
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 1114
    .end local v7    # "i":I
    :cond_5
    return-object v3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 300
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .line 314
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 315
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 316
    .local v9, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 317
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    return-void

    .line 319
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 321
    invoke-virtual {p0, p1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 322
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    .line 585
    iget-boolean v1, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_9

    .line 586
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v1, :cond_0

    .line 587
    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 590
    :cond_0
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    .line 591
    .local v12, "buffer":Landroid/text/Spanned;
    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v11

    .line 592
    .local v11, "textLength":I
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v10, 0x0

    invoke-virtual {v1, v12, v10, v11}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 594
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v1, :cond_8

    .line 595
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 596
    .local v1, "previousLineBottom":I
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 597
    .local v2, "previousLineEnd":I
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 598
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v4, 0x0

    .line 599
    .local v4, "spansLength":I
    iget-object v9, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 600
    .local v9, "paint":Landroid/text/TextPaint;
    const/4 v5, 0x0

    .line 601
    .local v5, "spanEnd":I
    iget v8, v0, Landroid/text/Layout;->mWidth:I

    .line 602
    .local v8, "width":I
    move v7, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move v1, v15

    .local v1, "i":I
    .local v2, "previousLineBottom":I
    .local v4, "previousLineEnd":I
    .local v5, "spansLength":I
    .local v7, "spanEnd":I
    :goto_0
    move/from16 v6, p6

    if-gt v1, v6, :cond_8

    .line 603
    move/from16 v16, v4

    .line 604
    .local v16, "start":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 605
    .local v10, "end":I
    move/from16 v18, v10

    .line 607
    .end local v4    # "previousLineEnd":I
    .local v18, "previousLineEnd":I
    move v6, v2

    .line 608
    .local v6, "ltop":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 609
    .local v19, "lbottom":I
    move/from16 v20, v19

    .line 610
    .end local v2    # "previousLineBottom":I
    .local v20, "previousLineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int v21, v19, v2

    .line 612
    .local v21, "lbaseline":I
    move/from16 v4, v16

    if-lt v4, v7, :cond_6

    .line 615
    .end local v16    # "start":I
    .local v4, "start":I
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v2, v4, v11}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    .line 617
    .end local v7    # "spanEnd":I
    .local v2, "spanEnd":I
    const/4 v5, 0x0

    .line 619
    if-ne v4, v10, :cond_2

    if-nez v4, :cond_1

    goto :goto_2

    .line 634
    :cond_1
    move/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v16, v3

    .end local v1    # "i":I
    .end local v2    # "spanEnd":I
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spansLength":I
    .local v7, "spansLength":I
    .local v16, "spans":[Landroid/text/style/ParagraphStyle;
    .local v22, "i":I
    .local v23, "spanEnd":I
    :goto_1
    move v7, v5

    goto :goto_5

    .line 622
    .end local v7    # "spansLength":I
    .end local v16    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v22    # "i":I
    .end local v23    # "spanEnd":I
    .restart local v1    # "i":I
    .restart local v2    # "spanEnd":I
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v5    # "spansLength":I
    :cond_2
    :goto_2
    move-object v7, v3

    const/4 v3, 0x0

    .local v3, "j":I
    .local v7, "spans":[Landroid/text/style/ParagraphStyle;
    :goto_3
    move/from16 v22, v1

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .end local v1    # "i":I
    .restart local v22    # "i":I
    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v1, :cond_5

    .line 625
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v3

    if-ge v1, v10, :cond_4

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v3

    if-gt v1, v4, :cond_3

    .line 626
    goto :goto_4

    .line 627
    :cond_3
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v3

    invoke-static {v7, v5, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    .line 629
    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v5, v5, 0x1

    .line 622
    move-object v7, v1

    .end local v1    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    goto :goto_3

    .line 634
    .end local v3    # "j":I
    :cond_5
    move/from16 v23, v2

    move-object/from16 v16, v7

    goto :goto_1

    .end local v2    # "spanEnd":I
    .end local v22    # "i":I
    .local v1, "i":I
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    .local v7, "spanEnd":I
    :cond_6
    move/from16 v22, v1

    move-object/from16 v16, v3

    move/from16 v23, v7

    move v7, v5

    .end local v1    # "i":I
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spansLength":I
    .local v7, "spansLength":I
    .restart local v16    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v22    # "i":I
    .restart local v23    # "spanEnd":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_6
    move v5, v1

    .end local v1    # "n":I
    .local v5, "n":I
    if-ge v5, v7, :cond_7

    .line 635
    aget-object v1, v16, v5

    move-object/from16 v24, v1

    check-cast v24, Landroid/text/style/LineBackgroundSpan;

    .line 636
    .local v24, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/16 v25, 0x0

    move-object/from16 v1, v24

    move-object v2, v13

    move-object v3, v9

    move/from16 v26, v4

    move/from16 v4, v25

    .end local v4    # "start":I
    .local v26, "start":I
    move/from16 v25, v5

    move v5, v8

    .end local v5    # "n":I
    .local v25, "n":I
    move/from16 v27, v7

    move/from16 v7, v21

    .end local v7    # "spansLength":I
    .local v27, "spansLength":I
    move/from16 v28, v8

    move/from16 v8, v19

    .end local v8    # "width":I
    .local v28, "width":I
    move-object/from16 v29, v9

    move-object v9, v12

    .end local v9    # "paint":Landroid/text/TextPaint;
    .local v29, "paint":Landroid/text/TextPaint;
    move/from16 v17, v10

    const/16 v30, 0x0

    move/from16 v10, v26

    .end local v10    # "end":I
    .local v17, "end":I
    move/from16 v31, v11

    move/from16 v11, v17

    .end local v11    # "textLength":I
    .local v31, "textLength":I
    move-object/from16 v32, v12

    move/from16 v12, v22

    .end local v12    # "buffer":Landroid/text/Spanned;
    .local v32, "buffer":Landroid/text/Spanned;
    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 634
    .end local v24    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    add-int/lit8 v1, v25, 0x1

    .end local v25    # "n":I
    .restart local v1    # "n":I
    move/from16 v10, v17

    move/from16 v4, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v9, v29

    move/from16 v11, v31

    move-object/from16 v12, v32

    goto :goto_6

    .line 602
    .end local v1    # "n":I
    .end local v6    # "ltop":I
    .end local v17    # "end":I
    .end local v19    # "lbottom":I
    .end local v21    # "lbaseline":I
    .end local v26    # "start":I
    .end local v27    # "spansLength":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v31    # "textLength":I
    .end local v32    # "buffer":Landroid/text/Spanned;
    .restart local v7    # "spansLength":I
    .restart local v8    # "width":I
    .restart local v9    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_7
    move/from16 v27, v7

    move/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v31, v11

    move-object/from16 v32, v12

    const/16 v30, 0x0

    .end local v7    # "spansLength":I
    .end local v8    # "width":I
    .end local v9    # "paint":Landroid/text/TextPaint;
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v27    # "spansLength":I
    .restart local v28    # "width":I
    .restart local v29    # "paint":Landroid/text/TextPaint;
    .restart local v31    # "textLength":I
    .restart local v32    # "buffer":Landroid/text/Spanned;
    add-int/lit8 v1, v22, 0x1

    .end local v22    # "i":I
    .local v1, "i":I
    move-object/from16 v3, v16

    move/from16 v4, v18

    move/from16 v2, v20

    move/from16 v7, v23

    move/from16 v5, v27

    move/from16 v10, v30

    goto/16 :goto_0

    .line 642
    .end local v1    # "i":I
    .end local v16    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v18    # "previousLineEnd":I
    .end local v20    # "previousLineBottom":I
    .end local v23    # "spanEnd":I
    .end local v27    # "spansLength":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v31    # "textLength":I
    .end local v32    # "buffer":Landroid/text/Spanned;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_8
    move/from16 v31, v11

    move-object/from16 v32, v12

    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v31    # "textLength":I
    .restart local v32    # "buffer":Landroid/text/Spanned;
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 647
    .end local v31    # "textLength":I
    .end local v32    # "buffer":Landroid/text/Spanned;
    :cond_9
    if-eqz p2, :cond_b

    .line 648
    const/4 v2, 0x0

    if-eqz v14, :cond_a

    int-to-float v3, v14

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 649
    :cond_a
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 650
    if-eqz v14, :cond_b

    neg-int v3, v14

    int-to-float v3, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 652
    :cond_b
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 46
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    move-object/from16 v15, p0

    move/from16 v14, p2

    .line 415
    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 416
    .local v0, "previousLineBottom":I
    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 417
    .local v1, "previousLineEnd":I
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 418
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v3, 0x0

    .line 419
    .local v3, "spanEnd":I
    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 420
    .local v13, "paint":Landroid/text/TextPaint;
    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 421
    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 423
    .local v12, "buf":Ljava/lang/CharSequence;
    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 424
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 425
    .local v5, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v6, 0x0

    .line 427
    .local v6, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 431
    .local v11, "tl":Landroid/text/TextLine;
    move-object v10, v5

    move v7, v6

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v14

    .end local v5    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "lineNum":I
    .local v2, "previousLineBottom":I
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    .local v6, "spanEnd":I
    .local v7, "tabStopsIsInitialized":Z
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move v9, v0

    .end local v0    # "lineNum":I
    .local v9, "lineNum":I
    move/from16 v8, p3

    if-gt v9, v8, :cond_1a

    .line 432
    move v0, v1

    .line 433
    .local v0, "start":I
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 434
    invoke-direct {v15, v9}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v20

    .line 435
    .local v20, "justify":Z
    invoke-direct {v15, v9, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v21

    .line 436
    .local v21, "end":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getHyphen(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 438
    move v5, v2

    .line 439
    .local v5, "ltop":I
    move/from16 v22, v1

    add-int/lit8 v1, v9, 0x1

    .end local v1    # "previousLineEnd":I
    .local v22, "previousLineEnd":I
    invoke-virtual {v15, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v23

    .line 440
    .local v23, "lbottom":I
    move/from16 v24, v23

    .line 441
    .end local v2    # "previousLineBottom":I
    .local v24, "previousLineBottom":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v2, v23, v1

    .line 443
    .local v2, "lbaseline":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 444
    .local v1, "dir":I
    const/16 v16, 0x0

    .line 445
    .local v16, "left":I
    move/from16 v25, v2

    iget v2, v15, Landroid/text/Layout;->mWidth:I

    .line 447
    .local v2, "right":I
    .local v25, "lbaseline":I
    move/from16 v26, v2

    iget-boolean v2, v15, Landroid/text/Layout;->mSpannedText:Z

    .end local v2    # "right":I
    .local v26, "right":I
    move/from16 v27, v5

    .end local v5    # "ltop":I
    .local v27, "ltop":I
    if-eqz v2, :cond_d

    .line 448
    move-object v2, v12

    check-cast v2, Landroid/text/Spanned;

    .line 449
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 450
    .local v5, "textLength":I
    if-eqz v0, :cond_1

    move-object/from16 v30, v3

    add-int/lit8 v3, v0, -0x1

    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v30, "spans":[Landroid/text/style/ParagraphStyle;
    invoke-interface {v12, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move-object/from16 v31, v4

    const/16 v4, 0xa

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "paraAlign":Landroid/text/Layout$Alignment;
    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .end local v30    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v31    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v30    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v31    # "paraAlign":Landroid/text/Layout$Alignment;
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move/from16 v19, v3

    .line 462
    .local v19, "isFirstParaLine":Z
    if-lt v0, v6, :cond_6

    if-eq v9, v14, :cond_3

    if-eqz v19, :cond_2

    goto :goto_3

    .line 480
    :cond_2
    move/from16 v32, v0

    const/16 v17, 0x1

    goto :goto_6

    .line 463
    :cond_3
    :goto_3
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v0, v5, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 465
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-static {v2, v0, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 467
    .end local v30    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 468
    .end local v31    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    move/from16 v32, v0

    array-length v0, v3

    .end local v0    # "start":I
    .local v32, "start":I
    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "n":I
    :goto_4
    if-ltz v0, :cond_5

    .line 469
    move-object/from16 v33, v4

    aget-object v4, v3, v0

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v33, "paraAlign":Landroid/text/Layout$Alignment;
    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_4

    .line 470
    aget-object v4, v3, v0

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    .line 471
    .end local v33    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    goto :goto_5

    .line 468
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v33    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v4, v33

    goto :goto_4

    .line 475
    .end local v0    # "n":I
    .end local v33    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_5
    move-object/from16 v33, v4

    :goto_5
    const/4 v0, 0x0

    .line 480
    .end local v7    # "tabStopsIsInitialized":Z
    .local v0, "tabStopsIsInitialized":Z
    move/from16 v29, v0

    move-object v7, v3

    move-object/from16 v31, v4

    goto :goto_7

    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v32    # "start":I
    .local v0, "start":I
    .restart local v7    # "tabStopsIsInitialized":Z
    .restart local v30    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v31    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_6
    move/from16 v32, v0

    const/16 v17, 0x1

    .end local v0    # "start":I
    .restart local v32    # "start":I
    :goto_6
    move/from16 v29, v7

    move-object/from16 v7, v30

    .end local v6    # "spanEnd":I
    .local v7, "spans":[Landroid/text/style/ParagraphStyle;
    .local v29, "tabStopsIsInitialized":Z
    .local v30, "spanEnd":I
    :goto_7
    move/from16 v30, v6

    array-length v6, v7

    .line 481
    .local v6, "length":I
    move/from16 v0, v19

    .line 482
    .local v0, "useFirstLineMargin":Z
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_8
    if-ge v3, v6, :cond_9

    .line 483
    aget-object v4, v7, v3

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_7

    .line 484
    aget-object v4, v7, v3

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    .line 485
    .local v4, "count":I
    move/from16 v34, v0

    aget-object v0, v7, v3

    .end local v0    # "useFirstLineMargin":Z
    .local v34, "useFirstLineMargin":Z
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 488
    .local v0, "startLine":I
    move-object/from16 v35, v2

    add-int v2, v0, v4

    .end local v2    # "sp":Landroid/text/Spanned;
    .local v35, "sp":Landroid/text/Spanned;
    if-ge v9, v2, :cond_8

    .line 489
    const/4 v2, 0x1

    .line 490
    .end local v34    # "useFirstLineMargin":Z
    .local v2, "useFirstLineMargin":Z
    nop

    .line 494
    move v4, v2

    goto :goto_9

    .line 482
    .end local v4    # "count":I
    .end local v35    # "sp":Landroid/text/Spanned;
    .local v0, "useFirstLineMargin":Z
    .local v2, "sp":Landroid/text/Spanned;
    :cond_7
    move/from16 v34, v0

    move-object/from16 v35, v2

    .end local v0    # "useFirstLineMargin":Z
    .end local v2    # "sp":Landroid/text/Spanned;
    .restart local v34    # "useFirstLineMargin":Z
    .restart local v35    # "sp":Landroid/text/Spanned;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v34

    move-object/from16 v2, v35

    goto :goto_8

    .line 494
    .end local v3    # "n":I
    .end local v34    # "useFirstLineMargin":Z
    .end local v35    # "sp":Landroid/text/Spanned;
    .restart local v0    # "useFirstLineMargin":Z
    .restart local v2    # "sp":Landroid/text/Spanned;
    :cond_9
    move/from16 v34, v0

    move-object/from16 v35, v2

    move/from16 v4, v34

    .end local v0    # "useFirstLineMargin":Z
    .end local v2    # "sp":Landroid/text/Spanned;
    .local v4, "useFirstLineMargin":Z
    .restart local v35    # "sp":Landroid/text/Spanned;
    :goto_9
    move/from16 v33, v26

    const/4 v0, 0x0

    move/from16 v26, v16

    .end local v16    # "left":I
    .local v0, "n":I
    .local v26, "left":I
    .local v33, "right":I
    :goto_a
    move v3, v0

    .end local v0    # "n":I
    .restart local v3    # "n":I
    if-ge v3, v6, :cond_c

    .line 495
    aget-object v0, v7, v3

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_b

    .line 496
    aget-object v0, v7, v3

    move-object v2, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    .line 497
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v0, -0x1

    if-ne v1, v0, :cond_a

    .line 498
    move-object v0, v2

    move/from16 v36, v1

    move-object/from16 v1, p1

    .end local v1    # "dir":I
    .local v36, "dir":I
    move-object v14, v2

    move/from16 v37, v25

    move-object/from16 v25, v35

    move-object v2, v13

    .end local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v35    # "sp":Landroid/text/Spanned;
    .local v14, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v25, "sp":Landroid/text/Spanned;
    .local v37, "lbaseline":I
    move/from16 v34, v3

    move/from16 v3, v33

    .end local v3    # "n":I
    .local v34, "n":I
    move-object/from16 v38, v13

    move v13, v4

    move/from16 v4, v36

    .end local v4    # "useFirstLineMargin":Z
    .local v13, "useFirstLineMargin":Z
    .local v38, "paint":Landroid/text/TextPaint;
    move/from16 v35, v6

    move/from16 v6, v37

    .end local v6    # "length":I
    .local v35, "length":I
    move-object/from16 v39, v7

    move/from16 v7, v23

    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    move-object v8, v12

    move/from16 v40, v9

    move/from16 v9, v32

    .end local v9    # "lineNum":I
    .local v40, "lineNum":I
    move-object/from16 v41, v10

    move/from16 v10, v21

    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    move-object/from16 v42, v11

    move/from16 v11, v19

    .end local v11    # "tl":Landroid/text/TextLine;
    .local v42, "tl":Landroid/text/TextLine;
    move-object/from16 v43, v12

    move-object v12, v15

    .end local v12    # "buf":Ljava/lang/CharSequence;
    .local v43, "buf":Ljava/lang/CharSequence;
    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 501
    .local v5, "ltop":I
    .local v27, "textLength":I
    invoke-interface {v14, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v33, v33, v0

    .line 494
    move v2, v13

    move-object v3, v15

    move-object/from16 v0, v38

    goto/16 :goto_b

    .line 503
    .end local v14    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v34    # "n":I
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v38    # "paint":Landroid/text/TextPaint;
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "buf":Ljava/lang/CharSequence;
    .restart local v1    # "dir":I
    .restart local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .restart local v3    # "n":I
    .restart local v4    # "useFirstLineMargin":Z
    .local v5, "textLength":I
    .restart local v6    # "length":I
    .restart local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "tl":Landroid/text/TextLine;
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .local v13, "paint":Landroid/text/TextPaint;
    .local v25, "lbaseline":I
    .local v27, "ltop":I
    .local v35, "sp":Landroid/text/Spanned;
    :cond_a
    move/from16 v36, v1

    move-object v14, v2

    move/from16 v34, v3

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object/from16 v38, v13

    move/from16 v37, v25

    move-object/from16 v25, v35

    move v13, v4

    move/from16 v35, v6

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    .end local v1    # "dir":I
    .end local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v3    # "n":I
    .end local v4    # "useFirstLineMargin":Z
    .end local v6    # "length":I
    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "tl":Landroid/text/TextLine;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .local v5, "ltop":I
    .local v13, "useFirstLineMargin":Z
    .restart local v14    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v25, "sp":Landroid/text/Spanned;
    .local v27, "textLength":I
    .restart local v34    # "n":I
    .local v35, "length":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v38    # "paint":Landroid/text/TextPaint;
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "buf":Ljava/lang/CharSequence;
    move-object v6, v14

    move-object/from16 v7, p1

    move-object/from16 v8, v38

    move/from16 v9, v26

    move/from16 v10, v36

    move v11, v5

    move/from16 v12, v37

    move v2, v13

    move-object/from16 v0, v38

    move/from16 v13, v23

    .end local v13    # "useFirstLineMargin":Z
    .end local v38    # "paint":Landroid/text/TextPaint;
    .local v0, "paint":Landroid/text/TextPaint;
    .local v2, "useFirstLineMargin":Z
    move-object v1, v14

    move-object/from16 v14, v43

    .end local v14    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v1, "margin":Landroid/text/style/LeadingMarginSpan;
    move-object v3, v15

    move/from16 v15, v32

    move/from16 v16, v21

    move/from16 v17, v19

    move-object/from16 v18, v3

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 506
    invoke-interface {v1, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v26, v26, v4

    .end local v1    # "margin":Landroid/text/style/LeadingMarginSpan;
    goto :goto_b

    .line 494
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v2    # "useFirstLineMargin":Z
    .end local v34    # "n":I
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "buf":Ljava/lang/CharSequence;
    .local v1, "dir":I
    .restart local v3    # "n":I
    .restart local v4    # "useFirstLineMargin":Z
    .local v5, "textLength":I
    .restart local v6    # "length":I
    .restart local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "tl":Landroid/text/TextLine;
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .local v13, "paint":Landroid/text/TextPaint;
    .local v25, "lbaseline":I
    .local v27, "ltop":I
    .local v35, "sp":Landroid/text/Spanned;
    :cond_b
    move/from16 v36, v1

    move/from16 v34, v3

    move v2, v4

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move-object/from16 v25, v35

    move/from16 v35, v6

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    .end local v1    # "dir":I
    .end local v3    # "n":I
    .end local v4    # "useFirstLineMargin":Z
    .end local v6    # "length":I
    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "tl":Landroid/text/TextLine;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .restart local v2    # "useFirstLineMargin":Z
    .local v5, "ltop":I
    .local v25, "sp":Landroid/text/Spanned;
    .local v27, "textLength":I
    .restart local v34    # "n":I
    .local v35, "length":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "buf":Ljava/lang/CharSequence;
    :goto_b
    add-int/lit8 v1, v34, 0x1

    .end local v34    # "n":I
    .local v1, "n":I
    move/from16 v14, p2

    move/from16 v8, p3

    move-object v13, v0

    move v0, v1

    move v4, v2

    move-object v15, v3

    move/from16 v6, v35

    move/from16 v1, v36

    move-object/from16 v7, v39

    move/from16 v9, v40

    move-object/from16 v10, v41

    move-object/from16 v11, v42

    move-object/from16 v12, v43

    const/16 v17, 0x1

    move-object/from16 v35, v25

    move/from16 v25, v37

    move/from16 v45, v27

    move/from16 v27, v5

    move/from16 v5, v45

    goto/16 :goto_a

    .line 512
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v2    # "useFirstLineMargin":Z
    .end local v5    # "ltop":I
    .end local v19    # "isFirstParaLine":Z
    .end local v35    # "length":I
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "buf":Ljava/lang/CharSequence;
    .local v1, "dir":I
    .restart local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "tl":Landroid/text/TextLine;
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .local v25, "lbaseline":I
    .local v27, "ltop":I
    :cond_c
    move/from16 v36, v1

    move-object/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move/from16 v5, v27

    move-object/from16 v4, v31

    move-object/from16 v1, v39

    .end local v1    # "dir":I
    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "tl":Landroid/text/TextLine;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v25    # "lbaseline":I
    .end local v27    # "ltop":I
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .restart local v5    # "ltop":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "buf":Ljava/lang/CharSequence;
    goto :goto_c

    .end local v5    # "ltop":I
    .end local v29    # "tabStopsIsInitialized":Z
    .end local v30    # "spanEnd":I
    .end local v31    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v32    # "start":I
    .end local v33    # "right":I
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "buf":Ljava/lang/CharSequence;
    .local v0, "start":I
    .restart local v1    # "dir":I
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    .local v6, "spanEnd":I
    .local v7, "tabStopsIsInitialized":Z
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "tl":Landroid/text/TextLine;
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .restart local v16    # "left":I
    .restart local v25    # "lbaseline":I
    .local v26, "right":I
    .restart local v27    # "ltop":I
    :cond_d
    move/from16 v32, v0

    move/from16 v36, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    move/from16 v37, v25

    move/from16 v5, v27

    move/from16 v29, v7

    move/from16 v33, v26

    move-object/from16 v1, v30

    move/from16 v30, v6

    move/from16 v26, v16

    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v6    # "spanEnd":I
    .end local v7    # "tabStopsIsInitialized":Z
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "tl":Landroid/text/TextLine;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v16    # "left":I
    .end local v25    # "lbaseline":I
    .end local v27    # "ltop":I
    .local v0, "paint":Landroid/text/TextPaint;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v5    # "ltop":I
    .local v26, "left":I
    .restart local v29    # "tabStopsIsInitialized":Z
    .restart local v30    # "spanEnd":I
    .restart local v32    # "start":I
    .restart local v33    # "right":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "buf":Ljava/lang/CharSequence;
    :goto_c
    move/from16 v2, v40

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v25

    .line 514
    .end local v40    # "lineNum":I
    .local v2, "lineNum":I
    .local v25, "hasTab":Z
    if-eqz v25, :cond_f

    if-nez v29, :cond_f

    .line 515
    const/16 v6, 0x14

    move-object/from16 v8, v41

    if-nez v8, :cond_e

    .line 516
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    new-instance v7, Landroid/text/Layout$TabStops;

    invoke-direct {v7, v6, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v7

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_d

    .line 518
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_e
    invoke-virtual {v8, v6, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    .line 520
    move-object v10, v8

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_d
    const/4 v6, 0x1

    .line 524
    .end local v29    # "tabStopsIsInitialized":Z
    .local v6, "tabStopsIsInitialized":Z
    move/from16 v29, v6

    move-object v15, v10

    goto :goto_e

    .end local v6    # "tabStopsIsInitialized":Z
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v29    # "tabStopsIsInitialized":Z
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_f
    move-object/from16 v8, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    move-object v15, v8

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    :goto_e
    move-object v6, v4

    .line 525
    .local v6, "align":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_11

    .line 526
    move/from16 v14, v36

    const/4 v7, 0x1

    if-ne v14, v7, :cond_10

    .line 527
    .end local v36    # "dir":I
    .local v14, "dir":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v6, v8

    goto :goto_11

    .line 528
    .end local v14    # "dir":I
    .restart local v36    # "dir":I
    :cond_11
    move/from16 v14, v36

    const/4 v7, 0x1

    .end local v36    # "dir":I
    .restart local v14    # "dir":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_13

    .line 529
    if-ne v14, v7, :cond_12

    .line 530
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_12
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object v6, v8

    .line 535
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .local v13, "align":Landroid/text/Layout$Alignment;
    :cond_13
    :goto_11
    move-object v13, v6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v13, v6, :cond_15

    .line 536
    if-ne v14, v7, :cond_14

    .line 537
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 538
    .local v6, "indentWidth":I
    add-int v7, v26, v6

    .line 556
    .end local v6    # "indentWidth":I
    .local v7, "x":I
    .local v27, "indentWidth":I
    :goto_12
    move/from16 v27, v6

    goto :goto_14

    .line 540
    .end local v7    # "x":I
    .end local v27    # "indentWidth":I
    :cond_14
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    .line 541
    .restart local v6    # "indentWidth":I
    sub-int v7, v33, v6

    goto :goto_12

    .line 544
    .end local v6    # "indentWidth":I
    :cond_15
    const/4 v6, 0x0

    invoke-direct {v3, v2, v15, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 545
    .local v6, "max":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v13, v8, :cond_17

    .line 546
    if-ne v14, v7, :cond_16

    .line 547
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    .line 548
    .local v7, "indentWidth":I
    sub-int v8, v33, v6

    sub-int/2addr v8, v7

    .line 556
    .end local v6    # "max":I
    .local v7, "x":I
    .local v8, "x":I
    .restart local v27    # "indentWidth":I
    :goto_13
    move/from16 v27, v7

    move v7, v8

    goto :goto_14

    .line 550
    .end local v7    # "x":I
    .end local v8    # "x":I
    .end local v27    # "indentWidth":I
    .restart local v6    # "max":I
    :cond_16
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 551
    .local v7, "indentWidth":I
    sub-int v8, v26, v6

    add-int/2addr v8, v7

    goto :goto_13

    .line 554
    .end local v7    # "indentWidth":I
    :cond_17
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v2, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 555
    .local v8, "indentWidth":I
    and-int/lit8 v6, v6, -0x2

    .line 556
    add-int v9, v33, v26

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    .end local v6    # "max":I
    move/from16 v27, v8

    .end local v8    # "indentWidth":I
    .local v7, "x":I
    .restart local v27    # "indentWidth":I
    :goto_14
    move v12, v7

    .line 560
    .end local v7    # "x":I
    .local v12, "x":I
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 561
    .local v11, "directions":Landroid/text/Layout$Directions;
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v11, v6, :cond_18

    iget-boolean v6, v3, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_18

    if-nez v25, :cond_18

    if-nez v20, :cond_18

    .line 563
    int-to-float v10, v12

    move/from16 v9, v37

    int-to-float v8, v9

    .end local v37    # "lbaseline":I
    .local v9, "lbaseline":I
    move-object/from16 v6, p1

    move-object/from16 v7, v43

    move/from16 v16, v8

    move/from16 v8, v32

    move/from16 v28, v9

    move/from16 v9, v21

    .end local v9    # "lbaseline":I
    .local v28, "lbaseline":I
    move-object/from16 v31, v11

    move/from16 v11, v16

    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .local v31, "directions":Landroid/text/Layout$Directions;
    move-object/from16 v44, v1

    move v1, v12

    move-object v12, v0

    .end local v12    # "x":I
    .local v1, "x":I
    .local v44, "spans":[Landroid/text/style/ParagraphStyle;
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 431
    move-object v10, v15

    move-object/from16 v9, v42

    goto :goto_16

    .line 565
    .end local v28    # "lbaseline":I
    .end local v31    # "directions":Landroid/text/Layout$Directions;
    .end local v44    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v11    # "directions":Landroid/text/Layout$Directions;
    .restart local v12    # "x":I
    .restart local v37    # "lbaseline":I
    :cond_18
    move-object/from16 v44, v1

    move-object/from16 v31, v11

    move v1, v12

    move/from16 v28, v37

    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .end local v12    # "x":I
    .end local v37    # "lbaseline":I
    .local v1, "x":I
    .restart local v28    # "lbaseline":I
    .restart local v31    # "directions":Landroid/text/Layout$Directions;
    .restart local v44    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v6, v42

    move-object v7, v0

    move-object/from16 v8, v43

    move/from16 v9, v32

    move/from16 v10, v21

    move v11, v14

    move-object/from16 v12, v31

    move-object/from16 v34, v13

    move/from16 v13, v25

    .end local v13    # "align":Landroid/text/Layout$Alignment;
    .local v34, "align":Landroid/text/Layout$Alignment;
    move/from16 v35, v14

    move-object v14, v15

    .end local v14    # "dir":I
    .local v35, "dir":I
    invoke-virtual/range {v6 .. v14}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 566
    if-eqz v20, :cond_19

    .line 567
    sub-int v6, v33, v26

    sub-int v6, v6, v27

    int-to-float v6, v6

    move-object/from16 v9, v42

    invoke-virtual {v9, v6}, Landroid/text/TextLine;->justify(F)V

    goto :goto_15

    .line 569
    :cond_19
    move-object/from16 v9, v42

    .end local v42    # "tl":Landroid/text/TextLine;
    .local v9, "tl":Landroid/text/TextLine;
    :goto_15
    int-to-float v6, v1

    move-object v14, v9

    move-object v10, v15

    move-object/from16 v15, p1

    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v28

    move/from16 v19, v23

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 431
    .end local v1    # "x":I
    .end local v5    # "ltop":I
    .end local v20    # "justify":Z
    .end local v21    # "end":I
    .end local v23    # "lbottom":I
    .end local v25    # "hasTab":Z
    .end local v26    # "left":I
    .end local v27    # "indentWidth":I
    .end local v28    # "lbaseline":I
    .end local v31    # "directions":Landroid/text/Layout$Directions;
    .end local v32    # "start":I
    .end local v33    # "right":I
    .end local v34    # "align":Landroid/text/Layout$Alignment;
    .end local v35    # "dir":I
    :goto_16
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "lineNum":I
    .local v1, "lineNum":I
    move/from16 v14, p2

    move-object v13, v0

    move v0, v1

    move-object v15, v3

    move-object v11, v9

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v7, v29

    move/from16 v6, v30

    move-object/from16 v12, v43

    move-object/from16 v3, v44

    goto/16 :goto_0

    .line 573
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v22    # "previousLineEnd":I
    .end local v24    # "previousLineBottom":I
    .end local v29    # "tabStopsIsInitialized":Z
    .end local v30    # "spanEnd":I
    .end local v43    # "buf":Ljava/lang/CharSequence;
    .end local v44    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "previousLineEnd":I
    .local v2, "previousLineBottom":I
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v6, "spanEnd":I
    .local v7, "tabStopsIsInitialized":Z
    .local v11, "tl":Landroid/text/TextLine;
    .local v12, "buf":Ljava/lang/CharSequence;
    .local v13, "paint":Landroid/text/TextPaint;
    :cond_1a
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v43, v12

    move-object v0, v13

    move-object v3, v15

    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "tl":Landroid/text/TextLine;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v9    # "tl":Landroid/text/TextLine;
    .local v30, "spans":[Landroid/text/style/ParagraphStyle;
    .local v31, "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v43    # "buf":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 574
    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 802
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 18
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1794
    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 1796
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1797
    .local v4, "line":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 1798
    .local v5, "top":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v6

    .line 1800
    .local v6, "bottom":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v7

    .line 1801
    .local v7, "clamped":Z
    invoke-virtual {v0, v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 1802
    .local v8, "h1":F
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0, v1, v7}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v10

    sub-float/2addr v10, v9

    goto :goto_0

    :cond_0
    move v10, v8

    .line 1804
    .local v10, "h2":F
    :goto_0
    const/4 v11, 0x1

    invoke-static {v3, v11}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    const/16 v13, 0x800

    .line 1805
    invoke-static {v3, v13}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    or-int/2addr v12, v13

    .line 1806
    .local v12, "caps":I
    const/4 v13, 0x2

    invoke-static {v3, v13}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 1807
    .local v14, "fn":I
    const/4 v15, 0x0

    .line 1809
    .local v15, "dist":I
    if-nez v12, :cond_1

    if-eqz v14, :cond_3

    .line 1810
    :cond_1
    sub-int v16, v6, v5

    shr-int/lit8 v15, v16, 0x2

    .line 1812
    if-eqz v14, :cond_2

    .line 1813
    add-int/2addr v5, v15

    .line 1814
    :cond_2
    if-eqz v12, :cond_3

    .line 1815
    sub-int/2addr v6, v15

    .line 1818
    :cond_3
    cmpg-float v16, v8, v9

    if-gez v16, :cond_4

    .line 1819
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1820
    :cond_4
    cmpg-float v16, v10, v9

    if-gez v16, :cond_5

    .line 1821
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1823
    :cond_5
    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-nez v16, :cond_6

    .line 1824
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1825
    int-to-float v9, v6

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1827
    :cond_6
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1828
    add-int v9, v5, v6

    shr-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1830
    add-int v9, v5, v6

    shr-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1831
    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1834
    :goto_1
    if-ne v12, v13, :cond_7

    .line 1835
    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1836
    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1837
    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1838
    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1839
    :cond_7
    if-ne v12, v11, :cond_8

    .line 1840
    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1841
    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1843
    int-to-float v9, v15

    sub-float v9, v10, v9

    add-int v13, v6, v15

    int-to-float v13, v13

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v13, v13, v16

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1844
    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    sub-float v13, v13, v16

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1846
    int-to-float v9, v15

    add-float/2addr v9, v10

    add-int v13, v6, v15

    int-to-float v13, v13

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1847
    int-to-float v9, v6

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1850
    :cond_8
    :goto_2
    const/4 v9, 0x2

    if-ne v14, v9, :cond_9

    .line 1851
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1852
    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1853
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1854
    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 1855
    :cond_9
    if-ne v14, v11, :cond_a

    .line 1856
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1857
    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1859
    int-to-float v9, v15

    sub-float v9, v8, v9

    sub-int v11, v5, v15

    int-to-float v11, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1860
    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    add-float/2addr v11, v13

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1862
    int-to-float v9, v15

    add-float/2addr v9, v8

    sub-int v11, v5, v15

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1863
    int-to-float v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1865
    :cond_a
    :goto_3
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 764
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 784
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 1
    .param p1, "cap"    # Z

    .line 795
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1
    .param p1, "line"    # I

    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .line 1664
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1655
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1637
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineBottomWithoutSpacing(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1647
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 841
    if-eqz p2, :cond_0

    .line 842
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 843
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 844
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 845
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 847
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1599
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineExtra(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1675
    const/4 v0, 0x0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 1431
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1433
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1434
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1436
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1437
    move v0, v2

    goto :goto_0

    .line 1439
    :cond_0
    move v1, v2

    goto :goto_0

    .line 1442
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1443
    const/4 v2, 0x0

    return v2

    .line 1445
    :cond_2
    return v1
.end method

.method public getLineForVertical(I)I
    .locals 4
    .param p1, "vertical"    # I

    .line 1408
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1410
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1411
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1413
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1414
    move v0, v2

    goto :goto_0

    .line 1416
    :cond_0
    move v1, v2

    goto :goto_0

    .line 1419
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1420
    const/4 v2, 0x0

    return v2

    .line 1422
    :cond_2
    return v1
.end method

.method public getLineLeft(I)F
    .locals 6
    .param p1, "line"    # I

    .line 1255
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1256
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1258
    .local v1, "align":Landroid/text/Layout$Alignment;
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1259
    return v3

    .line 1260
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2

    .line 1261
    if-ne v0, v4, :cond_1

    .line 1262
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    .line 1264
    :cond_1
    return v3

    .line 1265
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 1266
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    .line 1267
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    .line 1268
    if-ne v0, v4, :cond_4

    .line 1269
    return v3

    .line 1271
    :cond_4
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    sub-float/2addr v2, v3

    return v2

    .line 1273
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1274
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 1275
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-int v4, v4

    and-int/lit8 v4, v4, -0x2

    .line 1277
    .local v4, "max":I
    sub-int v5, v3, v2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1317
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1318
    .local v0, "margin":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1319
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 662
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 663
    :try_start_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 665
    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 668
    :cond_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 669
    .local v1, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 670
    .local v4, "dbottom":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 673
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 675
    .local v5, "bottom":I
    if-lt v0, v5, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 676
    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 670
    .end local v0    # "top":I
    .end local v1    # "dtop":I
    .end local v4    # "dbottom":I
    .end local v5    # "bottom":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLineRight(I)F
    .locals 6
    .param p1, "line"    # I

    .line 1286
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1287
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1289
    .local v1, "align":Landroid/text/Layout$Alignment;
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_0

    .line 1290
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    add-float/2addr v2, v3

    return v2

    .line 1291
    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    .line 1292
    if-ne v0, v3, :cond_1

    .line 1293
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    .line 1295
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    add-float/2addr v2, v3

    return v2

    .line 1296
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_3

    .line 1297
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    .line 1298
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_5

    .line 1299
    if-ne v0, v3, :cond_4

    .line 1300
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v2

    return v2

    .line 1302
    :cond_4
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    return v2

    .line 1304
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1305
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 1306
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    float-to-int v4, v4

    and-int/lit8 v4, v4, -0x2

    .line 1308
    .local v4, "max":I
    sub-int v5, v3, v2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1607
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1327
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1328
    .local v0, "margin":F
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1329
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .line 1454
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 22
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1469
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1470
    .local v11, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 1472
    .local v12, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 1474
    .local v13, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 1476
    .local v14, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v14

    move v5, v12

    move v6, v11

    move-object v8, v13

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1478
    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 1482
    .local v2, "horizontal":Landroid/text/Layout$HorizontalMeasurementProvider;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    .line 1483
    move v4, v11

    .local v4, "max":I
    goto :goto_0

    .line 1485
    .end local v4    # "max":I
    :cond_0
    sub-int v4, v11, v12

    add-int/lit8 v6, v11, -0x1

    .line 1486
    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .line 1485
    xor-int/2addr v6, v5

    invoke-virtual {v14, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v12

    .line 1488
    .restart local v4    # "max":I
    :goto_0
    move v6, v12

    .line 1489
    .local v6, "best":I
    invoke-virtual {v2, v12}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v7

    sub-float v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1491
    .local v7, "bestdist":F
    move v9, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v9, "best":I
    :goto_1
    iget-object v10, v13, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v10, v10

    if-ge v6, v10, :cond_c

    .line 1492
    iget-object v10, v13, Landroid/text/Layout$Directions;->mDirections:[I

    aget v10, v10, v6

    add-int/2addr v10, v12

    .line 1493
    .local v10, "here":I
    iget-object v8, v13, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v6, 0x1

    aget v8, v8, v15

    const v15, 0x3ffffff

    and-int/2addr v8, v15

    add-int/2addr v8, v10

    .line 1494
    .local v8, "there":I
    iget-object v5, v13, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v6, 0x1

    aget v5, v5, v15

    const/high16 v15, 0x4000000

    and-int/2addr v5, v15

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 1495
    .local v5, "isRtl":Z
    :goto_2
    if-eqz v5, :cond_2

    const/4 v15, -0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x1

    :goto_3
    move/from16 v17, v15

    .line 1497
    .local v17, "swap":I
    if-le v8, v4, :cond_3

    .line 1498
    move v8, v4

    .line 1499
    :cond_3
    add-int/lit8 v15, v8, -0x1

    const/4 v1, 0x1

    add-int/2addr v15, v1

    .local v15, "high":I
    add-int/lit8 v16, v10, 0x1

    add-int/lit8 v16, v16, -0x1

    .local v16, "low":I
    :goto_4
    move/from16 v18, v16

    .line 1501
    .end local v16    # "low":I
    .local v18, "low":I
    move/from16 v19, v9

    move/from16 v3, v18

    sub-int v9, v15, v3

    .end local v9    # "best":I
    .end local v18    # "low":I
    .local v3, "low":I
    .local v19, "best":I
    if-le v9, v1, :cond_5

    .line 1502
    add-int v18, v15, v3

    div-int/lit8 v9, v18, 0x2

    .line 1503
    .local v9, "guess":I
    invoke-direct {v0, v9}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v1

    .line 1505
    .local v1, "adguess":I
    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v16

    move/from16 v20, v1

    move/from16 v0, v17

    int-to-float v1, v0

    .end local v1    # "adguess":I
    .end local v17    # "swap":I
    .local v0, "swap":I
    .local v20, "adguess":I
    mul-float v16, v16, v1

    int-to-float v1, v0

    mul-float v1, v1, p2

    cmpl-float v1, v16, v1

    if-ltz v1, :cond_4

    .line 1506
    move v1, v9

    .line 1510
    .end local v15    # "high":I
    .local v1, "high":I
    move v15, v1

    move/from16 v16, v3

    goto :goto_5

    .line 1508
    .end local v1    # "high":I
    .restart local v15    # "high":I
    :cond_4
    move v1, v9

    .line 1510
    .end local v3    # "low":I
    .end local v20    # "adguess":I
    .local v1, "low":I
    move/from16 v16, v1

    .line 1499
    .end local v1    # "low":I
    .restart local v16    # "low":I
    :goto_5
    move/from16 v17, v0

    move/from16 v9, v19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v3, p3

    goto :goto_4

    .line 1512
    .end local v0    # "swap":I
    .end local v9    # "guess":I
    .end local v16    # "low":I
    .restart local v3    # "low":I
    .restart local v17    # "swap":I
    :cond_5
    move/from16 v0, v17

    .end local v17    # "swap":I
    .restart local v0    # "swap":I
    add-int/lit8 v1, v10, 0x1

    if-ge v3, v1, :cond_6

    .line 1513
    add-int/lit8 v18, v10, 0x1

    .line 1515
    .end local v3    # "low":I
    .restart local v18    # "low":I
    move/from16 v3, v18

    .end local v18    # "low":I
    .restart local v3    # "low":I
    :cond_6
    if-ge v3, v8, :cond_9

    .line 1516
    sub-int v1, v3, v12

    invoke-virtual {v14, v1, v5}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v12

    .line 1517
    .local v1, "aft":I
    sub-int v9, v1, v12

    if-nez v5, :cond_7

    move/from16 v21, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "swap":I
    .local v21, "swap":I
    :goto_6
    invoke-virtual {v14, v9, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v3, v0, v12

    .line 1518
    if-lt v3, v10, :cond_a

    if-ge v3, v8, :cond_a

    .line 1519
    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1520
    .local v0, "dist":F
    if-ge v1, v8, :cond_8

    .line 1521
    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v9

    sub-float v9, v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1523
    .local v9, "other":F
    cmpg-float v16, v9, v0

    if-gez v16, :cond_8

    .line 1524
    move v0, v9

    .line 1525
    move v3, v1

    .line 1529
    .end local v9    # "other":F
    :cond_8
    cmpg-float v9, v0, v7

    if-gez v9, :cond_a

    .line 1530
    move v7, v0

    .line 1531
    move v9, v3

    .line 1536
    .end local v0    # "dist":F
    .end local v1    # "aft":I
    .end local v19    # "best":I
    .local v9, "best":I
    move/from16 v19, v9

    goto :goto_7

    .end local v9    # "best":I
    .end local v21    # "swap":I
    .local v0, "swap":I
    .restart local v19    # "best":I
    :cond_9
    move/from16 v21, v0

    .end local v0    # "swap":I
    .restart local v21    # "swap":I
    :cond_a
    :goto_7
    invoke-virtual {v2, v10}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1538
    .local v0, "dist":F
    cmpg-float v1, v0, v7

    if-gez v1, :cond_b

    .line 1539
    move v1, v0

    .line 1540
    .end local v7    # "bestdist":F
    .local v1, "bestdist":F
    move v0, v10

    .line 1491
    .end local v3    # "low":I
    .end local v5    # "isRtl":Z
    .end local v8    # "there":I
    .end local v10    # "here":I
    .end local v15    # "high":I
    .end local v19    # "best":I
    .end local v21    # "swap":I
    .local v0, "best":I
    move v9, v0

    move v7, v1

    goto :goto_8

    .end local v0    # "best":I
    .end local v1    # "bestdist":F
    .restart local v7    # "bestdist":F
    .restart local v19    # "best":I
    :cond_b
    move/from16 v9, v19

    .end local v19    # "best":I
    .restart local v9    # "best":I
    :goto_8
    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1544
    .end local v6    # "i":I
    :cond_c
    move/from16 v19, v9

    .end local v9    # "best":I
    .restart local v19    # "best":I
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1546
    .local v0, "dist":F
    cmpg-float v1, v0, v7

    if-gtz v1, :cond_d

    .line 1547
    move v9, v4

    .end local v19    # "best":I
    .restart local v9    # "best":I
    goto :goto_9

    .line 1550
    .end local v9    # "best":I
    .restart local v19    # "best":I
    :cond_d
    move/from16 v9, v19

    .end local v19    # "best":I
    .restart local v9    # "best":I
    :goto_9
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1551
    return v9
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1679
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1683
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 749
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 5
    .param p1, "line"    # I

    .line 1993
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1995
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1997
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1998
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    .line 1997
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 2001
    .local v2, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    .line 2002
    .local v3, "spanLength":I
    if-lez v3, :cond_0

    .line 2003
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 2007
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "spanLength":I
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2014
    const/4 v0, 0x0

    .line 2015
    .local v0, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2016
    .local v1, "dir":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2019
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 2017
    :cond_1
    :goto_0
    return v0
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2026
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2027
    .local v0, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2028
    .local v1, "dir":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2031
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 2029
    :cond_1
    :goto_0
    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 1123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1132
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1133
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .locals 10
    .param p1, "offset"    # I

    .line 989
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 990
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 991
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 994
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 995
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 996
    .local v4, "lineStart":I
    move v5, v3

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 997
    aget v6, v2, v5

    add-int/2addr v6, v4

    .line 998
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 999
    .local v7, "limit":I
    if-lt p1, v6, :cond_1

    if-ge p1, v7, :cond_1

    .line 1000
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 996
    .end local v6    # "start":I
    .end local v7    # "limit":I
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1004
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    .line 992
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 1142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1151
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1152
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1931
    if-ne v0, v1, :cond_0

    .line 1932
    return-void

    .line 1935
    :cond_0
    if-ge v1, v0, :cond_1

    .line 1936
    move v2, v1

    .line 1937
    .local v2, "temp":I
    move v1, v0

    .line 1938
    .end local p2    # "end":I
    .local v1, "end":I
    move v0, v2

    .line 1941
    .end local v1    # "end":I
    .end local v2    # "temp":I
    .end local p1    # "start":I
    .local v8, "start":I
    .local v9, "end":I
    :cond_1
    move v8, v0

    move v9, v1

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1942
    .local v10, "startline":I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 1944
    .local v11, "endline":I
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 1945
    .local v12, "top":I
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 1947
    .local v13, "bottom":I
    if-ne v10, v11, :cond_2

    .line 1948
    move-object v0, v7

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_3

    .line 1950
    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v14, v0

    .line 1952
    .local v14, "width":F
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 1953
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 1952
    move-object v0, v7

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 1955
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_3

    .line 1956
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_0

    .line 1959
    :cond_3
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 1963
    :goto_0
    add-int/lit8 v0, v10, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v11, :cond_5

    .line 1964
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 1965
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 1966
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v15, :cond_4

    .line 1967
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    .line 1969
    :cond_4
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 1963
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1973
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 1974
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 1976
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object v0, v7

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 1978
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v15, :cond_6

    .line 1979
    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    .line 1982
    :cond_6
    const/16 v16, 0x0

    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v18

    int-to-float v1, v13

    const/16 v20, 0x1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v19, v1

    invoke-interface/range {v15 .. v20}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 1986
    .end local v14    # "width":F
    :goto_3
    return-void
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 1914
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1915
    new-instance v0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;

    invoke-direct {v0, p3}, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 1917
    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    .line 816
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .line 809
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 740
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 824
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .line 756
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .line 773
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    .line 777
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 778
    return-void

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLevelBoundary(I)Z
    .locals 10
    .param p1, "offset"    # I

    .line 930
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 931
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 932
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 936
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 937
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 938
    .local v4, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 939
    .local v5, "lineEnd":I
    const/4 v6, 0x1

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_1

    goto :goto_1

    .line 945
    :cond_1
    sub-int/2addr p1, v4

    .line 946
    move v7, v3

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 947
    aget v8, v2, v7

    if-ne p1, v8, :cond_2

    .line 948
    return v6

    .line 946
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 951
    .end local v7    # "i":I
    :cond_3
    return v3

    .line 940
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v6

    .line 941
    .local v7, "paraLevel":I
    :goto_2
    if-ne p1, v4, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    .line 942
    .local v8, "runIndex":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_7

    move v3, v6

    nop

    :cond_7
    return v3

    .line 933
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v7    # "paraLevel":I
    .end local v8    # "runIndex":I
    :cond_8
    :goto_4
    return v3
.end method

.method public isRtlCharAt(I)Z
    .locals 11
    .param p1, "offset"    # I

    .line 960
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 961
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 962
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 963
    return v3

    .line 965
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 966
    return v4

    .line 968
    :cond_1
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 969
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 970
    .local v5, "lineStart":I
    move v6, v3

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    .line 971
    aget v7, v2, v6

    add-int/2addr v7, v5

    .line 972
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 973
    .local v8, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    .line 974
    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    .line 975
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v3, v4

    nop

    :cond_2
    return v3

    .line 970
    .end local v7    # "start":I
    .end local v8    # "limit":I
    .end local v9    # "level":I
    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 979
    .end local v6    # "i":I
    :cond_4
    return v3
.end method

.method protected final isSpanned()Z
    .locals 1

    .line 2228
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .line 282
    if-ltz p3, :cond_0

    .line 286
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 287
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 288
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 289
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 290
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 291
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 292
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 293
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setJustificationMode(I)V
    .locals 0
    .param p1, "justificationMode"    # I

    .line 273
    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 274
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1777
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1783
    return v2

    .line 1781
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1779
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
