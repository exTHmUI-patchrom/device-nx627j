.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;,
        Landroid/text/DynamicLayout$Builder;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final EXTRA:I = 0x3

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mJustificationMode:I

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1172
    const/4 v0, 0x0

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 1173
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 1175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/text/DynamicLayout$Builder;)V
    .locals 10
    .param p1, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 387
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 388
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$600(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$700(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$800(Landroid/text/DynamicLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$900(Landroid/text/DynamicLayout$Builder;)F

    move-result v9

    .line 387
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 390
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 391
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1000(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 392
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1100(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 393
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1200(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 394
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1300(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 396
    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/DynamicLayout$Builder;
    .param p2, "x1"    # Landroid/text/DynamicLayout$1;

    .line 45
    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 15
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 16
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "justificationMode"    # I
    .param p13, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p14, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p13

    .line 366
    invoke-static {v10, v9}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 369
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v3, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 371
    invoke-virtual {v3, v5}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 372
    invoke-virtual {v3, v7, v6}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 373
    move/from16 v11, p14

    invoke-virtual {v3, v11}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 374
    invoke-virtual {v3, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    .line 375
    .local v3, "b":Landroid/text/DynamicLayout$Builder;
    iput-object v9, v8, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 376
    move/from16 v12, p9

    iput-boolean v12, v8, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 377
    move/from16 v13, p10

    iput v13, v8, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 378
    move/from16 v14, p12

    iput v14, v8, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 379
    move/from16 v15, p11

    iput v15, v8, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 381
    invoke-direct {v8, v3}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 383
    invoke-static {v3}, Landroid/text/DynamicLayout$Builder;->access$100(Landroid/text/DynamicLayout$Builder;)V

    .line 384
    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .line 774
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 775
    .local v0, "line":I
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 777
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 778
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v1, v3

    .line 779
    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 780
    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 781
    return-void

    .line 784
    :cond_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v3, v2

    aget v1, v1, v3

    .line 785
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1

    .line 786
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 787
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 788
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 790
    :cond_1
    return-void
.end method

.method private contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 698
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 699
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 700
    .local v0, "spanned":Landroid/text/Spanned;
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 701
    return v1

    .line 706
    .end local v0    # "spanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 707
    .local v0, "paint":Landroid/graphics/Paint;
    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1

    .line 708
    move-object v2, p1

    check-cast v2, Landroid/text/PrecomputedText;

    .line 709
    .local v2, "precomputed":Landroid/text/PrecomputedText;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    .line 710
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    goto :goto_0

    .line 711
    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 713
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 714
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    nop

    :cond_3
    :goto_1
    return v1
.end method

.method private createBlocks()V
    .locals 5

    .line 722
    const/16 v0, 0x190

    .line 723
    .local v0, "offset":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 724
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 727
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    .line 728
    if-gez v0, :cond_1

    .line 729
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 730
    nop

    .line 738
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 739
    nop

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 740
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 742
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 732
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 733
    add-int/lit16 v0, v0, 0x190

    goto :goto_0
.end method

.method private static createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p1, "display"    # Ljava/lang/CharSequence;

    .line 402
    if-nez p0, :cond_0

    .line 403
    return-object p1

    .line 404
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 405
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 407
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private generate(Landroid/text/DynamicLayout$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 412
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1400(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 413
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1500(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 414
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 416
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 417
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 433
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 434
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 435
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 436
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 437
    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 438
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 440
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 444
    :goto_0
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 451
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    new-array v0, v1, [I

    .line 453
    .local v0, "start":[I
    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_1

    .line 455
    .end local v0    # "start":[I
    :cond_1
    new-array v0, v2, [I

    .line 458
    .restart local v0    # "start":[I
    :goto_1
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 460
    .local v1, "dirs":[Landroid/text/Layout$Directions;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1700(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 461
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 462
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 463
    .local v5, "asc":I
    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 465
    .local v6, "desc":I
    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v0, v4

    .line 466
    aput v4, v0, v3

    .line 467
    const/4 v7, 0x2

    aput v6, v0, v7

    .line 468
    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 470
    sub-int v7, v6, v5

    aput v7, v0, v3

    .line 471
    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 473
    iget-object v3, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v3, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 475
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 477
    .local v3, "baseLength":I
    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7, v4, v4, v3}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 479
    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_4

    .line 480
    iget-object v7, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v7, :cond_2

    .line 481
    new-instance v7, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v7, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v7, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 484
    :cond_2
    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    .line 485
    .local v7, "sp":Landroid/text/Spannable;
    const-class v8, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v7, v4, v3, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 486
    .local v8, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    move v9, v4

    .local v9, "i":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_3

    .line 487
    aget-object v10, v8, v9

    invoke-interface {v7, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 486
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 490
    .end local v9    # "i":I
    :cond_3
    iget-object v9, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v10, 0x800012

    invoke-interface {v7, v9, v4, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 494
    .end local v7    # "sp":Landroid/text/Spannable;
    .end local v8    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_4
    return-void
.end method

.method private getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 2
    .param p1, "line"    # I

    .line 1056
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateAlwaysNeedsToBeRedrawn(I)V
    .locals 5
    .param p1, "blockIndex"    # I

    .line 752
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 753
    .local v0, "startLine":I
    :goto_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    .line 754
    .local v1, "endLine":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-gt v2, v1, :cond_3

    .line 755
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 756
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v3, :cond_1

    .line 757
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 759
    :cond_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 760
    return-void

    .line 754
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 763
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v2, :cond_4

    .line 764
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 766
    :cond_4
    return-void
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .line 948
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 962
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .line 955
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .line 1044
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1128
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 1129
    const/4 v0, 0x0

    return v0

    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1119
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    return v0

    .line 1123
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1062
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1052
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .line 984
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1024
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public getLineCount()I
    .locals 1

    .line 996
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1006
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .line 1034
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineExtra(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1014
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1019
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1001
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .line 977
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1029
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .line 1039
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public reflow(Ljava/lang/CharSequence;III)V
    .locals 34
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v1, p0

    .line 499
    iget-object v2, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    if-eq v3, v2, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    iget-object v2, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 503
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 507
    .local v4, "len":I
    add-int/lit8 v5, p2, -0x1

    const/16 v6, 0xa

    invoke-static {v2, v6, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    .line 508
    .local v5, "find":I
    const/4 v7, 0x1

    if-gez v5, :cond_1

    .line 509
    const/4 v5, 0x0

    goto :goto_0

    .line 511
    :cond_1
    add-int/2addr v5, v7

    .line 514
    :goto_0
    sub-int v8, p2, v5

    .line 515
    .local v8, "diff":I
    add-int v9, p3, v8

    .line 516
    .end local p3    # "before":I
    .local v9, "before":I
    add-int v10, p4, v8

    .line 517
    .end local p4    # "after":I
    .local v10, "after":I
    sub-int v0, p2, v8

    .line 522
    .end local v8    # "diff":I
    .end local p2    # "where":I
    .local v0, "where":I
    add-int v8, v0, v10

    invoke-static {v2, v6, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 523
    .local v6, "look":I
    if-gez v6, :cond_2

    .line 524
    move v6, v4

    goto :goto_1

    .line 526
    :cond_2
    add-int/2addr v6, v7

    .line 528
    :goto_1
    add-int v8, v0, v10

    sub-int v8, v6, v8

    .line 529
    .local v8, "change":I
    add-int/2addr v9, v8

    .line 530
    add-int/2addr v10, v8

    .line 534
    instance-of v11, v2, Landroid/text/Spanned;

    if-eqz v11, :cond_7

    .line 535
    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    .line 539
    .local v11, "sp":Landroid/text/Spanned;
    :goto_2
    const/4 v13, 0x0

    .line 541
    .local v13, "again":Z
    add-int v14, v0, v10

    const-class v15, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v11, v0, v14, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 544
    .local v14, "force":[Ljava/lang/Object;
    move v15, v9

    move v9, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v9, "where":I
    .local v15, "before":I
    :goto_3
    array-length v7, v14

    if-ge v0, v7, :cond_5

    .line 545
    aget-object v7, v14, v0

    invoke-interface {v11, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 546
    .local v7, "st":I
    aget-object v12, v14, v0

    invoke-interface {v11, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 548
    .local v12, "en":I
    if-ge v7, v9, :cond_3

    .line 549
    const/4 v13, 0x1

    .line 551
    sub-int v18, v9, v7

    .line 552
    .local v18, "diff":I
    add-int v15, v15, v18

    .line 553
    add-int v10, v10, v18

    .line 554
    sub-int v9, v9, v18

    .line 557
    .end local v18    # "diff":I
    :cond_3
    add-int v3, v9, v10

    if-le v12, v3, :cond_4

    .line 558
    const/4 v3, 0x1

    .line 560
    .end local v13    # "again":Z
    .local v3, "again":Z
    add-int v13, v9, v10

    sub-int v13, v12, v13

    .line 561
    .local v13, "diff":I
    add-int/2addr v15, v13

    .line 562
    add-int/2addr v10, v13

    .line 544
    .end local v7    # "st":I
    .end local v12    # "en":I
    .end local v13    # "diff":I
    move v13, v3

    .end local v3    # "again":Z
    .local v13, "again":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p1

    const/4 v7, 0x1

    goto :goto_3

    .line 565
    .end local v0    # "i":I
    .end local v14    # "force":[Ljava/lang/Object;
    :cond_5
    if-nez v13, :cond_6

    .end local v11    # "sp":Landroid/text/Spanned;
    .end local v13    # "again":Z
    goto :goto_4

    .line 535
    .restart local v11    # "sp":Landroid/text/Spanned;
    :cond_6
    move v0, v9

    move v9, v15

    move-object/from16 v3, p1

    const/4 v7, 0x1

    goto :goto_2

    .line 570
    .end local v11    # "sp":Landroid/text/Spanned;
    .end local v15    # "before":I
    .local v0, "where":I
    .local v9, "before":I
    :cond_7
    move v15, v9

    move v9, v0

    .end local v0    # "where":I
    .local v9, "where":I
    .restart local v15    # "before":I
    :goto_4
    invoke-virtual {v1, v9}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v3

    .line 571
    .local v3, "startline":I
    invoke-virtual {v1, v3}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v7

    .line 573
    .local v7, "startv":I
    add-int v0, v9, v15

    invoke-virtual {v1, v0}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 574
    .local v0, "endline":I
    add-int v11, v9, v10

    if-ne v11, v4, :cond_8

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    .line 576
    .end local v0    # "endline":I
    .local v11, "endline":I
    :cond_8
    move v11, v0

    invoke-virtual {v1, v11}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v12

    .line 577
    .local v12, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    if-ne v11, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    move v13, v0

    .line 584
    .local v13, "islast":Z
    sget-object v14, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v14

    .line 585
    :try_start_0
    sget-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 586
    .local v0, "reflowed":Landroid/text/StaticLayout;
    sget-object v18, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 587
    .local v18, "b":Landroid/text/StaticLayout$Builder;
    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "find":I
    .local v19, "find":I
    :try_start_1
    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 588
    sput-object v5, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 589
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 591
    if-nez v0, :cond_a

    .line 592
    new-instance v14, Landroid/text/StaticLayout;

    invoke-direct {v14, v5}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v14

    .line 593
    add-int v5, v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v0

    .end local v0    # "reflowed":Landroid/text/StaticLayout;
    .local v20, "reflowed":Landroid/text/StaticLayout;
    invoke-static {v2, v9, v5, v14, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v18

    .line 596
    move-object/from16 v5, v18

    move-object/from16 v14, v20

    goto :goto_6

    .end local v20    # "reflowed":Landroid/text/StaticLayout;
    .restart local v0    # "reflowed":Landroid/text/StaticLayout;
    :cond_a
    move-object v14, v0

    move-object/from16 v5, v18

    .end local v0    # "reflowed":Landroid/text/StaticLayout;
    .end local v18    # "b":Landroid/text/StaticLayout$Builder;
    .local v5, "b":Landroid/text/StaticLayout$Builder;
    .local v14, "reflowed":Landroid/text/StaticLayout;
    :goto_6
    add-int v0, v9, v10

    invoke-virtual {v5, v2, v9, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 597
    move/from16 v21, v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .end local v6    # "look":I
    .local v21, "look":I
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v6

    move/from16 v22, v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v8

    .end local v8    # "change":I
    .local v22, "change":I
    invoke-virtual {v0, v6, v8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 601
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v6, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 602
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v6, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 603
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v6, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 604
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v6, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 605
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v6, v1, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 606
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-nez v13, :cond_b

    .line 607
    const/4 v6, 0x1

    goto :goto_7

    .line 606
    :cond_b
    nop

    .line 607
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    .line 609
    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6, v0}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 610
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    .line 615
    .local v0, "n":I
    add-int v6, v9, v10

    if-eq v6, v4, :cond_c

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v14, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    add-int v8, v9, v10

    if-ne v6, v8, :cond_c

    .line 616
    add-int/lit8 v0, v0, -0x1

    .line 619
    .end local v0    # "n":I
    .local v6, "n":I
    :cond_c
    move v6, v0

    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v11, v3

    invoke-virtual {v0, v3, v8}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 620
    iget-object v0, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v8, v11, v3

    invoke-virtual {v0, v3, v8}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 624
    invoke-virtual {v14, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 625
    .local v0, "ht":I
    const/4 v8, 0x0

    .local v8, "toppad":I
    const/16 v18, 0x0

    .line 627
    .local v18, "botpad":I
    move/from16 v23, v4

    iget-boolean v4, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .end local v4    # "len":I
    .local v23, "len":I
    if-eqz v4, :cond_d

    if-nez v3, :cond_d

    .line 628
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v8

    .line 629
    iput v8, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 630
    sub-int/2addr v0, v8

    .line 632
    :cond_d
    iget-boolean v4, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_e

    if-eqz v13, :cond_e

    .line 633
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v4

    .line 634
    .end local v18    # "botpad":I
    .local v4, "botpad":I
    iput v4, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 635
    add-int/2addr v0, v4

    .line 638
    move/from16 v18, v4

    .end local v0    # "ht":I
    .local v4, "ht":I
    .restart local v18    # "botpad":I
    :cond_e
    move v4, v0

    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v24, v13

    sub-int v13, v10, v15

    .end local v13    # "islast":Z
    .local v24, "islast":Z
    move/from16 v25, v15

    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15, v13}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 639
    .end local v15    # "before":I
    .local v25, "before":I
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v13, v7, v12

    add-int/2addr v13, v4

    const/4 v15, 0x1

    invoke-virtual {v0, v3, v15, v13}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 645
    iget-boolean v0, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v13, 0x5

    if-eqz v0, :cond_f

    .line 646
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 647
    .local v0, "ints":[I
    const/high16 v15, -0x80000000

    aput v15, v0, v13

    goto :goto_8

    .line 649
    .end local v0    # "ints":[I
    :cond_f
    new-array v0, v13, [I

    .restart local v0    # "ints":[I
    :goto_8
    move-object v15, v0

    .line 652
    .end local v0    # "ints":[I
    .local v15, "ints":[I
    const/4 v0, 0x1

    new-array v13, v0, [Landroid/text/Layout$Directions;

    .line 654
    .local v13, "objects":[Landroid/text/Layout$Directions;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v6, :cond_16

    .line 655
    move/from16 v27, v4

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 656
    .local v4, "start":I
    .local v27, "ht":I
    const/16 v17, 0x0

    aput v4, v15, v17

    .line 657
    aget v20, v15, v17

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v28

    shl-int/lit8 v28, v28, 0x1e

    or-int v20, v20, v28

    aput v20, v15, v17

    .line 658
    aget v20, v15, v17

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v28

    if-eqz v28, :cond_10

    const/high16 v28, 0x20000000

    goto :goto_a

    :cond_10
    move/from16 v28, v17

    :goto_a
    or-int v20, v20, v28

    aput v20, v15, v17

    .line 660
    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v20

    add-int v20, v20, v7

    .line 661
    .local v20, "top":I
    if-lez v0, :cond_11

    .line 662
    sub-int v20, v20, v8

    .line 663
    :cond_11
    const/16 v16, 0x1

    aput v20, v15, v16

    .line 665
    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v28

    .line 666
    .local v28, "desc":I
    move/from16 v29, v7

    add-int/lit8 v7, v6, -0x1

    .end local v7    # "startv":I
    .local v29, "startv":I
    if-ne v0, v7, :cond_12

    .line 667
    add-int v28, v28, v18

    .line 669
    :cond_12
    const/4 v7, 0x2

    aput v28, v15, v7

    .line 670
    const/4 v7, 0x3

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v30

    aput v30, v15, v7

    .line 671
    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    const/16 v17, 0x0

    aput-object v7, v13, v17

    .line 673
    add-int/lit8 v7, v6, -0x1

    if-ne v0, v7, :cond_13

    add-int v7, v9, v10

    goto :goto_b

    :cond_13
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v14, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 674
    .local v7, "end":I
    :goto_b
    move/from16 v31, v8

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v8

    .end local v8    # "toppad":I
    .local v31, "toppad":I
    and-int/lit16 v8, v8, 0xff

    const/16 v30, 0x4

    aput v8, v15, v30

    .line 675
    aget v8, v15, v30

    .line 676
    invoke-direct {v1, v2, v4, v7}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 677
    const/16 v32, 0x100

    goto :goto_c

    :cond_14
    move/from16 v32, v17

    :goto_c
    or-int v8, v8, v32

    aput v8, v15, v30

    .line 679
    iget-boolean v8, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v8, :cond_15

    .line 680
    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v8

    const/16 v26, 0x5

    aput v8, v15, v26

    .line 681
    const/4 v8, 0x6

    invoke-virtual {v14, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v30

    aput v30, v15, v8

    goto :goto_d

    .line 684
    :cond_15
    const/16 v26, 0x5

    :goto_d
    iget-object v8, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v33, v2

    add-int v2, v3, v0

    .end local v2    # "text":Ljava/lang/CharSequence;
    .local v33, "text":Ljava/lang/CharSequence;
    invoke-virtual {v8, v2, v15}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 685
    iget-object v2, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v8, v3, v0

    invoke-virtual {v2, v8, v13}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 654
    .end local v4    # "start":I
    .end local v7    # "end":I
    .end local v20    # "top":I
    .end local v28    # "desc":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v27

    move/from16 v7, v29

    move/from16 v8, v31

    move-object/from16 v2, v33

    goto/16 :goto_9

    .line 688
    .end local v0    # "i":I
    .end local v27    # "ht":I
    .end local v29    # "startv":I
    .end local v31    # "toppad":I
    .end local v33    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    .local v4, "ht":I
    .local v7, "startv":I
    .restart local v8    # "toppad":I
    :cond_16
    move-object/from16 v33, v2

    move/from16 v27, v4

    move/from16 v29, v7

    move/from16 v31, v8

    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v4    # "ht":I
    .end local v7    # "startv":I
    .end local v8    # "toppad":I
    .restart local v27    # "ht":I
    .restart local v29    # "startv":I
    .restart local v31    # "toppad":I
    .restart local v33    # "text":Ljava/lang/CharSequence;
    add-int/lit8 v0, v11, -0x1

    invoke-virtual {v1, v3, v0, v6}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 690
    invoke-virtual {v5}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 691
    sget-object v2, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 692
    :try_start_2
    sput-object v14, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 693
    sput-object v5, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 694
    monitor-exit v2

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 589
    .end local v5    # "b":Landroid/text/StaticLayout$Builder;
    .end local v14    # "reflowed":Landroid/text/StaticLayout;
    .end local v18    # "botpad":I
    .end local v21    # "look":I
    .end local v22    # "change":I
    .end local v23    # "len":I
    .end local v24    # "islast":Z
    .end local v25    # "before":I
    .end local v27    # "ht":I
    .end local v29    # "startv":I
    .end local v31    # "toppad":I
    .end local v33    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    .local v4, "len":I
    .local v6, "look":I
    .restart local v7    # "startv":I
    .local v8, "change":I
    .local v13, "islast":Z
    .local v15, "before":I
    :catchall_1
    move-exception v0

    move-object/from16 v33, v2

    move/from16 v23, v4

    move/from16 v21, v6

    move/from16 v29, v7

    move/from16 v22, v8

    move/from16 v24, v13

    move/from16 v25, v15

    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v4    # "len":I
    .end local v6    # "look":I
    .end local v7    # "startv":I
    .end local v8    # "change":I
    .end local v13    # "islast":Z
    .end local v15    # "before":I
    .restart local v21    # "look":I
    .restart local v22    # "change":I
    .restart local v23    # "len":I
    .restart local v24    # "islast":Z
    .restart local v25    # "before":I
    .restart local v29    # "startv":I
    .restart local v33    # "text":Ljava/lang/CharSequence;
    goto :goto_e

    .end local v19    # "find":I
    .end local v21    # "look":I
    .end local v22    # "change":I
    .end local v23    # "len":I
    .end local v24    # "islast":Z
    .end local v25    # "before":I
    .end local v29    # "startv":I
    .end local v33    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "text":Ljava/lang/CharSequence;
    .restart local v4    # "len":I
    .local v5, "find":I
    .restart local v6    # "look":I
    .restart local v7    # "startv":I
    .restart local v8    # "change":I
    .restart local v13    # "islast":Z
    .restart local v15    # "before":I
    :catchall_2
    move-exception v0

    move-object/from16 v33, v2

    move/from16 v23, v4

    move/from16 v19, v5

    move/from16 v21, v6

    move/from16 v29, v7

    move/from16 v22, v8

    move/from16 v24, v13

    move/from16 v25, v15

    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v4    # "len":I
    .end local v5    # "find":I
    .end local v6    # "look":I
    .end local v7    # "startv":I
    .end local v8    # "change":I
    .end local v13    # "islast":Z
    .end local v15    # "before":I
    .restart local v19    # "find":I
    .restart local v21    # "look":I
    .restart local v22    # "change":I
    .restart local v23    # "len":I
    .restart local v24    # "islast":Z
    .restart local v25    # "before":I
    .restart local v29    # "startv":I
    .restart local v33    # "text":Ljava/lang/CharSequence;
    :goto_e
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_e
.end method

.method public setBlockIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "blockIndex"    # I

    .line 970
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    .line 971
    return-void
.end method

.method public setBlocksDataForTest([I[III)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I
    .param p4, "totalLines"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 934
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 935
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 936
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 939
    :goto_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge v0, p4, :cond_0

    .line 940
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_0

    .line 942
    :cond_0
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .line 991
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 992
    return-void
.end method

.method public updateBlocks(III)V
    .locals 20
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 811
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_0

    .line 812
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 813
    return-void

    .line 816
    :cond_0
    const/4 v3, -0x1

    .line 817
    .local v3, "firstBlock":I
    const/4 v4, -0x1

    .line 818
    .local v4, "lastBlock":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v6, v7, :cond_2

    .line 819
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v7, v7, v6

    if-lt v7, v1, :cond_1

    .line 820
    move v3, v6

    .line 821
    goto :goto_1

    .line 818
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 824
    .end local v6    # "i":I
    :cond_2
    :goto_1
    move v6, v3

    .restart local v6    # "i":I
    :goto_2
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v6, v7, :cond_4

    .line 825
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v7, v7, v6

    if-lt v7, v2, :cond_3

    .line 826
    move v4, v6

    .line 827
    goto :goto_3

    .line 824
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 830
    .end local v6    # "i":I
    :cond_4
    :goto_3
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v4

    .line 832
    .local v6, "lastBlockEndLine":I
    const/4 v7, 0x1

    if-nez v3, :cond_5

    .line 833
    move v8, v5

    goto :goto_4

    :cond_5
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v8, v7

    :goto_4
    if-le v1, v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    move v8, v5

    .line 834
    .local v8, "createBlockBefore":Z
    :goto_5
    if-lez p3, :cond_7

    move v9, v7

    goto :goto_6

    :cond_7
    move v9, v5

    .line 835
    .local v9, "createBlock":Z
    :goto_6
    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v10, v10, v4

    if-ge v2, v10, :cond_8

    move v10, v7

    goto :goto_7

    :cond_8
    move v10, v5

    .line 837
    .local v10, "createBlockAfter":Z
    :goto_7
    const/4 v11, 0x0

    .line 838
    .local v11, "numAddedBlocks":I
    if-eqz v8, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 839
    :cond_9
    if-eqz v9, :cond_a

    add-int/lit8 v11, v11, 0x1

    .line 840
    :cond_a
    if-eqz v10, :cond_b

    add-int/lit8 v11, v11, 0x1

    .line 842
    :cond_b
    sub-int v12, v4, v3

    add-int/2addr v12, v7

    .line 843
    .local v12, "numRemovedBlocks":I
    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v13, v11

    sub-int/2addr v13, v12

    .line 845
    .local v13, "newNumberOfBlocks":I
    const/4 v14, -0x1

    if-nez v13, :cond_c

    .line 847
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aput v5, v7, v5

    .line 848
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v14, v7, v5

    .line 849
    const/4 v5, 0x1

    iput v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 850
    return-void

    .line 853
    :cond_c
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v7, v7

    if-le v13, v7, :cond_d

    .line 854
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    .line 855
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 854
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    .line 856
    .local v7, "blockEndLines":[I
    array-length v14, v7

    new-array v14, v14, [I

    .line 857
    .local v14, "blockIndices":[I
    move/from16 v16, v6

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .end local v6    # "lastBlockEndLine":I
    .local v16, "lastBlockEndLine":I
    invoke-static {v6, v5, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v6, v5, v14, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v5, v4, 0x1

    move/from16 v18, v10

    add-int v10, v3, v11

    .end local v10    # "createBlockAfter":Z
    .local v18, "createBlockAfter":Z
    move/from16 v19, v9

    iget v9, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .end local v9    # "createBlock":Z
    .local v19, "createBlock":Z
    sub-int/2addr v9, v4

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    invoke-static {v6, v5, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v6, v4, 0x1

    add-int v9, v3, v11

    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v10, v4

    sub-int/2addr v10, v15

    invoke-static {v5, v6, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 864
    iput-object v14, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 865
    .end local v7    # "blockEndLines":[I
    .end local v14    # "blockIndices":[I
    goto :goto_8

    .end local v16    # "lastBlockEndLine":I
    .end local v18    # "createBlockAfter":Z
    .end local v19    # "createBlock":Z
    .restart local v6    # "lastBlockEndLine":I
    .restart local v9    # "createBlock":Z
    .restart local v10    # "createBlockAfter":Z
    :cond_d
    move/from16 v16, v6

    move/from16 v19, v9

    move/from16 v18, v10

    .end local v6    # "lastBlockEndLine":I
    .end local v9    # "createBlock":Z
    .end local v10    # "createBlockAfter":Z
    .restart local v16    # "lastBlockEndLine":I
    .restart local v18    # "createBlockAfter":Z
    .restart local v19    # "createBlock":Z
    add-int v5, v11, v12

    if-eqz v5, :cond_e

    .line 866
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v9, v3, v11

    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v10, v4

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-static {v5, v6, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int v9, v3, v11

    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v10, v4

    sub-int/2addr v10, v14

    invoke-static {v5, v6, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    :cond_e
    :goto_8
    add-int v5, v11, v12

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v5, :cond_12

    .line 873
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 874
    .local v5, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sub-int v6, v11, v12

    .line 875
    .local v6, "changedBlockCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9
    move/from16 v7, v17

    .end local v17    # "i":I
    .local v7, "i":I
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v7, v9, :cond_11

    .line 876
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 877
    .local v9, "block":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_f

    .line 879
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v4, :cond_10

    .line 883
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 884
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 875
    .end local v9    # "block":Ljava/lang/Integer;
    :cond_10
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "i":I
    .restart local v17    # "i":I
    goto :goto_9

    .line 887
    .end local v17    # "i":I
    :cond_11
    iput-object v5, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 890
    .end local v5    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v6    # "changedBlockCount":I
    :cond_12
    iput v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 892
    sub-int v5, v2, v1

    const/4 v6, 0x1

    add-int/2addr v5, v6

    sub-int v5, p3, v5

    .line 893
    .local v5, "deltaLines":I
    if-eqz v5, :cond_13

    .line 896
    add-int v6, v3, v11

    .line 897
    .local v6, "newFirstChangedBlock":I
    move v7, v6

    .restart local v7    # "i":I
    :goto_a
    iget v9, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v7, v9, :cond_14

    .line 898
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v10, v9, v7

    add-int/2addr v10, v5

    aput v10, v9, v7

    .line 897
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 901
    .end local v6    # "newFirstChangedBlock":I
    .end local v7    # "i":I
    :cond_13
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 903
    .restart local v6    # "newFirstChangedBlock":I
    :cond_14
    iget v7, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 905
    move v7, v3

    .line 906
    .local v7, "blockIndex":I
    if-eqz v8, :cond_15

    .line 907
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v10, v1, -0x1

    aput v10, v9, v7

    .line 908
    invoke-direct {v0, v7}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 909
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v10, -0x1

    aput v10, v9, v7

    .line 910
    add-int/lit8 v7, v7, 0x1

    .line 913
    :cond_15
    if-eqz v19, :cond_16

    .line 914
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v10, v1, p3

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    aput v10, v9, v7

    .line 915
    invoke-direct {v0, v7}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 916
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v10, -0x1

    aput v10, v9, v7

    .line 917
    add-int/lit8 v7, v7, 0x1

    .line 920
    :cond_16
    if-eqz v18, :cond_17

    .line 921
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v10, v16, v5

    aput v10, v9, v7

    .line 922
    invoke-direct {v0, v7}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 923
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v10, -0x1

    aput v10, v9, v7

    .line 925
    :cond_17
    return-void
.end method
