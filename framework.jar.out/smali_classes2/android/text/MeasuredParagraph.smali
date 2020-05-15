.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# static fields
.field private static final OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private mCachedPaint:Landroid/text/TextPaint;

.field private mCopiedBuffer:[C

.field private mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private mLtrWithoutBidi:Z

.field private mNativeObjectCleaner:Ljava/lang/Runnable;

.field private mNativePtr:J

.field private mParaDir:I

.field private mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private mSpanned:Landroid/text/Spanned;

.field private mTextLength:I

.field private mTextStart:I

.field private mWholeWidth:F

.field private mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/text/MeasuredParagraph;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/text/MeasuredParagraph;->nGetReleaseFunc()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 70
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 120
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 124
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 128
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    .line 151
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 68
    return-void
.end method

.method private applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V
    .locals 15
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "nativeBuilderPtr"    # J

    move-object v6, p0

    move-object/from16 v7, p2

    .line 586
    move-wide/from16 v8, p5

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 588
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    .line 590
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v11, v0

    .line 592
    .local v11, "needFontMetrics":Z
    if-eqz v11, :cond_1

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1

    .line 593
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 596
    :cond_1
    const/4 v0, 0x0

    .line 597
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    if-eqz v7, :cond_3

    .line 598
    nop

    .local v1, "i":I
    :goto_1
    array-length v4, v7

    if-ge v1, v4, :cond_3

    .line 599
    aget-object v4, v7, v1

    .line 600
    .local v4, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_2

    .line 602
    move-object v0, v4

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    .line 605
    :cond_2
    iget-object v5, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 598
    .end local v4    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 610
    .end local v1    # "i":I
    :cond_3
    move-object v12, v0

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v12, "replacement":Landroid/text/style/ReplacementSpan;
    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v13, p3, v0

    .line 611
    .local v13, "startInCopiedBuffer":I
    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v4, p4, v0

    .line 613
    .local v4, "endInCopiedBuffer":I
    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    .line 614
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 617
    :cond_4
    if-eqz v12, :cond_5

    .line 618
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move v3, v4

    move v7, v4

    move-wide v4, v8

    .end local v4    # "endInCopiedBuffer":I
    .local v7, "endInCopiedBuffer":I
    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V

    goto :goto_3

    .line 621
    .end local v7    # "endInCopiedBuffer":I
    .restart local v4    # "endInCopiedBuffer":I
    :cond_5
    move v7, v4

    .end local v4    # "endInCopiedBuffer":I
    .restart local v7    # "endInCopiedBuffer":I
    invoke-direct {v6, v13, v7, v8, v9}, Landroid/text/MeasuredParagraph;->applyStyleRun(IIJ)V

    .line 624
    :goto_3
    if-eqz v11, :cond_7

    .line 625
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_6

    .line 626
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 627
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    .line 629
    :cond_6
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 630
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 633
    :goto_4
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 634
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 635
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 636
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 638
    :cond_7
    return-void
.end method

.method private applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V
    .locals 8
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nativeBuilderPtr"    # J

    .line 524
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    .line 526
    .local v0, "width":F
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    .line 528
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 529
    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 532
    :cond_0
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    move-wide v1, p4

    move v5, p2

    move v6, p3

    move v7, v0

    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddReplacementRun(JJIIF)V

    .line 537
    :goto_0
    return-void
.end method

.method private applyStyleRun(IIJ)V
    .locals 23
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "nativeBuilderPtr"    # J

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 543
    iget-boolean v1, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_1

    .line 545
    cmp-long v1, p3, v8

    if-nez v1, :cond_0

    .line 546
    iget v12, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v11, v10

    sub-int v6, v11, v10

    const/4 v7, 0x0

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 548
    invoke-virtual {v3}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    .line 546
    move v3, v10

    move v5, v10

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v12, v1

    iput v12, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_5

    .line 550
    :cond_0
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    const/4 v7, 0x0

    move-wide/from16 v1, p3

    move v5, v10

    move v6, v11

    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    goto/16 :goto_5

    .line 555
    :cond_1
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v10}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    .line 558
    .local v1, "level":B
    move v2, v10

    .local v2, "levelStart":I
    add-int/lit8 v3, v10, 0x1

    move v12, v1

    move/from16 v22, v2

    .end local v1    # "level":B
    .end local v2    # "levelStart":I
    .local v3, "levelEnd":I
    .local v12, "level":B
    .local v22, "levelStart":I
    :goto_0
    move v7, v3

    .line 559
    .end local v3    # "levelEnd":I
    .local v7, "levelEnd":I
    if-eq v7, v11, :cond_3

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v7}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    if-eq v1, v12, :cond_2

    goto :goto_1

    .line 558
    :cond_2
    move v13, v7

    goto :goto_6

    .line 560
    :cond_3
    :goto_1
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    move/from16 v19, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 561
    .local v19, "isRtl":Z
    :goto_3
    cmp-long v1, p3, v8

    if-nez v1, :cond_5

    .line 562
    sub-int v1, v7, v22

    .line 563
    .local v1, "levelLength":I
    iget v2, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v13, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v4, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 565
    invoke-virtual {v4}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v20

    .line 563
    move-object v14, v3

    move/from16 v15, v22

    move/from16 v16, v1

    move/from16 v17, v22

    move/from16 v18, v1

    move/from16 v21, v22

    invoke-virtual/range {v13 .. v21}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 566
    .end local v1    # "levelLength":I
    nop

    .line 570
    move v13, v7

    goto :goto_4

    .line 567
    :cond_5
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    move-wide/from16 v1, p3

    move/from16 v5, v22

    move v6, v7

    move v13, v7

    move/from16 v7, v19

    .end local v7    # "levelEnd":I
    .local v13, "levelEnd":I
    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    .line 570
    :goto_4
    if-ne v13, v11, :cond_6

    .line 571
    nop

    .line 578
    .end local v12    # "level":B
    .end local v13    # "levelEnd":I
    .end local v19    # "isRtl":Z
    .end local v22    # "levelStart":I
    :goto_5
    return-void

    .line 573
    .restart local v12    # "level":B
    .restart local v13    # "levelEnd":I
    .restart local v19    # "isRtl":Z
    .restart local v22    # "levelStart":I
    :cond_6
    move/from16 v22, v13

    .line 574
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v13}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    .line 558
    .end local v12    # "level":B
    .end local v19    # "isRtl":Z
    .local v1, "level":B
    move v12, v1

    .end local v1    # "level":B
    .restart local v12    # "level":B
    :goto_6
    add-int/lit8 v3, v13, 0x1

    .end local v13    # "levelEnd":I
    .restart local v3    # "levelEnd":I
    goto :goto_0
.end method

.method private bindNativeObject(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .line 138
    iput-wide p1, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    .line 139
    sget-object v0, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    .line 140
    return-void
.end method

.method public static buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 330
    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 331
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 332
    return-object v0
.end method

.method public static buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 15
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "recycle"    # Landroid/text/MeasuredParagraph;

    move/from16 v7, p3

    .line 356
    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    move-object v13, v0

    .line 357
    .local v13, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v14, p1

    move/from16 v12, p2

    move-object/from16 v11, p4

    invoke-direct {v13, v14, v12, v7, v11}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 359
    iget-object v0, v13, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v13, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 360
    iget v0, v13, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    .line 361
    return-object v13

    .line 364
    :cond_1
    iget-object v0, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2

    .line 366
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v13

    move-object v1, p0

    move v3, v12

    move v4, v7

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 380
    move-object v5, v13

    goto :goto_2

    .line 371
    :cond_2
    move v0, v12

    .local v0, "spanStart":I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 372
    iget-object v1, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 373
    .local v1, "spanEnd":I
    iget-object v2, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 375
    .local v2, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v3, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 376
    const-wide/16 v3, 0x0

    move-object v8, v13

    move-object v9, p0

    move-object v10, v2

    move v11, v0

    move v12, v1

    move-object v5, v13

    move-wide v13, v3

    .end local v13    # "mt":Landroid/text/MeasuredParagraph;
    .local v5, "mt":Landroid/text/MeasuredParagraph;
    invoke-direct/range {v8 .. v14}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 371
    .end local v2    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v0, v1

    move-object/from16 v14, p1

    move/from16 v12, p2

    move-object/from16 v11, p4

    move-object v13, v5

    goto :goto_1

    .line 380
    .end local v0    # "spanStart":I
    .end local v1    # "spanEnd":I
    .end local v5    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v13    # "mt":Landroid/text/MeasuredParagraph;
    :cond_3
    move-object v5, v13

    .end local v13    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v5    # "mt":Landroid/text/MeasuredParagraph;
    :goto_2
    return-object v5
.end method

.method public static buildForStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;ZZLandroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 18
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "computeHyphenation"    # Z
    .param p6, "computeLayout"    # Z
    .param p7, "recycle"    # Landroid/text/MeasuredParagraph;

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    .line 407
    if-nez p7, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    move-object v11, v0

    .line 408
    .local v11, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p4

    invoke-direct {v11, v12, v13, v8, v14}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 409
    iget v0, v11, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    .line 412
    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v0

    move-wide v1, v0

    .line 414
    .local v1, "nativeBuilderPtr":J
    :try_start_0
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 415
    invoke-static {v1, v2, v0, v9, v10}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v3

    .line 414
    invoke-direct {v11, v3, v4}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    .line 419
    nop

    .line 420
    return-object v11

    .line 418
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0

    .line 423
    .end local v1    # "nativeBuilderPtr":J
    :cond_1
    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v0

    move-wide v6, v0

    .line 425
    .local v6, "nativeBuilderPtr":J
    :try_start_1
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_2

    .line 427
    const/4 v3, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move v4, v13

    move v5, v8

    move-wide v15, v6

    .end local v6    # "nativeBuilderPtr":J
    .local v15, "nativeBuilderPtr":J
    :try_start_2
    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 428
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v8}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto :goto_2

    .line 448
    :catchall_1
    move-exception v0

    move-wide v1, v15

    goto :goto_3

    .line 433
    .end local v15    # "nativeBuilderPtr":J
    .restart local v6    # "nativeBuilderPtr":J
    :cond_2
    move-wide v15, v6

    .end local v6    # "nativeBuilderPtr":J
    .restart local v15    # "nativeBuilderPtr":J
    move v0, v13

    .local v0, "spanStart":I
    :goto_1
    if-ge v0, v8, :cond_3

    .line 434
    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v8, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    move v6, v1

    .line 436
    .local v6, "spanEnd":I
    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v6, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 438
    .local v1, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v2, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 440
    .end local v1    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v3, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object v1, v11

    move-object/from16 v2, p0

    move v4, v0

    move v5, v6

    move/from16 v17, v0

    move v0, v6

    move-wide v6, v15

    .end local v6    # "spanEnd":I
    .local v0, "spanEnd":I
    .local v17, "spanStart":I
    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    .line 442
    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1, v0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    .end local v3    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v1, v0

    .end local v17    # "spanStart":I
    .local v1, "spanStart":I
    goto :goto_1

    .line 445
    .end local v0    # "spanEnd":I
    .end local v1    # "spanStart":I
    :cond_3
    :goto_2
    :try_start_3
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide v1, v15

    :try_start_4
    invoke-static {v1, v2, v0, v9, v10}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v3

    .end local v15    # "nativeBuilderPtr":J
    .local v1, "nativeBuilderPtr":J
    invoke-direct {v11, v3, v4}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 448
    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    .line 449
    nop

    .line 451
    return-object v11

    .line 448
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v1    # "nativeBuilderPtr":J
    .restart local v15    # "nativeBuilderPtr":J
    :catchall_3
    move-exception v0

    move-wide v1, v15

    .end local v15    # "nativeBuilderPtr":J
    .restart local v1    # "nativeBuilderPtr":J
    goto :goto_3

    .end local v1    # "nativeBuilderPtr":J
    .local v6, "nativeBuilderPtr":J
    :catchall_4
    move-exception v0

    move-wide v1, v6

    .end local v6    # "nativeBuilderPtr":J
    .restart local v1    # "nativeBuilderPtr":J
    :goto_3
    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0
.end method

.method private static native nAddReplacementRun(JJIIF)V
.end method

.method private static native nAddStyleRun(JJIIZ)V
.end method

.method private static native nBuildNativeMeasuredParagraph(J[CZZ)J
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method

.method private static obtain()Landroid/text/MeasuredParagraph;
    .locals 2

    .line 73
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 74
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v1
.end method

.method private reset()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 170
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 172
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 173
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 174
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 175
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 176
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->unbindNativeObject()V

    .line 177
    return-void
.end method

.method private resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 466
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 467
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 468
    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 469
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 471
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v0, v1, :cond_2

    .line 472
    :cond_1
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 474
    :cond_2
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 477
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 480
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    move v2, v1

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 481
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 482
    .local v3, "startInPara":I
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    .line 484
    .local v4, "endInPara":I
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 485
    :cond_3
    iget v5, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v4, v5, :cond_4

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 486
    :cond_4
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v6, 0xfffc

    invoke-static {v5, v3, v4, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 480
    .end local v3    # "startInPara":I
    .end local v4    # "endInPara":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    .end local v0    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v2    # "i":I
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 493
    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 495
    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 496
    iput-boolean v2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_4

    .line 499
    :cond_7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_8

    .line 500
    const/4 v0, 0x1

    .local v0, "bidiRequest":I
    :goto_2
    goto :goto_3

    .line 501
    .end local v0    # "bidiRequest":I
    :cond_8
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_9

    .line 502
    const/4 v0, -0x1

    goto :goto_2

    .line 503
    :cond_9
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_a

    .line 504
    const/4 v0, 0x2

    goto :goto_2

    .line 505
    :cond_a
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_b

    .line 506
    const/4 v0, -0x2

    goto :goto_2

    .line 508
    :cond_b
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, v0, v1, v3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v0

    .line 509
    .local v0, "isRtl":Z
    if-eqz v0, :cond_c

    const/4 v2, -0x1

    nop

    .end local v0    # "isRtl":Z
    :cond_c
    move v0, v2

    .line 511
    .local v0, "bidiRequest":I
    :goto_3
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 512
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v2

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 513
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 515
    .end local v0    # "bidiRequest":I
    :goto_4
    return-void
.end method

.method private unbindNativeObject()V
    .locals 4

    .line 144
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    iput-wide v2, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .line 649
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 650
    .local v0, "w":[F
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 651
    const/4 v3, 0x0

    .line 652
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 653
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 654
    cmpg-float v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 655
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 658
    :cond_2
    return v3

    .line 660
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, p1, -0x1

    .line 661
    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 662
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 663
    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    .line 664
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 666
    :cond_5
    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_7

    .line 667
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 669
    :cond_7
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getBounds(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 308
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    .line 309
    return-void
.end method

.method public getChars()[C
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public getDirections(II)Landroid/text/Layout$Directions;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 213
    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 217
    :cond_0
    sub-int v0, p2, p1

    .line 218
    .local v0, "length":I
    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getMemoryUsage()I
    .locals 2

    .line 692
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/MeasuredParagraph;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 273
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    return-wide v0
.end method

.method public getParagraphDir()I
    .locals 1

    .line 203
    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .line 185
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public getWholeWidth()F
    .locals 1

    .line 229
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public getWidth(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 286
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 289
    .local v0, "widths":[F
    const/4 v1, 0x0

    .line 290
    .local v1, "r":F
    move v2, v1

    move v1, p1

    .local v1, "i":I
    .local v2, "r":F
    :goto_0
    if-ge v1, p2, :cond_0

    .line 291
    aget v3, v0, v1

    add-float/2addr v2, v3

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 296
    .end local v0    # "widths":[F
    .end local v2    # "r":F
    :cond_1
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/text/MeasuredParagraph;->nGetWidth(JII)F

    move-result v0

    return v0
.end method

.method public getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "width":F
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    .line 682
    .local v1, "w":[F
    move v2, v0

    move v0, p1

    .local v0, "i":I
    .local v2, "width":F
    :goto_0
    if-ge v0, p2, :cond_0

    .line 683
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    :cond_0
    return v2
.end method

.method public recycle()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 84
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public release()V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 159
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 160
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 161
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 162
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 163
    return-void
.end method
