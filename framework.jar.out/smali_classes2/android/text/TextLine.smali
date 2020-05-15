.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mComputed:Landroid/text/PrecomputedText;

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 70
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 71
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 73
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 75
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 78
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$1;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "hyphenEdit"    # I

    .line 1034
    move v0, p3

    .line 1036
    .local v0, "result":I
    if-lez p1, :cond_0

    .line 1037
    and-int/lit8 v0, v0, -0x19

    .line 1039
    :cond_0
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, v1, :cond_1

    .line 1040
    and-int/lit8 v0, v0, -0x8

    .line 1042
    :cond_1
    return v0
.end method

.method private countStretchableSpaces(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "count":I
    move v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "count":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1292
    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1293
    .local v2, "c":C
    :goto_1
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    add-int/lit8 v1, v1, 0x1

    .line 1291
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .line 502
    move-object/from16 v12, p0

    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v13, p4

    if-ne v1, v13, :cond_1

    .line 503
    const/4 v5, 0x0

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move v4, v13

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v14, v0

    .line 504
    .local v14, "w":F
    add-float v6, p5, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v5, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 506
    return v14

    .line 509
    .end local v14    # "w":F
    :cond_1
    const/4 v10, 0x0

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 13
    .param p0, "wp"    # Landroid/text/TextPaint;
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "position"    # F
    .param p4, "thickness"    # F
    .param p5, "xleft"    # F
    .param p6, "xright"    # F
    .param p7, "baseline"    # F

    move-object v6, p0

    .line 820
    iget v0, v6, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v7, v0, p3

    .line 822
    .local v7, "strokeTop":F
    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    .line 823
    .local v8, "previousColor":I
    invoke-virtual {v6}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    .line 824
    .local v9, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v6}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v10

    .line 826
    .local v10, "previousAntiAlias":Z
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 827
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 829
    move v11, p2

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 830
    add-float v4, v7, p4

    move-object v0, p1

    move/from16 v1, p5

    move v2, v7

    move/from16 v3, p6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 832
    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 833
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 834
    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 835
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    move-object/from16 v0, p0

    .line 1258
    move/from16 v11, p9

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    .line 1259
    sub-int v12, p4, p3

    .line 1260
    .local v12, "count":I
    sub-int v13, p6, p5

    .line 1261
    .local v13, "contextCount":I
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v11

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1263
    .end local v12    # "count":I
    .end local v13    # "contextCount":I
    goto :goto_0

    .line 1264
    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    .line 1265
    .local v1, "delta":I
    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v14, v1, p3

    add-int v15, v1, p4

    add-int v16, v1, p5

    add-int v17, v1, p6

    int-to-float v3, v11

    move-object/from16 v12, p1

    move-object v13, v2

    move/from16 v18, p8

    move/from16 v19, v3

    move/from16 v20, p7

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 1268
    .end local v1    # "delta":I
    :goto_0
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 11
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .line 797
    iget v6, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 798
    .local v6, "previousTop":I
    iget v7, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 799
    .local v7, "previousAscent":I
    iget v8, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 800
    .local v8, "previousDescent":I
    iget v9, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 801
    .local v9, "previousBottom":I
    iget v10, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 803
    .local v10, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 805
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 807
    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "info"    # Landroid/text/TextLine$DecorationInfo;

    .line 1069
    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1070
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 1073
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1074
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1077
    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1078
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 1079
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 1080
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 18
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    move-object/from16 v0, p0

    move/from16 v8, p5

    .line 729
    if-ltz p1, :cond_b

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne v8, v2, :cond_1

    goto/16 :goto_9

    .line 739
    :cond_1
    iget-object v13, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 740
    .local v13, "wp":Landroid/text/TextPaint;
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 741
    iget v2, v0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 743
    move/from16 v2, p2

    .line 745
    .local v2, "spanStart":I
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_2

    .line 746
    move/from16 v3, p3

    .line 782
    .local v3, "spanLimit":I
    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_6

    .line 748
    .end local v3    # "spanLimit":I
    :cond_2
    if-eqz p6, :cond_3

    add-int/lit8 v3, v8, 0x1

    goto :goto_1

    :cond_3
    move v3, v8

    .line 749
    .local v3, "target":I
    :goto_1
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, p3

    .line 751
    .local v4, "limit":I
    :goto_2
    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v2

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v5, v6, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v5, v6

    .line 753
    .local v5, "spanLimit":I
    if-lt v5, v3, :cond_a

    .line 754
    nop

    .line 759
    iget-object v6, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v5

    const-class v10, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, v7, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    .line 761
    .local v6, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v7, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v6, v7, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    .line 763
    array-length v7, v6

    if-lez v7, :cond_7

    .line 764
    const/4 v7, 0x0

    .line 765
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    move-object v9, v7

    move v7, v1

    .local v7, "j":I
    .local v9, "replacement":Landroid/text/style/ReplacementSpan;
    :goto_3
    array-length v10, v6

    if-ge v7, v10, :cond_5

    .line 766
    aget-object v10, v6, v7

    .line 767
    .local v10, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v11, v10, Landroid/text/style/ReplacementSpan;

    if-eqz v11, :cond_4

    .line 768
    move-object v9, v10

    check-cast v9, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 770
    :cond_4
    invoke-virtual {v10, v13}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 765
    .end local v10    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 774
    .end local v7    # "j":I
    :cond_5
    if-eqz v9, :cond_7

    .line 777
    if-eqz p6, :cond_6

    move v1, v5

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    .line 782
    .end local v3    # "target":I
    .end local v4    # "limit":I
    .end local v6    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v9    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v5

    .end local v2    # "spanStart":I
    .end local v5    # "spanLimit":I
    .local v16, "spanStart":I
    .local v17, "spanLimit":I
    :goto_6
    move/from16 v5, p4

    .line 783
    .local v5, "dir":I
    if-eqz p6, :cond_8

    :goto_7
    move v7, v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x2

    goto :goto_7

    .line 784
    .local v7, "cursorOpt":I
    :goto_8
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_9

    .line 785
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, v17, v16

    move-object v1, v13

    move/from16 v3, v16

    move v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v1

    return v1

    .line 788
    :cond_9
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v1, v16

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, v17

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v1, v8

    move-object v9, v13

    move-object v6, v13

    move v13, v5

    .end local v13    # "wp":Landroid/text/TextPaint;
    .local v6, "wp":Landroid/text/TextPaint;
    move v15, v7

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    .line 756
    .end local v6    # "wp":Landroid/text/TextPaint;
    .end local v7    # "cursorOpt":I
    .end local v16    # "spanStart":I
    .end local v17    # "spanLimit":I
    .restart local v2    # "spanStart":I
    .restart local v3    # "target":I
    .restart local v4    # "limit":I
    .local v5, "spanLimit":I
    .restart local v13    # "wp":Landroid/text/TextPaint;
    :cond_a
    move-object v6, v13

    .end local v13    # "wp":Landroid/text/TextPaint;
    .restart local v6    # "wp":Landroid/text/TextPaint;
    move v2, v5

    goto/16 :goto_2

    .line 733
    .end local v2    # "spanStart":I
    .end local v3    # "target":I
    .end local v4    # "limit":I
    .end local v5    # "spanLimit":I
    .end local v6    # "wp":Landroid/text/TextPaint;
    :cond_b
    :goto_9
    if-eqz p6, :cond_c

    .line 734
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    .line 736
    :cond_c
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 17
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "offset"    # I

    move-object/from16 v0, p0

    .line 839
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    .line 840
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v1

    return v1

    .line 842
    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    .line 843
    .local v1, "delta":I
    iget-object v2, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v2, :cond_1

    .line 845
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v1, p2

    add-int v12, v1, p3

    add-int v13, v1, p4

    add-int v14, v1, p5

    add-int v16, v1, p7

    move-object/from16 v9, p1

    move/from16 v15, p6

    invoke-virtual/range {v9 .. v16}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v5

    return v5

    .line 848
    :cond_1
    iget-object v5, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v6, p2, v1

    add-int v7, p3, v1

    invoke-virtual {v5, v6, v7}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v5

    return v5
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 18
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    .line 992
    const/4 v7, 0x0

    .line 994
    .local v7, "ret":F
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, p3

    .line 995
    .local v12, "textStart":I
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v13, v1, p4

    .line 997
    .local v13, "textLimit":I
    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_1

    .line 1022
    :cond_0
    :goto_0
    move v10, v7

    goto :goto_3

    .line 998
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 999
    .local v1, "previousTop":I
    const/4 v2, 0x0

    .line 1000
    .local v2, "previousAscent":I
    const/4 v3, 0x0

    .line 1001
    .local v3, "previousDescent":I
    const/4 v4, 0x0

    .line 1002
    .local v4, "previousBottom":I
    const/4 v5, 0x0

    .line 1004
    .local v5, "previousLeading":I
    if-eqz v11, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v8, v6

    .line 1006
    .local v8, "needUpdateMetrics":Z
    if-eqz v8, :cond_3

    .line 1007
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1008
    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1009
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1010
    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1011
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1014
    .end local v1    # "previousTop":I
    .end local v2    # "previousAscent":I
    .end local v3    # "previousDescent":I
    .end local v4    # "previousBottom":I
    .end local v5    # "previousLeading":I
    .local v9, "previousTop":I
    .local v10, "previousAscent":I
    .local v14, "previousDescent":I
    .local v15, "previousBottom":I
    .local v16, "previousLeading":I
    :cond_3
    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v13

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v7, v1

    .line 1016
    if-eqz v8, :cond_0

    .line 1017
    move-object v1, v11

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .end local v8    # "needUpdateMetrics":Z
    .end local v9    # "previousTop":I
    .end local v10    # "previousAscent":I
    .end local v14    # "previousDescent":I
    .end local v15    # "previousBottom":I
    .end local v16    # "previousLeading":I
    goto :goto_0

    .line 1022
    .end local v7    # "ret":F
    .local v10, "ret":F
    :goto_3
    if-eqz p6, :cond_5

    .line 1023
    if-eqz p5, :cond_4

    .line 1024
    sub-float v1, p7, v10

    .line 1026
    .end local p7    # "x":F
    .local v1, "x":F
    move v14, v1

    goto :goto_4

    .end local v1    # "x":F
    .restart local p7    # "x":F
    :cond_4
    move/from16 v14, p7

    .end local p7    # "x":F
    .local v14, "x":F
    :goto_4
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v12

    move v5, v13

    move v6, v14

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move v0, v10

    move-object/from16 v10, p2

    .end local v10    # "ret":F
    .local v0, "ret":F
    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 1030
    move v1, v14

    goto :goto_5

    .end local v0    # "ret":F
    .end local v14    # "x":F
    .restart local v10    # "ret":F
    .restart local p7    # "x":F
    :cond_5
    move v0, v10

    move/from16 v1, p7

    .end local v10    # "ret":F
    .end local p7    # "x":F
    .restart local v0    # "ret":F
    .restart local v1    # "x":F
    :goto_5
    if-eqz p5, :cond_6

    neg-float v10, v0

    goto :goto_6

    :cond_6
    move v10, v0

    :goto_6
    return v10
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 36
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p10

    .line 1105
    if-lt v13, v14, :cond_19

    if-gt v13, v12, :cond_19

    .line 1111
    if-ne v14, v13, :cond_1

    .line 1112
    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1113
    .local v0, "wp":Landroid/text/TextPaint;
    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1114
    if-eqz v11, :cond_0

    .line 1115
    invoke-static {v11, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1117
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1121
    .end local v0    # "wp":Landroid/text/TextPaint;
    :cond_1
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v0, :cond_2

    .line 1122
    const/4 v0, 0x0

    .line 1122
    .local v0, "needsSpanMeasurement":Z
    goto :goto_1

    .line 1124
    .end local v0    # "needsSpanMeasurement":Z
    :cond_2
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1125
    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1126
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v0, v17

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v0, v16

    .restart local v0    # "needsSpanMeasurement":Z
    :goto_1
    move/from16 v18, v0

    .line 1130
    .end local v0    # "needsSpanMeasurement":Z
    .local v18, "needsSpanMeasurement":Z
    if-nez v18, :cond_5

    .line 1131
    iget-object v10, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1132
    .local v10, "wp":Landroid/text/TextPaint;
    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1133
    invoke-virtual {v10}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v15, v14, v12, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1134
    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v10

    move v2, v14

    move v3, v12

    move v4, v14

    move v5, v12

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v17, v10

    move/from16 v10, p8

    .end local v10    # "wp":Landroid/text/TextPaint;
    .local v17, "wp":Landroid/text/TextPaint;
    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    .line 1143
    .end local v17    # "wp":Landroid/text/TextPaint;
    :cond_5
    move/from16 v21, p6

    .line 1144
    .local v21, "originalX":F
    move/from16 v13, p6

    move/from16 v0, p1

    .line 1144
    .end local p6    # "x":F
    .local v0, "i":I
    .local v13, "x":F
    :goto_2
    move v15, v0

    .line 1144
    .end local v0    # "i":I
    .local v15, "i":I
    move/from16 v14, p2

    if-ge v15, v14, :cond_18

    .line 1145
    move-object/from16 v12, p0

    iget-object v11, v12, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1146
    .local v11, "wp":Landroid/text/TextPaint;
    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1148
    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v15

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    move/from16 v10, p3

    add-int/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    .line 1150
    .local v9, "inext":I
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1152
    .local v8, "mlimit":I
    const/4 v0, 0x0

    .line 1154
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    move-object/from16 v19, v0

    move/from16 v0, v17

    .line 1154
    .local v0, "j":I
    .local v19, "replacement":Landroid/text/style/ReplacementSpan;
    :goto_3
    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_9

    .line 1157
    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    if-ge v1, v2, :cond_8

    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v15

    if-gt v1, v2, :cond_6

    .line 1158
    goto :goto_4

    .line 1159
    :cond_6
    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    aget-object v1, v1, v0

    .line 1160
    .local v1, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v1, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    .line 1161
    move-object/from16 v19, v1

    check-cast v19, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 1165
    :cond_7
    invoke-virtual {v1, v11}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1154
    .end local v1    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1169
    .end local v0    # "j":I
    :cond_9
    if-eqz v19, :cond_c

    .line 1170
    if-nez p11, :cond_b

    if-ge v8, v14, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v20, v17

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v20, v16

    :goto_6
    move-object v0, v12

    move-object/from16 v1, v19

    move-object v2, v11

    move v3, v15

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    move/from16 v22, v8

    move/from16 v8, p7

    .end local v8    # "mlimit":I
    .local v22, "mlimit":I
    move/from16 v23, v9

    move/from16 v9, p8

    .line 1170
    .end local v9    # "inext":I
    .local v23, "inext":I
    move/from16 v10, p9

    move-object v14, v11

    move-object/from16 v11, p10

    .line 1170
    .end local v11    # "wp":Landroid/text/TextPaint;
    .local v14, "wp":Landroid/text/TextPaint;
    move-object/from16 v25, v14

    move-object v14, v12

    move/from16 v12, v20

    .line 1170
    .end local v14    # "wp":Landroid/text/TextPaint;
    .local v25, "wp":Landroid/text/TextPaint;
    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float/2addr v13, v0

    .line 1172
    nop

    .line 1144
    move/from16 v24, v15

    goto/16 :goto_11

    .line 1175
    .end local v22    # "mlimit":I
    .end local v23    # "inext":I
    .end local v25    # "wp":Landroid/text/TextPaint;
    .restart local v8    # "mlimit":I
    .restart local v9    # "inext":I
    .restart local v11    # "wp":Landroid/text/TextPaint;
    :cond_c
    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v25, v11

    move-object v14, v12

    .line 1175
    .end local v8    # "mlimit":I
    .end local v9    # "inext":I
    .end local v11    # "wp":Landroid/text/TextPaint;
    .restart local v22    # "mlimit":I
    .restart local v23    # "inext":I
    .restart local v25    # "wp":Landroid/text/TextPaint;
    iget-object v12, v14, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 1176
    .local v12, "activePaint":Landroid/text/TextPaint;
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1177
    move v0, v15

    .line 1178
    .local v0, "activeStart":I
    move/from16 v1, v22

    .line 1179
    .local v1, "activeEnd":I
    iget-object v11, v14, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 1180
    .local v11, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    iget-object v2, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1181
    move v10, v1

    move/from16 v20, v13

    move v13, v0

    .line 1181
    .end local v1    # "activeEnd":I
    .local v0, "j":I
    .local v10, "activeEnd":I
    .local v13, "activeStart":I
    .local v20, "x":F
    :goto_7
    move v9, v0

    .line 1181
    .end local v0    # "j":I
    .local v9, "j":I
    move/from16 v8, v22

    if-ge v9, v8, :cond_15

    .line 1182
    .end local v22    # "mlimit":I
    .restart local v8    # "mlimit":I
    iget-object v0, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v9

    iget v2, v14, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    sub-int v7, v0, v1

    .line 1185
    .local v7, "jnext":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1186
    .local v22, "offset":I
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1187
    .end local v25    # "wp":Landroid/text/TextPaint;
    .local v1, "wp":Landroid/text/TextPaint;
    move/from16 v0, v17

    .line 1187
    .local v0, "k":I
    :goto_8
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v2, :cond_f

    .line 1189
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v3, v22

    if-ge v2, v3, :cond_e

    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    if-gt v2, v3, :cond_d

    .line 1190
    goto :goto_9

    .line 1192
    :cond_d
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v0

    .line 1193
    .local v2, "span":Landroid/text/style/CharacterStyle;
    invoke-virtual {v2, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1187
    .end local v2    # "span":Landroid/text/style/CharacterStyle;
    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1196
    .end local v0    # "k":I
    :cond_f
    invoke-direct {v14, v1, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    .line 1198
    if-ne v9, v15, :cond_10

    .line 1202
    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1223
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v13

    move/from16 v24, v15

    move-object v15, v1

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    goto/16 :goto_c

    .line 1203
    :cond_10
    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1207
    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1208
    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    .line 1207
    invoke-direct {v14, v13, v10, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1209
    if-nez p11, :cond_12

    move-object v5, v1

    move/from16 v6, p2

    if-ge v10, v6, :cond_11

    .line 1209
    .end local v1    # "wp":Landroid/text/TextPaint;
    .local v5, "wp":Landroid/text/TextPaint;
    goto :goto_a

    .line 1211
    :cond_11
    move/from16 v24, v17

    goto :goto_b

    .line 1209
    .end local v5    # "wp":Landroid/text/TextPaint;
    .restart local v1    # "wp":Landroid/text/TextPaint;
    :cond_12
    move-object v5, v1

    move/from16 v6, p2

    .line 1211
    .end local v1    # "wp":Landroid/text/TextPaint;
    .restart local v5    # "wp":Landroid/text/TextPaint;
    :goto_a
    move/from16 v24, v16

    :goto_b
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v4, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    .line 1209
    move-object v0, v14

    move-object v1, v12

    move v2, v13

    move v3, v10

    move-object/from16 v26, v4

    move v4, v15

    move-object/from16 v27, v5

    move/from16 v5, v23

    .line 1209
    .end local v5    # "wp":Landroid/text/TextPaint;
    .local v27, "wp":Landroid/text/TextPaint;
    move/from16 v6, p4

    move/from16 v28, v7

    move-object/from16 v7, p5

    .line 1209
    .end local v7    # "jnext":I
    .local v28, "jnext":I
    move/from16 v29, v8

    move/from16 v8, v20

    .line 1209
    .end local v8    # "mlimit":I
    .local v29, "mlimit":I
    move/from16 v30, v9

    move/from16 v9, p7

    .line 1209
    .end local v9    # "j":I
    .local v30, "j":I
    move/from16 v31, v10

    move/from16 v10, p8

    .line 1209
    .end local v10    # "activeEnd":I
    .local v31, "activeEnd":I
    move-object/from16 v32, v11

    move/from16 v11, p9

    .line 1209
    .end local v11    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .local v32, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    move-object/from16 v33, v12

    move-object/from16 v12, p10

    .line 1209
    .end local v12    # "activePaint":Landroid/text/TextPaint;
    .local v33, "activePaint":Landroid/text/TextPaint;
    move/from16 v34, v13

    move/from16 v13, v24

    .line 1209
    .end local v13    # "activeStart":I
    .local v34, "activeStart":I
    move/from16 v14, v25

    move/from16 v24, v15

    move-object/from16 v15, v26

    .line 1209
    .end local v15    # "i":I
    .local v24, "i":I
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v20, v20, v0

    .line 1213
    move/from16 v13, v30

    .line 1214
    .end local v34    # "activeStart":I
    .restart local v13    # "activeStart":I
    move-object/from16 v15, v27

    move-object/from16 v14, v33

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1215
    .end local v27    # "wp":Landroid/text/TextPaint;
    .end local v33    # "activePaint":Landroid/text/TextPaint;
    .local v14, "activePaint":Landroid/text/TextPaint;
    .local v15, "wp":Landroid/text/TextPaint;
    move-object/from16 v12, p0

    iget-object v0, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_d

    .line 1223
    .end local v14    # "activePaint":Landroid/text/TextPaint;
    .end local v24    # "i":I
    .end local v28    # "jnext":I
    .end local v29    # "mlimit":I
    .end local v30    # "j":I
    .end local v31    # "activeEnd":I
    .end local v32    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v1    # "wp":Landroid/text/TextPaint;
    .restart local v7    # "jnext":I
    .restart local v8    # "mlimit":I
    .restart local v9    # "j":I
    .restart local v10    # "activeEnd":I
    .restart local v11    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v12    # "activePaint":Landroid/text/TextPaint;
    .local v15, "i":I
    :cond_13
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v13

    move/from16 v24, v15

    move-object v15, v1

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    :goto_c
    move/from16 v13, v34

    .end local v1    # "wp":Landroid/text/TextPaint;
    .end local v7    # "jnext":I
    .end local v8    # "mlimit":I
    .end local v9    # "j":I
    .end local v10    # "activeEnd":I
    .end local v11    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v12    # "activePaint":Landroid/text/TextPaint;
    .restart local v14    # "activePaint":Landroid/text/TextPaint;
    .local v15, "wp":Landroid/text/TextPaint;
    .restart local v24    # "i":I
    .restart local v28    # "jnext":I
    .restart local v29    # "mlimit":I
    .restart local v30    # "j":I
    .restart local v31    # "activeEnd":I
    .restart local v32    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    :goto_d
    move/from16 v10, v28

    .line 1224
    .end local v31    # "activeEnd":I
    .restart local v10    # "activeEnd":I
    move-object/from16 v11, v32

    invoke-virtual {v11}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v0

    .line 1224
    .end local v32    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v11    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    if-eqz v0, :cond_14

    .line 1225
    invoke-virtual {v11}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v0

    .line 1226
    .local v0, "copy":Landroid/text/TextLine$DecorationInfo;
    move/from16 v1, v30

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1227
    .end local v30    # "j":I
    .local v1, "j":I
    move/from16 v2, v28

    iput v2, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 1228
    .end local v28    # "jnext":I
    .local v2, "jnext":I
    iget-object v3, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    .end local v0    # "copy":Landroid/text/TextLine$DecorationInfo;
    .end local v22    # "offset":I
    goto :goto_e

    .line 1181
    .end local v1    # "j":I
    .end local v2    # "jnext":I
    .restart local v28    # "jnext":I
    .restart local v30    # "j":I
    :cond_14
    move/from16 v2, v28

    move/from16 v1, v30

    .line 1181
    .end local v28    # "jnext":I
    .end local v30    # "j":I
    .restart local v1    # "j":I
    .restart local v2    # "jnext":I
    :goto_e
    move v0, v2

    .line 1181
    .end local v1    # "j":I
    .local v0, "j":I
    move-object/from16 v25, v15

    move/from16 v15, v24

    move/from16 v22, v29

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    goto/16 :goto_7

    .line 1232
    .end local v0    # "j":I
    .end local v2    # "jnext":I
    .end local v14    # "activePaint":Landroid/text/TextPaint;
    .end local v24    # "i":I
    .end local v29    # "mlimit":I
    .restart local v8    # "mlimit":I
    .restart local v12    # "activePaint":Landroid/text/TextPaint;
    .local v15, "i":I
    .restart local v25    # "wp":Landroid/text/TextPaint;
    :cond_15
    move/from16 v29, v8

    move/from16 v31, v10

    move/from16 v34, v13

    move/from16 v24, v15

    move-object/from16 v15, v25

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    .line 1232
    .end local v8    # "mlimit":I
    .end local v10    # "activeEnd":I
    .end local v12    # "activePaint":Landroid/text/TextPaint;
    .end local v13    # "activeStart":I
    .end local v25    # "wp":Landroid/text/TextPaint;
    .restart local v14    # "activePaint":Landroid/text/TextPaint;
    .local v15, "wp":Landroid/text/TextPaint;
    .restart local v24    # "i":I
    .restart local v29    # "mlimit":I
    .restart local v31    # "activeEnd":I
    .restart local v34    # "activeStart":I
    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1233
    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    .line 1232
    invoke-direct {v12, v13, v10, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    .line 1232
    .end local v31    # "activeEnd":I
    .end local v34    # "activeStart":I
    .restart local v10    # "activeEnd":I
    .restart local v13    # "activeStart":I
    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1234
    if-nez p11, :cond_17

    move/from16 v9, p2

    if-ge v10, v9, :cond_16

    goto :goto_f

    .line 1236
    :cond_16
    move/from16 v22, v17

    goto :goto_10

    .line 1234
    :cond_17
    move/from16 v9, p2

    .line 1236
    :goto_f
    move/from16 v22, v16

    :goto_10
    move/from16 v8, v29

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1236
    .end local v29    # "mlimit":I
    .restart local v8    # "mlimit":I
    iget-object v7, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    .line 1234
    move-object v0, v12

    move-object v1, v14

    move v2, v13

    move v3, v10

    move/from16 v4, v24

    move/from16 v5, v23

    move/from16 v6, p4

    move-object/from16 v26, v7

    move-object/from16 v7, p5

    move/from16 v27, v8

    move/from16 v8, v20

    .end local v8    # "mlimit":I
    .local v27, "mlimit":I
    move/from16 v9, p7

    move/from16 v28, v10

    move/from16 v10, p8

    .line 1234
    .end local v10    # "activeEnd":I
    .local v28, "activeEnd":I
    move-object/from16 v29, v11

    move/from16 v11, p9

    .line 1234
    .end local v11    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .local v29, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    move-object/from16 v12, p10

    move/from16 v30, v13

    move/from16 v13, v22

    .line 1234
    .end local v13    # "activeStart":I
    .local v30, "activeStart":I
    move-object/from16 v22, v14

    move/from16 v14, v25

    .line 1234
    .end local v14    # "activePaint":Landroid/text/TextPaint;
    .local v22, "activePaint":Landroid/text/TextPaint;
    move-object/from16 v25, v15

    move-object/from16 v15, v26

    .line 1234
    .end local v15    # "wp":Landroid/text/TextPaint;
    .restart local v25    # "wp":Landroid/text/TextPaint;
    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v20, v20, v0

    .line 1144
    .end local v19    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v22    # "activePaint":Landroid/text/TextPaint;
    .end local v25    # "wp":Landroid/text/TextPaint;
    .end local v27    # "mlimit":I
    .end local v28    # "activeEnd":I
    .end local v29    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v30    # "activeStart":I
    move/from16 v13, v20

    .line 1144
    .end local v20    # "x":F
    .local v13, "x":F
    :goto_11
    move/from16 v0, v23

    .line 1144
    .end local v24    # "i":I
    .local v0, "i":I
    goto/16 :goto_2

    .line 1239
    .end local v0    # "i":I
    .end local v23    # "inext":I
    :cond_18
    sub-float v0, v13, v21

    return v0

    .line 1106
    .end local v13    # "x":F
    .end local v18    # "needsSpanMeasurement":Z
    .end local v21    # "originalX":F
    .restart local p6    # "x":F
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and limit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") bounds"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 26
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z
    .param p14, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    .local p15, "decorations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextLine$DecorationInfo;>;"
    move-object/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p10

    move-object/from16 v12, p12

    .line 879
    move-object/from16 v11, p15

    move-object/from16 v10, p0

    iget v0, v10, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 881
    if-eqz v12, :cond_0

    .line 882
    invoke-static {v12, v15}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 886
    :cond_0
    move/from16 v9, p3

    if-ne v9, v14, :cond_1

    .line 887
    const/4 v0, 0x0

    return v0

    .line 890
    :cond_1
    const/4 v8, 0x0

    .line 892
    .local v8, "totalWidth":F
    const/16 v16, 0x0

    if-nez v11, :cond_2

    move/from16 v0, v16

    goto :goto_0

    :cond_2
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v7, v0

    .line 893
    .local v7, "numDecorations":I
    if-nez p13, :cond_4

    if-eqz p7, :cond_3

    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    .line 897
    :cond_3
    move v12, v7

    goto :goto_2

    .line 894
    :cond_4
    :goto_1
    move-object v0, v10

    move-object v1, v15

    move v2, v14

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v12, v7

    move/from16 v7, p14

    .end local v7    # "numDecorations":I
    .local v12, "numDecorations":I
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v8

    .line 897
    :goto_2
    if-eqz p7, :cond_c

    .line 899
    if-eqz p6, :cond_5

    .line 900
    sub-float v0, p8, v8

    .line 901
    .local v0, "leftX":F
    move/from16 v1, p8

    .line 904
    .end local v0    # "leftX":F
    .local v1, "rightX":F
    .local v18, "leftX":F
    :goto_3
    move/from16 v18, v0

    goto :goto_4

    .line 903
    .end local v1    # "rightX":F
    .end local v18    # "leftX":F
    :cond_5
    move/from16 v0, p8

    .line 904
    .restart local v0    # "leftX":F
    add-float v1, p8, v8

    goto :goto_3

    .end local v0    # "leftX":F
    .restart local v1    # "rightX":F
    .restart local v18    # "leftX":F
    :goto_4
    move/from16 v19, v1

    .line 907
    .end local v1    # "rightX":F
    .local v19, "rightX":F
    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_6

    .line 908
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 909
    .local v6, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 911
    .local v7, "previousStyle":Landroid/graphics/Paint$Style;
    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 912
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 913
    move/from16 v5, p9

    int-to-float v2, v5

    move/from16 v4, p11

    int-to-float v3, v4

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v20, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 915
    invoke-virtual {v15, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 916
    invoke-virtual {v15, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 919
    .end local v6    # "previousColor":I
    .end local v7    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_6
    if-eqz v12, :cond_b

    .line 920
    nop

    .local v16, "i":I
    :goto_5
    move/from16 v7, v16

    .end local v16    # "i":I
    .local v7, "i":I
    if-ge v7, v12, :cond_b

    .line 921
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/text/TextLine$DecorationInfo;

    .line 923
    .local v6, "info":Landroid/text/TextLine$DecorationInfo;
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 924
    .local v16, "decorationStart":I
    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 925
    .local v20, "decorationEnd":I
    move-object v0, v10

    move-object v1, v15

    move v2, v14

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v21, v12

    move-object v12, v6

    move/from16 v6, p6

    .end local v6    # "info":Landroid/text/TextLine$DecorationInfo;
    .local v12, "info":Landroid/text/TextLine$DecorationInfo;
    .local v21, "numDecorations":I
    move/from16 v22, v7

    move/from16 v7, v16

    .end local v7    # "i":I
    .local v22, "i":I
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v23

    .line 927
    .local v23, "decorationStartAdvance":F
    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v24

    .line 930
    .local v24, "decorationEndAdvance":F
    if-eqz p6, :cond_7

    .line 931
    sub-float v0, v19, v24

    .line 932
    .local v0, "decorationXLeft":F
    sub-float v1, v19, v23

    .line 935
    .end local v0    # "decorationXLeft":F
    .local v6, "decorationXRight":F
    .local v25, "decorationXLeft":F
    :goto_6
    move/from16 v25, v0

    move v6, v1

    goto :goto_7

    .line 934
    .end local v6    # "decorationXRight":F
    .end local v25    # "decorationXLeft":F
    :cond_7
    add-float v0, v18, v23

    .line 935
    .restart local v0    # "decorationXLeft":F
    add-float v1, v18, v24

    goto :goto_6

    .line 941
    .end local v0    # "decorationXLeft":F
    .restart local v6    # "decorationXRight":F
    .restart local v25    # "decorationXLeft":F
    :goto_7
    iget v0, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_8

    .line 942
    iget v2, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v12, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v13

    move-object v0, v15

    move-object/from16 v1, p7

    move/from16 v5, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 945
    :cond_8
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 946
    nop

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 948
    .local v0, "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v4, v13

    move-object v7, v15

    move v5, v8

    move-object/from16 v8, p7

    .end local v8    # "totalWidth":F
    .local v5, "totalWidth":F
    move v9, v2

    move v10, v3

    move v11, v0

    move-object v2, v12

    move/from16 v17, v21

    move/from16 v12, v25

    .end local v12    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v21    # "numDecorations":I
    .local v2, "info":Landroid/text/TextLine$DecorationInfo;
    .local v17, "numDecorations":I
    move v3, v13

    move v13, v6

    move v14, v4

    invoke-static/range {v7 .. v14}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .end local v0    # "thickness":F
    goto :goto_8

    .line 952
    .end local v2    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v5    # "totalWidth":F
    .end local v17    # "numDecorations":I
    .restart local v8    # "totalWidth":F
    .restart local v12    # "info":Landroid/text/TextLine$DecorationInfo;
    .restart local v21    # "numDecorations":I
    :cond_9
    move v5, v8

    move-object v2, v12

    move v3, v13

    move/from16 v17, v21

    .end local v8    # "totalWidth":F
    .end local v12    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v21    # "numDecorations":I
    .restart local v2    # "info":Landroid/text/TextLine$DecorationInfo;
    .restart local v5    # "totalWidth":F
    .restart local v17    # "numDecorations":I
    :goto_8
    iget-boolean v0, v2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_a

    .line 953
    nop

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 955
    .restart local v0    # "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v10

    int-to-float v14, v3

    move-object v7, v15

    move-object/from16 v8, p7

    move v11, v0

    move/from16 v12, v25

    move v13, v6

    invoke-static/range {v7 .. v14}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 920
    .end local v0    # "thickness":F
    .end local v2    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v6    # "decorationXRight":F
    .end local v16    # "decorationStart":I
    .end local v20    # "decorationEnd":I
    .end local v23    # "decorationStartAdvance":F
    .end local v24    # "decorationEndAdvance":F
    .end local v25    # "decorationXLeft":F
    :cond_a
    add-int/lit8 v16, v22, 0x1

    .end local v22    # "i":I
    .local v16, "i":I
    move-object/from16 v10, p0

    move/from16 v14, p2

    move/from16 v9, p3

    move-object/from16 v11, p15

    move v13, v3

    move v8, v5

    move/from16 v12, v17

    goto/16 :goto_5

    .line 961
    .end local v5    # "totalWidth":F
    .end local v16    # "i":I
    .end local v17    # "numDecorations":I
    .restart local v8    # "totalWidth":F
    .local v12, "numDecorations":I
    :cond_b
    move v5, v8

    move/from16 v17, v12

    move v3, v13

    .end local v8    # "totalWidth":F
    .end local v12    # "numDecorations":I
    .restart local v5    # "totalWidth":F
    .restart local v17    # "numDecorations":I
    iget v0, v15, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object v2, v15

    move/from16 v3, p2

    move/from16 v4, p3

    move v10, v5

    move/from16 v5, p4

    .end local v5    # "totalWidth":F
    .local v10, "totalWidth":F
    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .end local v18    # "leftX":F
    .end local v19    # "rightX":F
    goto :goto_9

    .line 965
    .end local v10    # "totalWidth":F
    .end local v17    # "numDecorations":I
    .restart local v8    # "totalWidth":F
    .restart local v12    # "numDecorations":I
    :cond_c
    move v10, v8

    move/from16 v17, v12

    .end local v8    # "totalWidth":F
    .end local v12    # "numDecorations":I
    .restart local v10    # "totalWidth":F
    .restart local v17    # "numDecorations":I
    :goto_9
    if-eqz p6, :cond_d

    neg-float v8, v10

    goto :goto_a

    :cond_d
    move v8, v10

    :goto_a
    return v8
.end method

.method public static isLineEndSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 1302
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isStretchableWhitespace(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 1285
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 528
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 91
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 93
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    .line 95
    .local v2, "tl":Landroid/text/TextLine;
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 96
    monitor-exit v0

    return-object v2

    .line 99
    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    .line 104
    .local v0, "tl":Landroid/text/TextLine;
    return-object v0

    .line 99
    .end local v0    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 117
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 118
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 119
    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 120
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 121
    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 122
    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 124
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 125
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 126
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 128
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 130
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 131
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    .line 132
    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v1

    .line 136
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .line 811
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 812
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 813
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 814
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 815
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 816
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    move-object/from16 v10, p0

    .line 242
    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_1

    .line 243
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    .line 244
    const/4 v2, 0x0

    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_1

    .line 248
    const/4 v2, 0x0

    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 249
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x0

    .line 254
    .local v0, "h":F
    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 256
    .local v11, "runs":[I
    array-length v1, v11

    add-int/lit8 v12, v1, -0x2

    .line 257
    .local v12, "lastRunIndex":I
    move v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "h":F
    :goto_0
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    array-length v0, v11

    if-ge v14, v0, :cond_c

    .line 258
    aget v15, v11, v14

    .line 259
    .local v15, "runStart":I
    add-int/lit8 v0, v14, 0x1

    aget v0, v11, v0

    const v2, 0x3ffffff

    and-int/2addr v0, v2

    add-int/2addr v0, v15

    .line 260
    .local v0, "runLimit":I
    iget v2, v10, Landroid/text/TextLine;->mLen:I

    if-le v0, v2, :cond_2

    .line 261
    iget v0, v10, Landroid/text/TextLine;->mLen:I

    .line 263
    .end local v0    # "runLimit":I
    .local v9, "runLimit":I
    :cond_2
    move v9, v0

    add-int/lit8 v0, v14, 0x1

    aget v0, v11, v0

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    const/16 v16, 0x1

    if-eqz v0, :cond_3

    move/from16 v4, v16

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 265
    .local v4, "runIsRtl":Z
    :goto_1
    move v0, v15

    .line 266
    .local v0, "segstart":I
    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move v2, v15

    goto :goto_2

    :cond_4
    move v2, v9

    :goto_2
    move/from16 v17, v0

    move/from16 v18, v1

    .end local v0    # "segstart":I
    .end local v1    # "h":F
    .local v2, "j":I
    .local v17, "segstart":I
    .local v18, "h":F
    :goto_3
    move v8, v2

    .end local v2    # "j":I
    .local v8, "j":I
    if-gt v8, v9, :cond_b

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "codept":I
    iget-boolean v1, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    if-ge v8, v9, :cond_5

    .line 269
    iget-object v1, v10, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v1, v8

    .line 270
    const v1, 0xd800

    if-lt v0, v1, :cond_5

    const v1, 0xdc00

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v8, 0x1

    if-ge v1, v9, :cond_5

    .line 271
    iget-object v1, v10, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 272
    const v1, 0xffff

    if-le v0, v1, :cond_5

    .line 273
    add-int/lit8 v8, v8, 0x1

    .line 274
    goto :goto_4

    .line 279
    :cond_5
    move v7, v0

    .end local v0    # "codept":I
    .local v7, "codept":I
    const/16 v6, 0x9

    if-eq v8, v9, :cond_7

    if-ne v7, v6, :cond_6

    goto :goto_5

    .line 266
    .end local v7    # "codept":I
    .end local v9    # "runLimit":I
    .local v21, "runLimit":I
    :cond_6
    :goto_4
    move/from16 v21, v9

    goto :goto_8

    .line 280
    .end local v21    # "runLimit":I
    .restart local v7    # "codept":I
    .restart local v9    # "runLimit":I
    :cond_7
    :goto_5
    add-float v5, p2, v18

    if-ne v14, v12, :cond_9

    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v8, v0, :cond_8

    goto :goto_6

    :cond_8
    const/16 v19, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v19, v16

    :goto_7
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v8

    move v13, v6

    move/from16 v6, p3

    move v13, v7

    move/from16 v7, p4

    .end local v7    # "codept":I
    .local v13, "codept":I
    move/from16 v20, v8

    move/from16 v8, p5

    .end local v8    # "j":I
    .local v20, "j":I
    move/from16 v21, v9

    move/from16 v9, v19

    .end local v9    # "runLimit":I
    .restart local v21    # "runLimit":I
    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v18, v18, v0

    .line 283
    const/16 v0, 0x9

    if-ne v13, v0, :cond_a

    .line 284
    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v18

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 286
    .end local v18    # "h":F
    .local v0, "h":F
    move/from16 v18, v0

    .end local v0    # "h":F
    .restart local v18    # "h":F
    :cond_a
    add-int/lit8 v17, v20, 0x1

    .line 266
    .end local v13    # "codept":I
    move/from16 v8, v20

    .end local v20    # "j":I
    .restart local v8    # "j":I
    :goto_8
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "j":I
    .restart local v2    # "j":I
    move/from16 v9, v21

    goto :goto_3

    .line 257
    .end local v2    # "j":I
    .end local v4    # "runIsRtl":Z
    .end local v15    # "runStart":I
    .end local v17    # "segstart":I
    .end local v21    # "runLimit":I
    :cond_b
    add-int/lit8 v0, v14, 0x2

    .end local v14    # "i":I
    .local v0, "i":I
    move/from16 v1, v18

    goto/16 :goto_0

    .line 290
    .end local v0    # "i":I
    .end local v18    # "h":F
    .restart local v1    # "h":F
    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 27
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 561
    move/from16 v9, p2

    const/4 v10, 0x0

    .line 562
    .local v10, "lineStart":I
    iget v11, v7, Landroid/text/TextLine;->mLen:I

    .line 563
    .local v11, "lineEnd":I
    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    .line 564
    .local v15, "paraIsRtl":Z
    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 566
    .local v6, "runs":[I
    const/4 v0, 0x0

    .local v0, "runLevel":I
    move v1, v10

    .local v1, "runStart":I
    move v2, v11

    .local v2, "runLimit":I
    const/16 v16, -0x1

    .line 567
    .local v16, "newCaret":I
    const/4 v3, 0x0

    .line 569
    .local v3, "trailing":Z
    const v17, 0x3ffffff

    if-ne v8, v10, :cond_1

    .line 570
    const/4 v4, -0x2

    .line 648
    .end local v0    # "runLevel":I
    .end local v1    # "runStart":I
    .end local v2    # "runLimit":I
    .end local v3    # "trailing":Z
    .end local v6    # "runs":[I
    .local v4, "runIndex":I
    .local v8, "runs":[I
    .local v12, "runIndex":I
    .local v13, "newCaret":I
    .local v14, "runLevel":I
    .local v16, "runLimit":I
    .local v18, "runStart":I
    .local v21, "trailing":Z
    :goto_1
    move v14, v0

    move/from16 v18, v1

    move/from16 v21, v3

    move v12, v4

    move-object v8, v6

    move/from16 v13, v16

    move/from16 v16, v2

    goto/16 :goto_d

    .line 571
    .end local v4    # "runIndex":I
    .end local v8    # "runs":[I
    .end local v12    # "runIndex":I
    .end local v13    # "newCaret":I
    .end local v14    # "runLevel":I
    .end local v18    # "runStart":I
    .end local v21    # "trailing":Z
    .restart local v0    # "runLevel":I
    .restart local v1    # "runStart":I
    .restart local v2    # "runLimit":I
    .restart local v3    # "trailing":Z
    .restart local v6    # "runs":[I
    .local v16, "newCaret":I
    :cond_1
    if-ne v8, v11, :cond_2

    .line 572
    array-length v4, v6

    goto :goto_1

    .line 576
    :cond_2
    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .local v1, "runIndex":I
    .local v2, "runStart":I
    .local v4, "runLimit":I
    :goto_2
    array-length v5, v6

    if-ge v1, v5, :cond_b

    .line 577
    aget v5, v6, v1

    add-int v2, v10, v5

    .line 578
    if-lt v8, v2, :cond_a

    .line 579
    add-int/lit8 v5, v1, 0x1

    aget v5, v6, v5

    and-int v5, v5, v17

    add-int/2addr v5, v2

    .line 580
    .end local v4    # "runLimit":I
    .local v5, "runLimit":I
    if-le v5, v11, :cond_3

    .line 581
    move v5, v11

    .line 583
    :cond_3
    if-ge v8, v5, :cond_9

    .line 584
    add-int/lit8 v4, v1, 0x1

    aget v4, v6, v4

    ushr-int/lit8 v4, v4, 0x1a

    and-int/lit8 v0, v4, 0x3f

    .line 586
    if-ne v8, v2, :cond_8

    .line 591
    add-int/lit8 v4, v8, -0x1

    .line 592
    .local v4, "pos":I
    const/16 v18, 0x0

    .local v18, "prevRunIndex":I
    :goto_3
    move/from16 v19, v18

    .end local v18    # "prevRunIndex":I
    .local v19, "prevRunIndex":I
    array-length v13, v6

    move/from16 v14, v19

    if-ge v14, v13, :cond_7

    .line 593
    .end local v19    # "prevRunIndex":I
    .local v14, "prevRunIndex":I
    aget v13, v6, v14

    add-int/2addr v13, v10

    .line 594
    .local v13, "prevRunStart":I
    if-lt v4, v13, :cond_5

    .line 595
    add-int/lit8 v19, v14, 0x1

    aget v18, v6, v19

    and-int v18, v18, v17

    add-int v12, v13, v18

    .line 597
    .local v12, "prevRunLimit":I
    if-le v12, v11, :cond_4

    .line 598
    move v12, v11

    .line 600
    :cond_4
    if-ge v4, v12, :cond_5

    .line 601
    add-int/lit8 v19, v14, 0x1

    aget v18, v6, v19

    ushr-int/lit8 v18, v18, 0x1a

    move/from16 v20, v2

    and-int/lit8 v2, v18, 0x3f

    .line 603
    .local v2, "prevRunLevel":I
    .local v20, "runStart":I
    if-ge v2, v0, :cond_6

    .line 605
    move v1, v14

    .line 606
    move v0, v2

    .line 607
    move/from16 v18, v13

    .line 608
    .end local v20    # "runStart":I
    .local v18, "runStart":I
    move v5, v12

    .line 609
    const/4 v3, 0x1

    .line 610
    goto :goto_4

    .line 592
    .end local v12    # "prevRunLimit":I
    .end local v18    # "runStart":I
    .local v2, "runStart":I
    :cond_5
    move/from16 v20, v2

    .end local v2    # "runStart":I
    .restart local v20    # "runStart":I
    :cond_6
    add-int/lit8 v18, v14, 0x2

    .end local v14    # "prevRunIndex":I
    .local v18, "prevRunIndex":I
    move/from16 v2, v20

    const/4 v12, -0x1

    goto :goto_3

    .line 615
    .end local v4    # "pos":I
    .end local v13    # "prevRunStart":I
    .end local v18    # "prevRunIndex":I
    .end local v20    # "runStart":I
    .restart local v2    # "runStart":I
    :cond_7
    move/from16 v20, v2

    move/from16 v18, v20

    .line 626
    .end local v2    # "runStart":I
    .local v18, "runStart":I
    :goto_4
    move v13, v0

    move v12, v1

    move v14, v5

    move v5, v3

    goto :goto_6

    .end local v18    # "runStart":I
    .restart local v2    # "runStart":I
    :cond_8
    move/from16 v20, v2

    move v13, v0

    move v12, v1

    move v14, v5

    move/from16 v18, v20

    move v5, v3

    .end local v2    # "runStart":I
    .restart local v20    # "runStart":I
    goto :goto_6

    .line 576
    .end local v20    # "runStart":I
    .restart local v2    # "runStart":I
    :cond_9
    move/from16 v20, v2

    move v4, v5

    goto :goto_5

    .end local v5    # "runLimit":I
    .local v4, "runLimit":I
    :cond_a
    move/from16 v20, v2

    .end local v2    # "runStart":I
    .restart local v20    # "runStart":I
    :goto_5
    add-int/lit8 v1, v1, 0x2

    move/from16 v2, v20

    const/4 v12, -0x1

    goto :goto_2

    .line 626
    .end local v20    # "runStart":I
    .restart local v2    # "runStart":I
    :cond_b
    move v13, v0

    move v12, v1

    move/from16 v18, v2

    move v5, v3

    move v14, v4

    .end local v0    # "runLevel":I
    .end local v1    # "runIndex":I
    .end local v2    # "runStart":I
    .end local v3    # "trailing":Z
    .end local v4    # "runLimit":I
    .local v5, "trailing":Z
    .local v12, "runIndex":I
    .local v13, "runLevel":I
    .local v14, "runLimit":I
    .restart local v18    # "runStart":I
    :goto_6
    array-length v0, v6

    if-eq v12, v0, :cond_13

    .line 627
    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    .line 628
    .local v4, "runIsRtl":Z
    if-ne v9, v4, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    move v3, v0

    .line 629
    .local v3, "advance":Z
    if-eqz v3, :cond_e

    move v0, v14

    goto :goto_9

    :cond_e
    move/from16 v0, v18

    :goto_9
    if-ne v8, v0, :cond_10

    if-eq v3, v5, :cond_f

    goto :goto_a

    .line 648
    .end local v3    # "advance":Z
    .end local v4    # "runIsRtl":Z
    :cond_f
    move/from16 v21, v5

    move-object v8, v6

    goto :goto_c

    .line 631
    .restart local v3    # "advance":Z
    .restart local v4    # "runIsRtl":Z
    :cond_10
    :goto_a
    move-object v0, v7

    move v1, v12

    move/from16 v2, v18

    move/from16 v19, v3

    move v3, v14

    .end local v3    # "advance":Z
    .local v19, "advance":Z
    move/from16 v20, v4

    .end local v4    # "runIsRtl":Z
    .local v20, "runIsRtl":Z
    move/from16 v21, v5

    move v5, v8

    .end local v5    # "trailing":Z
    .restart local v21    # "trailing":Z
    move-object v8, v6

    move/from16 v6, v19

    .end local v6    # "runs":[I
    .restart local v8    # "runs":[I
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    .line 635
    .end local v16    # "newCaret":I
    .local v0, "newCaret":I
    if-eqz v19, :cond_11

    move v1, v14

    goto :goto_b

    :cond_11
    move/from16 v1, v18

    :goto_b
    if-eq v0, v1, :cond_12

    .line 636
    return v0

    .line 648
    .end local v19    # "advance":Z
    .end local v20    # "runIsRtl":Z
    :cond_12
    move/from16 v16, v14

    move v14, v13

    move v13, v0

    goto :goto_d

    .end local v0    # "newCaret":I
    .end local v8    # "runs":[I
    .end local v21    # "trailing":Z
    .restart local v5    # "trailing":Z
    .restart local v6    # "runs":[I
    .restart local v16    # "newCaret":I
    :cond_13
    move/from16 v21, v5

    move-object v8, v6

    .end local v5    # "trailing":Z
    .end local v6    # "runs":[I
    .restart local v8    # "runs":[I
    .restart local v21    # "trailing":Z
    :goto_c
    move/from16 v26, v14

    move v14, v13

    move/from16 v13, v16

    move/from16 v16, v26

    .local v13, "newCaret":I
    .local v14, "runLevel":I
    .local v16, "runLimit":I
    :goto_d
    if-ne v9, v15, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    .line 649
    .local v0, "advance":Z
    :goto_e
    if-eqz v0, :cond_15

    const/4 v1, 0x2

    goto :goto_f

    :cond_15
    const/4 v1, -0x2

    :goto_f
    add-int v6, v12, v1

    .line 650
    .local v6, "otherRunIndex":I
    if-ltz v6, :cond_1d

    array-length v1, v8

    if-ge v6, v1, :cond_1d

    .line 651
    aget v1, v8, v6

    add-int v19, v10, v1

    .line 652
    .local v19, "otherRunStart":I
    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    and-int v1, v1, v17

    add-int v1, v19, v1

    .line 654
    .local v1, "otherRunLimit":I
    if-le v1, v11, :cond_16

    .line 655
    move v1, v11

    .line 657
    .end local v1    # "otherRunLimit":I
    .local v20, "otherRunLimit":I
    :cond_16
    move/from16 v20, v1

    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v5, v1, 0x3f

    .line 659
    .local v5, "otherRunLevel":I
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    :goto_10
    move v4, v1

    .line 661
    .local v4, "otherRunIsRtl":Z
    if-ne v9, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :goto_11
    move/from16 v22, v1

    .line 662
    .end local v0    # "advance":Z
    .local v22, "advance":Z
    const/4 v0, -0x1

    if-ne v13, v0, :cond_1b

    .line 663
    nop

    .line 665
    if-eqz v22, :cond_19

    .line 663
    move/from16 v23, v19

    goto :goto_12

    :cond_19
    move/from16 v23, v20

    :goto_12
    move-object v0, v7

    move v1, v6

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v24, v4

    .end local v4    # "otherRunIsRtl":Z
    .local v24, "otherRunIsRtl":Z
    move/from16 v25, v5

    move/from16 v5, v23

    .end local v5    # "otherRunLevel":I
    .local v25, "otherRunLevel":I
    move/from16 v23, v6

    move/from16 v6, v22

    .end local v6    # "otherRunIndex":I
    .local v23, "otherRunIndex":I
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v13

    .line 666
    if-eqz v22, :cond_1a

    move/from16 v0, v20

    goto :goto_13

    :cond_1a
    move/from16 v0, v19

    :goto_13
    if-ne v13, v0, :cond_21

    .line 669
    move/from16 v12, v23

    .line 670
    move/from16 v14, v25

    .line 671
    goto :goto_d

    .line 677
    .end local v23    # "otherRunIndex":I
    .end local v24    # "otherRunIsRtl":Z
    .end local v25    # "otherRunLevel":I
    .restart local v4    # "otherRunIsRtl":Z
    .restart local v5    # "otherRunLevel":I
    .restart local v6    # "otherRunIndex":I
    :cond_1b
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v23, v6

    .end local v4    # "otherRunIsRtl":Z
    .end local v5    # "otherRunLevel":I
    .end local v6    # "otherRunIndex":I
    .restart local v23    # "otherRunIndex":I
    .restart local v24    # "otherRunIsRtl":Z
    .restart local v25    # "otherRunLevel":I
    move/from16 v0, v25

    if-ge v0, v14, :cond_21

    .line 679
    .end local v25    # "otherRunLevel":I
    .local v0, "otherRunLevel":I
    if-eqz v22, :cond_1c

    move/from16 v1, v19

    goto :goto_14

    :cond_1c
    move/from16 v1, v20

    :goto_14
    move v13, v1

    goto :goto_16

    .line 684
    .end local v19    # "otherRunStart":I
    .end local v20    # "otherRunLimit":I
    .end local v22    # "advance":Z
    .end local v23    # "otherRunIndex":I
    .end local v24    # "otherRunIsRtl":Z
    .local v0, "advance":Z
    .restart local v6    # "otherRunIndex":I
    :cond_1d
    move/from16 v23, v6

    .end local v6    # "otherRunIndex":I
    .restart local v23    # "otherRunIndex":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_1f

    .line 688
    if-eqz v0, :cond_1e

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    nop

    :cond_1e
    move v13, v1

    .line 689
    goto :goto_16

    .line 700
    :cond_1f
    if-gt v13, v11, :cond_21

    .line 701
    if-eqz v0, :cond_20

    move v1, v11

    goto :goto_15

    :cond_20
    move v1, v10

    :goto_15
    move v13, v1

    .line 706
    .end local v0    # "advance":Z
    .end local v23    # "otherRunIndex":I
    :cond_21
    :goto_16
    return v13
.end method

.method public justify(F)V
    .locals 5
    .param p1, "justifyWidth"    # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 218
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    .line 219
    .local v0, "end":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v2

    .line 223
    .local v2, "spaces":I
    if-nez v2, :cond_1

    .line 226
    return-void

    .line 228
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 229
    .local v1, "width":F
    sub-float v3, p1, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Landroid/text/TextLine;->mAddedWidth:F

    .line 230
    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 317
    if-eqz p2, :cond_0

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v8, v0

    .line 318
    .local v8, "target":I
    if-gez v8, :cond_1

    .line 319
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_1
    const/4 v9, 0x0

    .line 324
    .local v9, "h":F
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_3

    .line 325
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_2

    .line 326
    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 328
    :cond_2
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_3

    .line 329
    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    .line 333
    :cond_3
    iget-object v10, v6, Landroid/text/TextLine;->mChars:[C

    .line 334
    .local v10, "chars":[C
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 335
    .local v11, "runs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    array-length v0, v11

    if-ge v13, v0, :cond_14

    .line 336
    aget v14, v11, v13

    .line 337
    .local v14, "runStart":I
    add-int/lit8 v0, v13, 0x1

    aget v0, v11, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    add-int/2addr v0, v14

    .line 338
    .local v0, "runLimit":I
    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v0, v1, :cond_4

    .line 339
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    .line 341
    .end local v0    # "runLimit":I
    .local v5, "runLimit":I
    :cond_4
    move v5, v0

    add-int/lit8 v0, v13, 0x1

    aget v0, v11, v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    move v0, v15

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    .line 343
    .local v4, "runIsRtl":Z
    move v0, v14

    .line 344
    .local v0, "segstart":I
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    move v1, v14

    goto :goto_3

    :cond_6
    move v1, v5

    :goto_3
    move/from16 v16, v9

    move v9, v0

    .end local v0    # "segstart":I
    .local v1, "j":I
    .local v9, "segstart":I
    .local v16, "h":F
    :goto_4
    move v3, v1

    .end local v1    # "j":I
    .local v3, "j":I
    if-gt v3, v5, :cond_13

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "codept":I
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    if-ge v3, v5, :cond_7

    .line 347
    aget-char v0, v10, v3

    .line 348
    const v1, 0xd800

    if-lt v0, v1, :cond_7

    const v1, 0xdc00

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v5, :cond_7

    .line 349
    invoke-static {v10, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 350
    const v1, 0xffff

    if-le v0, v1, :cond_7

    .line 351
    add-int/lit8 v3, v3, 0x1

    .line 352
    goto :goto_5

    .line 357
    :cond_7
    move v2, v0

    .end local v0    # "codept":I
    .local v2, "codept":I
    const/16 v1, 0x9

    if-eq v3, v5, :cond_9

    if-ne v2, v1, :cond_8

    goto :goto_6

    .line 344
    .end local v2    # "codept":I
    .end local v4    # "runIsRtl":Z
    .end local v5    # "runLimit":I
    .local v21, "runIsRtl":Z
    .local v22, "runLimit":I
    :cond_8
    :goto_5
    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_c

    .line 358
    .end local v21    # "runIsRtl":Z
    .end local v22    # "runLimit":I
    .restart local v2    # "codept":I
    .restart local v4    # "runIsRtl":Z
    .restart local v5    # "runLimit":I
    :cond_9
    :goto_6
    if-lt v8, v9, :cond_a

    if-ge v8, v3, :cond_a

    move v0, v15

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    move/from16 v17, v0

    .line 360
    .local v17, "inSegment":Z
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move v0, v15

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    if-ne v0, v4, :cond_c

    move v0, v15

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    move/from16 v19, v0

    .line 361
    .local v19, "advance":Z
    if-eqz v17, :cond_d

    if-eqz v19, :cond_d

    .line 362
    move-object v0, v6

    move v1, v9

    move v12, v2

    move v2, v7

    .end local v2    # "codept":I
    .local v12, "codept":I
    move/from16 v20, v3

    .end local v3    # "j":I
    .local v20, "j":I
    move/from16 v21, v4

    .end local v4    # "runIsRtl":Z
    .restart local v21    # "runIsRtl":Z
    move/from16 v22, v5

    move-object/from16 v5, p3

    .end local v5    # "runLimit":I
    .restart local v22    # "runLimit":I
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v16, v0

    return v0

    .line 365
    .end local v12    # "codept":I
    .end local v20    # "j":I
    .end local v21    # "runIsRtl":Z
    .end local v22    # "runLimit":I
    .restart local v2    # "codept":I
    .restart local v3    # "j":I
    .restart local v4    # "runIsRtl":Z
    .restart local v5    # "runLimit":I
    :cond_d
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v2

    .end local v2    # "codept":I
    .end local v3    # "j":I
    .end local v4    # "runIsRtl":Z
    .local v5, "codept":I
    .restart local v20    # "j":I
    .restart local v21    # "runIsRtl":Z
    .restart local v22    # "runLimit":I
    move-object v0, v6

    const/16 v4, 0x9

    move v1, v9

    move/from16 v2, v20

    move/from16 v3, v20

    move v12, v4

    move/from16 v4, v21

    move v12, v5

    move-object/from16 v5, p3

    .end local v5    # "codept":I
    .restart local v12    # "codept":I
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 366
    .local v5, "w":F
    if-eqz v19, :cond_e

    move v0, v5

    goto :goto_a

    :cond_e
    neg-float v0, v5

    :goto_a
    add-float v16, v16, v0

    .line 368
    if-eqz v17, :cond_f

    .line 369
    const/4 v15, 0x0

    move-object v0, v6

    move v1, v9

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v18, v5

    move-object v5, v15

    .end local v5    # "w":F
    .local v18, "w":F
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v16, v0

    return v0

    .line 372
    .end local v18    # "w":F
    .restart local v5    # "w":F
    :cond_f
    move/from16 v18, v5

    .end local v5    # "w":F
    .restart local v18    # "w":F
    const/16 v0, 0x9

    if-ne v12, v0, :cond_12

    .line 373
    move/from16 v0, v20

    if-ne v7, v0, :cond_10

    .line 374
    .end local v20    # "j":I
    .local v0, "j":I
    return v16

    .line 376
    :cond_10
    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    invoke-virtual {v6, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 377
    .end local v16    # "h":F
    .local v1, "h":F
    if-ne v8, v0, :cond_11

    .line 378
    return v1

    .line 382
    :cond_11
    move/from16 v16, v1

    goto :goto_b

    .end local v0    # "j":I
    .end local v1    # "h":F
    .restart local v16    # "h":F
    .restart local v20    # "j":I
    :cond_12
    move/from16 v0, v20

    .end local v20    # "j":I
    .restart local v0    # "j":I
    :goto_b
    add-int/lit8 v9, v0, 0x1

    .line 344
    .end local v12    # "codept":I
    .end local v17    # "inSegment":Z
    .end local v18    # "w":F
    .end local v19    # "advance":Z
    move v3, v0

    .end local v0    # "j":I
    .restart local v3    # "j":I
    :goto_c
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .local v1, "j":I
    move/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_4

    .line 335
    .end local v1    # "j":I
    .end local v9    # "segstart":I
    .end local v14    # "runStart":I
    .end local v21    # "runIsRtl":Z
    .end local v22    # "runLimit":I
    :cond_13
    add-int/lit8 v0, v13, 0x2

    .end local v13    # "i":I
    .local v0, "i":I
    move/from16 v9, v16

    goto/16 :goto_1

    .line 387
    .end local v0    # "i":I
    .end local v16    # "h":F
    .local v9, "h":F
    :cond_14
    return v9
.end method

.method measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 25
    .param p1, "trailing"    # [Z
    .param p2, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v6, p0

    .line 395
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    new-array v8, v0, [F

    .line 397
    .local v8, "measurement":[F
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    add-int/2addr v0, v7

    new-array v9, v0, [I

    .line 398
    .local v9, "target":[I
    const/4 v10, 0x0

    move v0, v10

    .local v0, "offset":I
    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_1

    .line 399
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    aput v1, v9, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "offset":I
    :cond_1
    aget v0, v9, v10

    if-gez v0, :cond_2

    .line 402
    const/4 v0, 0x0

    aput v0, v8, v10

    .line 405
    :cond_2
    const/4 v11, 0x0

    .line 407
    .local v11, "h":F
    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_6

    .line 408
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_4

    .line 409
    nop

    .local v10, "offset":I
    :goto_2
    move v7, v10

    .end local v10    # "offset":I
    .local v7, "offset":I
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_3

    .line 410
    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v7

    .line 409
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "offset":I
    .restart local v10    # "offset":I
    goto :goto_2

    .line 412
    .end local v10    # "offset":I
    :cond_3
    return-object v8

    .line 414
    :cond_4
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_6

    .line 415
    nop

    .restart local v10    # "offset":I
    :goto_3
    move v7, v10

    .end local v10    # "offset":I
    .restart local v7    # "offset":I
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_5

    .line 416
    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v7

    .line 415
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "offset":I
    .restart local v10    # "offset":I
    goto :goto_3

    .line 418
    .end local v10    # "offset":I
    :cond_5
    return-object v8

    .line 422
    :cond_6
    iget-object v12, v6, Landroid/text/TextLine;->mChars:[C

    .line 423
    .local v12, "chars":[C
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v13, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 424
    .local v13, "runs":[I
    move v0, v10

    .local v0, "i":I
    :goto_4
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    array-length v0, v13

    if-ge v14, v0, :cond_18

    .line 425
    aget v15, v13, v14

    .line 426
    .local v15, "runStart":I
    add-int/lit8 v0, v14, 0x1

    aget v0, v13, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    add-int/2addr v0, v15

    .line 427
    .local v0, "runLimit":I
    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v0, v1, :cond_7

    .line 428
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    .line 430
    .end local v0    # "runLimit":I
    .local v5, "runLimit":I
    :cond_7
    move v5, v0

    add-int/lit8 v0, v14, 0x1

    aget v0, v13, v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_5

    :cond_8
    move v0, v10

    :goto_5
    move v4, v0

    .line 432
    .local v4, "runIsRtl":Z
    move v0, v15

    .line 433
    .local v0, "segstart":I
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    move v1, v15

    goto :goto_6

    :cond_9
    move v1, v5

    :goto_6
    move/from16 v16, v11

    move v11, v0

    .end local v0    # "segstart":I
    .local v1, "j":I
    .local v11, "segstart":I
    .local v16, "h":F
    :goto_7
    move v3, v1

    .end local v1    # "j":I
    .local v3, "j":I
    if-gt v3, v5, :cond_17

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "codept":I
    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a

    if-ge v3, v5, :cond_a

    .line 436
    aget-char v0, v12, v3

    .line 437
    const v1, 0xd800

    if-lt v0, v1, :cond_a

    const v1, 0xdc00

    if-ge v0, v1, :cond_a

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v5, :cond_a

    .line 438
    invoke-static {v12, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 439
    const v1, 0xffff

    if-le v0, v1, :cond_a

    .line 440
    add-int/lit8 v3, v3, 0x1

    .line 441
    goto :goto_8

    .line 446
    :cond_a
    move v2, v0

    .end local v0    # "codept":I
    .local v2, "codept":I
    const/16 v1, 0x9

    if-eq v3, v5, :cond_c

    if-ne v2, v1, :cond_b

    goto :goto_9

    .line 433
    .end local v2    # "codept":I
    .end local v4    # "runIsRtl":Z
    .end local v5    # "runLimit":I
    .local v18, "runIsRtl":Z
    .local v21, "runLimit":I
    :cond_b
    :goto_8
    move/from16 v18, v4

    move/from16 v21, v5

    goto/16 :goto_12

    .line 447
    .end local v18    # "runIsRtl":Z
    .end local v21    # "runLimit":I
    .restart local v2    # "codept":I
    .restart local v4    # "runIsRtl":Z
    .restart local v5    # "runLimit":I
    :cond_c
    :goto_9
    move/from16 v17, v16

    .line 448
    .local v17, "oldh":F
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    move v0, v7

    goto :goto_a

    :cond_d
    move v0, v10

    :goto_a
    if-ne v0, v4, :cond_e

    move v0, v7

    goto :goto_b

    :cond_e
    move v0, v10

    :goto_b
    move/from16 v19, v0

    .line 449
    .local v19, "advance":Z
    move-object v0, v6

    const/16 v10, 0x9

    move v1, v11

    move v7, v2

    move v2, v3

    .end local v2    # "codept":I
    .local v7, "codept":I
    move/from16 v20, v3

    .end local v3    # "j":I
    .local v20, "j":I
    move/from16 v18, v4

    .end local v4    # "runIsRtl":Z
    .restart local v18    # "runIsRtl":Z
    move/from16 v21, v5

    move-object/from16 v5, p2

    .end local v5    # "runLimit":I
    .restart local v21    # "runLimit":I
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v4

    .line 450
    .local v4, "w":F
    if-eqz v19, :cond_f

    move v0, v4

    goto :goto_c

    :cond_f
    neg-float v0, v4

    :goto_c
    add-float v16, v16, v0

    .line 452
    if-eqz v19, :cond_10

    move/from16 v0, v17

    goto :goto_d

    :cond_10
    move/from16 v0, v16

    :goto_d
    move/from16 v22, v0

    .line 453
    .local v22, "baseh":F
    if-eqz v19, :cond_11

    move-object/from16 v5, p2

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    move-object v5, v0

    .line 454
    .local v5, "crtfmi":Landroid/graphics/Paint$FontMetricsInt;
    :goto_e
    move v0, v11

    .local v0, "offset":I
    :goto_f
    move v3, v0

    .end local v0    # "offset":I
    .local v3, "offset":I
    move/from16 v2, v20

    if-gt v3, v2, :cond_13

    .end local v20    # "j":I
    .local v2, "j":I
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v3, v0, :cond_13

    .line 455
    aget v0, v9, v3

    if-lt v0, v11, :cond_12

    aget v0, v9, v3

    if-ge v0, v2, :cond_12

    .line 456
    nop

    .line 457
    move-object v0, v6

    move v1, v11

    move/from16 v23, v2

    move v2, v3

    .end local v2    # "j":I
    .local v23, "j":I
    move/from16 v20, v3

    move/from16 v3, v23

    .end local v3    # "offset":I
    .local v20, "offset":I
    move/from16 v24, v4

    move/from16 v4, v18

    .end local v4    # "w":F
    .local v24, "w":F
    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v22, v0

    aput v0, v8, v20

    goto :goto_10

    .line 454
    .end local v20    # "offset":I
    .end local v23    # "j":I
    .end local v24    # "w":F
    .restart local v2    # "j":I
    .restart local v3    # "offset":I
    .restart local v4    # "w":F
    :cond_12
    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v24, v4

    .end local v2    # "j":I
    .end local v3    # "offset":I
    .end local v4    # "w":F
    .restart local v20    # "offset":I
    .restart local v23    # "j":I
    .restart local v24    # "w":F
    :goto_10
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "offset":I
    .restart local v0    # "offset":I
    move/from16 v20, v23

    move/from16 v4, v24

    goto :goto_f

    .line 461
    .end local v0    # "offset":I
    .end local v23    # "j":I
    .end local v24    # "w":F
    .restart local v2    # "j":I
    .restart local v4    # "w":F
    :cond_13
    move/from16 v23, v2

    move/from16 v24, v4

    .end local v2    # "j":I
    .end local v4    # "w":F
    .restart local v23    # "j":I
    .restart local v24    # "w":F
    if-ne v7, v10, :cond_16

    .line 462
    move/from16 v0, v23

    aget v1, v9, v0

    .end local v23    # "j":I
    .local v0, "j":I
    if-ne v1, v0, :cond_14

    .line 463
    aput v16, v8, v0

    .line 465
    :cond_14
    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    invoke-virtual {v6, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 466
    .end local v16    # "h":F
    .local v1, "h":F
    add-int/lit8 v3, v0, 0x1

    aget v2, v9, v3

    if-ne v2, v0, :cond_15

    .line 467
    add-int/lit8 v3, v0, 0x1

    aput v1, v8, v3

    .line 471
    :cond_15
    move/from16 v16, v1

    goto :goto_11

    .end local v0    # "j":I
    .end local v1    # "h":F
    .restart local v16    # "h":F
    .restart local v23    # "j":I
    :cond_16
    move/from16 v0, v23

    .end local v23    # "j":I
    .restart local v0    # "j":I
    :goto_11
    add-int/lit8 v11, v0, 0x1

    .line 433
    .end local v5    # "crtfmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v7    # "codept":I
    .end local v17    # "oldh":F
    .end local v19    # "advance":Z
    .end local v22    # "baseh":F
    .end local v24    # "w":F
    move v3, v0

    .end local v0    # "j":I
    .local v3, "j":I
    :goto_12
    const/4 v0, 0x1

    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .local v1, "j":I
    move v7, v0

    move/from16 v4, v18

    move/from16 v5, v21

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 424
    .end local v1    # "j":I
    .end local v11    # "segstart":I
    .end local v15    # "runStart":I
    .end local v18    # "runIsRtl":Z
    .end local v21    # "runLimit":I
    :cond_17
    move v0, v7

    add-int/lit8 v1, v14, 0x2

    .end local v14    # "i":I
    .local v1, "i":I
    move v0, v1

    move/from16 v11, v16

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 475
    .end local v1    # "i":I
    .end local v16    # "h":F
    .local v11, "h":F
    :cond_18
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aget v0, v9, v0

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-ne v0, v1, :cond_19

    .line 476
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aput v11, v8, v0

    .line 479
    :cond_19
    return-object v8
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 300
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    .line 1277
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    .line 1280
    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 16
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 154
    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 155
    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 156
    iput v3, v0, Landroid/text/TextLine;->mStart:I

    .line 157
    sub-int v7, v4, v3

    iput v7, v0, Landroid/text/TextLine;->mLen:I

    .line 158
    move/from16 v7, p5

    iput v7, v0, Landroid/text/TextLine;->mDir:I

    .line 159
    iput-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 160
    iget-object v8, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz v8, :cond_9

    .line 163
    iput-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    .line 164
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 166
    const/4 v9, 0x0

    .line 167
    .local v9, "hasReplacement":Z
    instance-of v10, v2, Landroid/text/Spanned;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    .line 168
    move-object v10, v2

    check-cast v10, Landroid/text/Spanned;

    iput-object v10, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 169
    iget-object v10, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v13, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v10, v13, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 170
    iget-object v10, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v10, v10, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    move v9, v10

    .line 173
    :cond_1
    iput-object v8, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 174
    instance-of v10, v2, Landroid/text/PrecomputedText;

    if-eqz v10, :cond_2

    .line 177
    move-object v10, v2

    check-cast v10, Landroid/text/PrecomputedText;

    iput-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 178
    iget-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v10}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 179
    iput-object v8, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 183
    :cond_2
    if-nez v9, :cond_4

    if-nez v6, :cond_4

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v5, v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v12

    :goto_2
    iput-boolean v8, v0, Landroid/text/TextLine;->mCharsValid:Z

    .line 185
    iget-boolean v8, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v8, :cond_8

    .line 186
    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    array-length v8, v8

    iget v10, v0, Landroid/text/TextLine;->mLen:I

    if-ge v8, v10, :cond_6

    .line 187
    :cond_5
    iget v8, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v8

    iput-object v8, v0, Landroid/text/TextLine;->mChars:[C

    .line 189
    :cond_6
    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v8, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 190
    if-eqz v9, :cond_8

    .line 196
    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    .line 197
    .local v8, "chars":[C
    move v10, v3

    .local v10, "i":I
    :goto_3
    if-ge v10, v4, :cond_8

    .line 198
    iget-object v11, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v11, v10, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v11

    .line 199
    .local v11, "inext":I
    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v13, v10, v11}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 201
    sub-int v13, v10, v3

    const v14, 0xfffc

    aput-char v14, v8, v13

    .line 202
    sub-int v13, v10, v3

    add-int/2addr v13, v12

    .local v13, "j":I
    sub-int v14, v11, v3

    .local v14, "e":I
    :goto_4
    if-ge v13, v14, :cond_7

    .line 203
    const v15, 0xfeff

    aput-char v15, v8, v13

    .line 202
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 197
    .end local v13    # "j":I
    .end local v14    # "e":I
    :cond_7
    move v10, v11

    goto :goto_3

    .line 209
    .end local v8    # "chars":[C
    .end local v10    # "i":I
    .end local v11    # "inext":I
    :cond_8
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 210
    const/4 v10, 0x0

    iput v10, v0, Landroid/text/TextLine;->mAddedWidth:F

    .line 211
    return-void

    .line 161
    .end local v9    # "hasReplacement":Z
    :cond_9
    move-object/from16 v8, p8

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Directions cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
