.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLeftPaddings:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mRightPaddings:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .line 572
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 573
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 577
    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 574
    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 575
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 577
    :goto_1
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    .line 572
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1414
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 579
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 582
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 583
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 584
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 585
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 587
    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 588
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    goto :goto_2

    .line 589
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 590
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 593
    :goto_2
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 594
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 595
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 597
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 598
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 599
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftPaddings:[I

    .line 600
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightPaddings:[I

    .line 601
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    .line 603
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p2, "x1"    # Landroid/text/StaticLayout$1;

    .line 50
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 564
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1398
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1414
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 566
    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 567
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 568
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 569
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 481
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 496
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    .line 509
    move/from16 v12, p13

    if-nez v10, :cond_0

    .line 510
    nop

    .line 509
    move-object v1, v9

    goto :goto_1

    .line 511
    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 512
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    .line 509
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 513
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :goto_1
    move-object v0, v8

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1398
    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1414
    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 516
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 517
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 518
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 519
    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 520
    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 537
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-eqz v10, :cond_2

    .line 538
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    .line 540
    .local v6, "e":Landroid/text/Layout$Ellipsizer;
    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 541
    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 542
    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 543
    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 545
    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 546
    .end local v6    # "e":Landroid/text/Layout$Ellipsizer;
    nop

    .line 551
    move/from16 v6, p5

    goto :goto_2

    .line 547
    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 548
    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 551
    :goto_2
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 552
    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v13, v7

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    .line 553
    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 555
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {v8, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 557
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    .line 558
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 468
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 18
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    .line 1061
    invoke-direct {v0, v2}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v3

    sub-float v3, p5, v3

    .line 1062
    .end local p5    # "avail":F
    .local v3, "avail":F
    cmpg-float v5, p8, v3

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    .line 1064
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v8, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v7

    aput v6, v5, v8

    .line 1065
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    .line 1066
    return-void

    .line 1069
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1070
    .local v5, "ellipsisWidth":F
    const/4 v9, 0x0

    .line 1071
    .local v9, "ellipsisStart":I
    const/4 v10, 0x0

    .line 1072
    .local v10, "ellipsisCount":I
    sub-int v6, p2, p1

    .line 1075
    .local v6, "len":I
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const/4 v4, 0x1

    if-ne v1, v7, :cond_4

    .line 1076
    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v4, :cond_3

    .line 1077
    const/4 v7, 0x0

    .line 1080
    .local v7, "sum":F
    move v11, v7

    move v7, v6

    .local v7, "i":I
    .local v11, "sum":F
    :goto_0
    if-lez v7, :cond_2

    .line 1081
    add-int/lit8 v13, v7, -0x1

    add-int v13, v13, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    .line 1082
    .local v13, "w":F
    add-float v14, v13, v11

    add-float/2addr v14, v5

    cmpl-float v14, v14, v3

    if-lez v14, :cond_1

    .line 1083
    :goto_1
    if-ge v7, v6, :cond_2

    add-int v14, v7, p1

    sub-int v14, v14, p4

    aget v14, p3, v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    .line 1084
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1089
    :cond_1
    add-float/2addr v11, v13

    .line 1080
    .end local v13    # "w":F
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1092
    :cond_2
    const/4 v9, 0x0

    .line 1093
    move v10, v7

    .line 1094
    .end local v7    # "i":I
    .end local v11    # "sum":F
    goto/16 :goto_a

    .line 1095
    :cond_3
    const-string v7, "StaticLayout"

    const/4 v4, 0x5

    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1096
    const-string v4, "StaticLayout"

    const-string v7, "Start Ellipsis only supported with one line"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1099
    :cond_4
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v4, :cond_c

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v4, :cond_c

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v4, :cond_5

    goto/16 :goto_6

    .line 1122
    :cond_5
    iget v4, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    .line 1123
    const/4 v4, 0x0

    .local v4, "lsum":F
    const/4 v7, 0x0

    .line 1124
    .local v7, "rsum":F
    const/4 v11, 0x0

    .local v11, "left":I
    move v13, v6

    .line 1126
    .local v13, "right":I
    sub-float v14, v3, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 1127
    .local v14, "ravail":F
    :goto_2
    if-lez v13, :cond_7

    .line 1128
    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    aget v15, p3, v15

    .line 1130
    .local v15, "w":F
    add-float v16, v15, v7

    cmpl-float v16, v16, v14

    if-lez v16, :cond_6

    .line 1131
    move v1, v13

    .end local v13    # "right":I
    .local v1, "right":I
    :goto_3
    if-ge v1, v6, :cond_8

    add-int v13, v1, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    cmpl-float v13, v13, v12

    if-nez v13, :cond_8

    .line 1132
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1136
    .end local v1    # "right":I
    .restart local v13    # "right":I
    :cond_6
    add-float/2addr v7, v15

    .line 1127
    .end local v15    # "w":F
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v1, p6

    goto :goto_2

    .line 1139
    :cond_7
    move v1, v13

    .end local v13    # "right":I
    .restart local v1    # "right":I
    :cond_8
    sub-float v12, v3, v5

    sub-float/2addr v12, v7

    .line 1140
    .local v12, "lavail":F
    const/4 v11, 0x0

    move/from16 v17, v11

    move v11, v4

    move/from16 v4, v17

    .local v4, "left":I
    .local v11, "lsum":F
    :goto_4
    if-ge v4, v1, :cond_a

    .line 1141
    add-int v13, v4, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    .line 1143
    .local v13, "w":F
    add-float v15, v13, v11

    cmpl-float v15, v15, v12

    if-lez v15, :cond_9

    .line 1144
    goto :goto_5

    .line 1147
    :cond_9
    add-float/2addr v11, v13

    .line 1140
    .end local v13    # "w":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1150
    :cond_a
    :goto_5
    move v9, v4

    .line 1151
    sub-int v10, v1, v4

    .line 1152
    .end local v1    # "right":I
    .end local v4    # "left":I
    .end local v7    # "rsum":F
    .end local v11    # "lsum":F
    .end local v12    # "lavail":F
    .end local v14    # "ravail":F
    goto :goto_a

    .line 1153
    :cond_b
    const-string v1, "StaticLayout"

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1154
    const-string v1, "StaticLayout"

    const-string v4, "Middle Ellipsis only supported with one line"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1101
    :cond_c
    :goto_6
    const/4 v1, 0x0

    .line 1104
    .local v1, "sum":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    move v4, v11

    .end local v11    # "i":I
    .local v4, "i":I
    if-ge v4, v6, :cond_e

    .line 1105
    add-int v7, v4, p1

    sub-int v7, v7, p4

    aget v7, p3, v7

    .line 1107
    .local v7, "w":F
    add-float v11, v7, v1

    add-float/2addr v11, v5

    cmpl-float v11, v11, v3

    if-lez v11, :cond_d

    .line 1108
    goto :goto_8

    .line 1111
    :cond_d
    add-float/2addr v1, v7

    .line 1104
    .end local v7    # "w":F
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "i":I
    .restart local v11    # "i":I
    goto :goto_7

    .line 1114
    .end local v11    # "i":I
    .restart local v4    # "i":I
    :cond_e
    :goto_8
    move v7, v4

    .line 1115
    .end local v9    # "ellipsisStart":I
    .local v7, "ellipsisStart":I
    sub-int v9, v6, v4

    .line 1116
    .end local v10    # "ellipsisCount":I
    .local v9, "ellipsisCount":I
    if-eqz p10, :cond_f

    if-nez v9, :cond_f

    if-lez v6, :cond_f

    .line 1117
    add-int/lit8 v7, v6, -0x1

    .line 1118
    const/4 v1, 0x1

    .line 1120
    .end local v4    # "i":I
    .end local v9    # "ellipsisCount":I
    .local v1, "ellipsisCount":I
    move v10, v1

    goto :goto_9

    .end local v1    # "ellipsisCount":I
    .restart local v9    # "ellipsisCount":I
    :cond_f
    move v10, v9

    .end local v7    # "ellipsisStart":I
    .local v9, "ellipsisStart":I
    .restart local v10    # "ellipsisCount":I
    :goto_9
    move v9, v7

    .line 1158
    :cond_10
    :goto_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1159
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v4, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v2

    const/4 v7, 0x5

    add-int/2addr v4, v7

    aput v9, v1, v4

    .line 1160
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v4, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x6

    aput v10, v1, v4

    .line 1161
    return-void
.end method

.method private getTotalInsets(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1164
    const/4 v0, 0x0

    .line 1165
    .local v0, "totalIndent":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    .line 1166
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1168
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    .line 1169
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1171
    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I
.end method

.method private static native nFinish(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[I[I[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 31
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "measured"    # Landroid/text/MeasuredParagraph;
    .param p17, "bufEnd"    # I
    .param p18, "includePad"    # Z
    .param p19, "trackPad"    # Z
    .param p20, "addLastLineLineSpacing"    # Z
    .param p21, "chs"    # [C
    .param p22, "widths"    # [F
    .param p23, "widthStart"    # I
    .param p24, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p25, "ellipsisWidth"    # F
    .param p26, "textWidth"    # F
    .param p27, "paint"    # Landroid/text/TextPaint;
    .param p28, "moreChars"    # Z

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v15, p11

    move-object/from16 v9, p13

    move/from16 v8, p17

    move/from16 v10, p23

    move-object/from16 v7, p24

    .line 918
    iget v6, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 919
    .local v6, "j":I
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v6, v0

    .line 920
    .local v16, "off":I
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v0, v16, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 921
    .local v4, "want":I
    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 922
    .local v0, "lines":[I
    invoke-virtual/range {p16 .. p16}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    .line 924
    .local v17, "dir":I
    array-length v1, v0

    const/4 v3, 0x0

    if-lt v4, v1, :cond_0

    .line 925
    invoke-static {v4}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 926
    .local v1, "grow":[I
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iput-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 928
    move-object v0, v1

    .line 931
    .end local v0    # "lines":[I
    .end local v1    # "grow":[I
    .local v18, "lines":[I
    :cond_0
    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    .line 932
    const-class v0, Landroid/text/Layout$Directions;

    .line 933
    invoke-static {v6}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 932
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    .line 934
    .local v0, "grow":[Landroid/text/Layout$Directions;
    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 938
    .end local v0    # "grow":[Landroid/text/Layout$Directions;
    :cond_1
    if-eqz v15, :cond_4

    .line 939
    move/from16 v2, p4

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 940
    move/from16 v1, p5

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 941
    move/from16 v0, p6

    iput v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 942
    move/from16 v8, p7

    iput v8, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 944
    move/from16 v19, v3

    .local v19, "i":I
    :goto_0
    move/from16 v20, v19

    .end local v19    # "i":I
    .local v20, "i":I
    array-length v3, v15

    move/from16 v8, v20

    if-ge v8, v3, :cond_3

    .line 945
    .end local v20    # "i":I
    .local v8, "i":I
    aget-object v3, v15, v8

    instance-of v3, v3, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v3, :cond_2

    .line 946
    aget-object v3, v15, v8

    check-cast v3, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v19, p12, v8

    .line 947
    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v12

    const/16 v20, 0x0

    move v3, v13

    move/from16 v21, v4

    move/from16 v4, v19

    .end local v4    # "want":I
    .local v21, "want":I
    move v10, v5

    move/from16 v5, p8

    move/from16 v19, v6

    move-object v6, v9

    .end local v6    # "j":I
    .local v19, "j":I
    move-object v10, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_1

    .line 949
    .end local v19    # "j":I
    .end local v21    # "want":I
    .restart local v4    # "want":I
    .restart local v6    # "j":I
    :cond_2
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    .end local v4    # "want":I
    .end local v6    # "j":I
    .restart local v19    # "j":I
    .restart local v21    # "want":I
    aget-object v0, v15, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v5, p8

    move-object v6, v9

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 944
    :goto_1
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "i":I
    .local v0, "i":I
    move/from16 v2, p4

    move/from16 v1, p5

    move-object v7, v10

    move/from16 v6, v19

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v5, 0x1

    move/from16 v8, p7

    move/from16 v10, p23

    move/from16 v19, v0

    move/from16 v0, p6

    goto :goto_0

    .line 953
    .end local v0    # "i":I
    .end local v19    # "j":I
    .end local v21    # "want":I
    .restart local v4    # "want":I
    .restart local v6    # "j":I
    :cond_3
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    .end local v4    # "want":I
    .end local v6    # "j":I
    .restart local v19    # "j":I
    .restart local v21    # "want":I
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 954
    .end local p4    # "above":I
    .local v0, "above":I
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 955
    .end local p5    # "below":I
    .local v1, "below":I
    iget v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 956
    .end local p6    # "top":I
    .local v2, "top":I
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 959
    .end local p7    # "bottom":I
    .local v3, "bottom":I
    move/from16 v22, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    goto :goto_2

    .end local v0    # "above":I
    .end local v1    # "below":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v19    # "j":I
    .end local v21    # "want":I
    .restart local v4    # "want":I
    .restart local v6    # "j":I
    .restart local p4    # "above":I
    .restart local p5    # "below":I
    .restart local p6    # "top":I
    .restart local p7    # "bottom":I
    :cond_4
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    move/from16 v22, p4

    move/from16 v25, p5

    move/from16 v26, p6

    move/from16 v27, p7

    .end local v4    # "want":I
    .end local v6    # "j":I
    .end local p4    # "above":I
    .end local p5    # "below":I
    .end local p6    # "top":I
    .end local p7    # "bottom":I
    .restart local v19    # "j":I
    .restart local v21    # "want":I
    .local v22, "above":I
    .local v25, "below":I
    .local v26, "top":I
    .local v27, "bottom":I
    :goto_2
    if-nez v19, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v20

    :goto_3
    move/from16 v28, v0

    .line 960
    .local v28, "firstLine":Z
    add-int/lit8 v6, v19, 0x1

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    move/from16 v0, v20

    :goto_4
    move/from16 v29, v0

    .line 962
    .local v29, "currentLineIsTheLastVisibleOne":Z
    if-eqz v10, :cond_10

    .line 965
    if-eqz p28, :cond_7

    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v2, :cond_8

    move v0, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    :cond_8
    move/from16 v0, v20

    :goto_5
    move v6, v1

    move-object v7, v10

    move/from16 v8, p23

    move v10, v0

    .line 967
    .local v10, "forceEllipsis":Z
    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v6, :cond_9

    if-nez p28, :cond_a

    :cond_9
    if-eqz v28, :cond_b

    if-nez p28, :cond_b

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_d

    :cond_b
    if-nez v28, :cond_e

    if-nez v29, :cond_c

    if-nez p28, :cond_e

    :cond_c
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_e

    :cond_d
    move v0, v6

    goto :goto_6

    :cond_e
    move/from16 v0, v20

    :goto_6
    move/from16 v23, v0

    .line 972
    .local v23, "doEllipsis":Z
    if-eqz v23, :cond_f

    .line 973
    move-object v0, v11

    move v1, v12

    move v2, v13

    move-object/from16 v3, p22

    move v4, v8

    move/from16 v5, p25

    move/from16 v24, v6

    move-object v6, v7

    move/from16 v7, v19

    move v14, v8

    move/from16 v15, p17

    move/from16 v8, p26

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .end local v10    # "forceEllipsis":Z
    .end local v23    # "doEllipsis":Z
    goto :goto_7

    .line 980
    :cond_f
    move/from16 v24, v6

    move v14, v8

    move/from16 v15, p17

    goto :goto_7

    :cond_10
    move/from16 v14, p23

    move/from16 v15, p17

    const/16 v24, 0x1

    :goto_7
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_11

    .line 981
    const/4 v3, 0x1

    .line 990
    .local v3, "lastLine":Z
    move-object/from16 v1, p1

    goto :goto_a

    .line 983
    .end local v3    # "lastLine":Z
    :cond_11
    if-eq v14, v15, :cond_12

    if-lez v15, :cond_12

    add-int/lit8 v0, v15, -0x1

    .line 984
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_13

    move/from16 v0, v24

    goto :goto_8

    :cond_12
    move-object/from16 v1, p1

    :cond_13
    move/from16 v0, v20

    .line 985
    .local v0, "lastCharIsNewLine":Z
    :goto_8
    if-ne v13, v15, :cond_14

    if-nez v0, :cond_14

    .line 986
    const/4 v3, 0x1

    .end local v0    # "lastCharIsNewLine":Z
    .restart local v3    # "lastLine":Z
    :goto_9
    goto :goto_a

    .line 987
    .end local v3    # "lastLine":Z
    .restart local v0    # "lastCharIsNewLine":Z
    :cond_14
    if-ne v12, v15, :cond_15

    if-eqz v0, :cond_15

    .line 988
    const/4 v3, 0x1

    goto :goto_9

    .line 990
    :cond_15
    nop

    .end local v0    # "lastCharIsNewLine":Z
    move/from16 v3, v20

    .restart local v3    # "lastLine":Z
    :goto_a
    move v0, v3

    .line 994
    .end local v3    # "lastLine":Z
    .local v0, "lastLine":Z
    if-eqz v28, :cond_17

    .line 995
    if-eqz p19, :cond_16

    .line 996
    sub-int v2, v26, v22

    iput v2, v11, Landroid/text/StaticLayout;->mTopPadding:I

    .line 999
    :cond_16
    if-eqz p18, :cond_17

    .line 1000
    move/from16 v22, v26

    .line 1006
    :cond_17
    if-eqz v0, :cond_19

    .line 1007
    if-eqz p19, :cond_18

    .line 1008
    sub-int v2, v27, v25

    iput v2, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1011
    :cond_18
    if-eqz p18, :cond_19

    .line 1012
    move/from16 v25, v27

    .line 1016
    :cond_19
    if-eqz p15, :cond_1d

    if-nez p20, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_b

    .line 1024
    :cond_1a
    move/from16 v30, v0

    goto :goto_d

    .line 1017
    :cond_1b
    :goto_b
    sub-int v4, v25, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v7, v4

    .line 1018
    .local v7, "ex":D
    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_1c

    .line 1019
    add-double/2addr v9, v7

    double-to-int v4, v9

    .line 1021
    .local v4, "extra":I
    move/from16 v30, v0

    goto :goto_c

    .end local v4    # "extra":I
    :cond_1c
    move/from16 v30, v0

    neg-double v0, v7

    .end local v0    # "lastLine":Z
    .local v30, "lastLine":Z
    add-double/2addr v0, v9

    double-to-int v0, v0

    neg-int v4, v0

    .end local v7    # "ex":D
    .restart local v4    # "extra":I
    :goto_c
    move v0, v4

    .line 1023
    .end local v4    # "extra":I
    .local v0, "extra":I
    goto :goto_e

    .line 1024
    .end local v30    # "lastLine":Z
    .local v0, "lastLine":Z
    :cond_1d
    move/from16 v30, v0

    .end local v0    # "lastLine":Z
    .restart local v30    # "lastLine":Z
    :goto_d
    move/from16 v0, v20

    .line 1027
    .local v0, "extra":I
    :goto_e
    add-int/lit8 v1, v16, 0x0

    aput v12, v18, v1

    .line 1028
    add-int/lit8 v1, v16, 0x1

    move v7, v14

    aput p8, v18, v1

    .line 1029
    add-int/lit8 v1, v16, 0x2

    add-int v8, v25, v0

    aput v8, v18, v1

    .line 1030
    add-int/lit8 v1, v16, 0x3

    aput v0, v18, v1

    .line 1034
    iget-boolean v1, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v1, :cond_1f

    if-eqz v29, :cond_1f

    .line 1036
    if-eqz p18, :cond_1e

    move/from16 v1, v27

    goto :goto_f

    :cond_1e
    move/from16 v1, v25

    .line 1038
    .local v1, "maxLineBelow":I
    :goto_f
    sub-int v8, v1, v22

    add-int v8, p8, v8

    iput v8, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1041
    .end local v1    # "maxLineBelow":I
    :cond_1f
    sub-int v1, v25, v22

    add-int/2addr v1, v0

    add-int v1, p8, v1

    .line 1042
    .end local p8    # "v":I
    .local v1, "v":I
    iget v4, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v4, v16, v4

    add-int/lit8 v4, v4, 0x0

    aput v13, v18, v4

    .line 1043
    iget v4, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v4, v16, v4

    add-int/lit8 v4, v4, 0x1

    aput v1, v18, v4

    .line 1047
    add-int/lit8 v4, v16, 0x0

    aget v8, v18, v4

    const/high16 v9, 0x20000000

    and-int v9, p14, v9

    or-int/2addr v8, v9

    aput v8, v18, v4

    .line 1048
    add-int/lit8 v4, v16, 0x4

    aput p14, v18, v4

    .line 1049
    add-int/lit8 v4, v16, 0x0

    aget v8, v18, v4

    shl-int/lit8 v9, v17, 0x1e

    or-int/2addr v8, v9

    aput v8, v18, v4

    .line 1050
    iget-object v4, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v8, v12, v7

    sub-int v9, v13, v7

    move-object/from16 v10, p16

    invoke-virtual {v10, v8, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v8

    aput-object v8, v4, v19

    .line 1052
    iget v4, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 1053
    return v1
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 98
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    move-object/from16 v15, p0

    .line 607
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 608
    .local v14, "source":Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    .line 609
    .local v13, "bufStart":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    .line 610
    .local v12, "bufEnd":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v11

    .line 611
    .local v11, "paint":Landroid/text/TextPaint;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v46

    .line 612
    .local v46, "outerWidth":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v10

    .line 613
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Z

    move-result v47

    .line 614
    .local v47, "fallbackLineSpacing":Z
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    .line 615
    .local v48, "spacingmult":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v49

    .line 616
    .local v49, "spacingadd":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v9, v0

    .line 617
    .local v9, "ellipsizedWidth":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    .line 618
    .local v8, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)Z

    move-result v50

    .line 619
    .local v50, "addLastLineSpacing":Z
    new-instance v0, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v0}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    move-object v7, v0

    .line 620
    .local v7, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    move-object v6, v0

    .line 622
    .local v6, "widths":Landroid/text/AutoGrowArray$FloatArray;
    const/4 v0, 0x0

    iput v0, v15, Landroid/text/StaticLayout;->mLineCount:I

    .line 623
    iput-boolean v0, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 624
    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 626
    const/16 v17, 0x0

    .line 627
    .local v17, "v":I
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v48, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v49, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v5

    .line 629
    .local v16, "needMultiply":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 630
    .local v4, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v18, 0x0

    .line 633
    .local v18, "chooseHtv":[I
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_4

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    .line 645
    :cond_3
    const/16 v59, 0x0

    goto :goto_8

    .line 634
    :cond_4
    :goto_3
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_4

    :cond_5
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    .line 635
    .local v1, "leftLen":I
    :goto_4
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    .line 636
    .local v2, "rightLen":I
    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 637
    .local v3, "indentsLen":I
    new-array v5, v3, [I

    .line 638
    .local v5, "indents":[I
    move/from16 v19, v0

    .local v19, "i":I
    :goto_6
    move/from16 v53, v19

    .end local v19    # "i":I
    .local v53, "i":I
    move/from16 v0, v53

    if-ge v0, v1, :cond_7

    .line 639
    .end local v53    # "i":I
    .local v0, "i":I
    move/from16 v54, v1

    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    .end local v1    # "leftLen":I
    .local v54, "leftLen":I
    aget v1, v1, v0

    aput v1, v5, v0

    .line 638
    add-int/lit8 v19, v0, 0x1

    .end local v0    # "i":I
    .restart local v19    # "i":I
    move/from16 v1, v54

    const/4 v0, 0x0

    goto :goto_6

    .line 641
    .end local v19    # "i":I
    .end local v54    # "leftLen":I
    .restart local v1    # "leftLen":I
    :cond_7
    move/from16 v54, v1

    .end local v1    # "leftLen":I
    .restart local v54    # "leftLen":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v2, :cond_8

    .line 642
    aget v1, v5, v0

    move/from16 v55, v2

    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    .end local v2    # "rightLen":I
    .local v55, "rightLen":I
    aget v2, v2, v0

    add-int/2addr v1, v2

    aput v1, v5, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v55

    goto :goto_7

    .line 644
    .end local v0    # "i":I
    .end local v3    # "indentsLen":I
    .end local v54    # "leftLen":I
    .end local v55    # "rightLen":I
    :cond_8
    nop

    .line 645
    move-object/from16 v59, v5

    .line 648
    .end local v5    # "indents":[I
    .local v59, "indents":[I
    :goto_8
    nop

    .line 649
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v56

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v57

    .line 651
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v58, 0x1

    goto :goto_9

    :cond_9
    const/16 v58, 0x0

    :goto_9
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftPaddings:[I

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightPaddings:[I

    .line 648
    move-object/from16 v60, v0

    move-object/from16 v61, v1

    invoke-static/range {v56 .. v61}, Landroid/text/StaticLayout;->nInit(IIZ[I[I[I)J

    move-result-wide v2

    .line 654
    .local v2, "nativePtr":J
    const/4 v0, 0x0

    .line 655
    .local v0, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    instance-of v1, v14, Landroid/text/Spanned;

    if-eqz v1, :cond_a

    move-object v1, v14

    check-cast v1, Landroid/text/Spanned;

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    move-object v5, v1

    .line 656
    .local v5, "spanned":Landroid/text/Spanned;
    instance-of v1, v14, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_b

    .line 657
    move-object v1, v14

    check-cast v1, Landroid/text/PrecomputedText;

    .line 658
    .local v1, "precomputed":Landroid/text/PrecomputedText;
    nop

    .line 659
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v20

    .line 658
    move-object/from16 v62, v1

    .end local v1    # "precomputed":Landroid/text/PrecomputedText;
    .local v62, "precomputed":Landroid/text/PrecomputedText;
    move-wide/from16 v63, v2

    move v2, v13

    .end local v2    # "nativePtr":J
    .local v63, "nativePtr":J
    move-object/from16 v65, v0

    const/4 v0, 0x0

    move v3, v12

    .end local v0    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v65, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    move/from16 v66, v9

    move-object v9, v4

    move-object v4, v10

    .end local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v66, "ellipsizedWidth":F
    move-object/from16 v67, v9

    const/4 v0, 0x1

    move-object v9, v5

    move-object v5, v11

    .end local v5    # "spanned":Landroid/text/Spanned;
    .local v9, "spanned":Landroid/text/Spanned;
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v68, v8

    move-object v8, v6

    move/from16 v6, v19

    .end local v6    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v8, "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v68, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v69, v7

    move/from16 v7, v20

    .end local v7    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v69, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    invoke-virtual/range {v1 .. v7}, Landroid/text/PrecomputedText;->canUseMeasuredResult(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 661
    move-object/from16 v1, v62

    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v1

    .end local v62    # "precomputed":Landroid/text/PrecomputedText;
    .end local v65    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v1, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    goto :goto_b

    .line 665
    .end local v1    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v67    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v0    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v2    # "nativePtr":J
    .restart local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v5    # "spanned":Landroid/text/Spanned;
    .restart local v6    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v7    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v8, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v9, "ellipsizedWidth":F
    :cond_b
    move-object/from16 v65, v0

    move-wide/from16 v63, v2

    move-object/from16 v67, v4

    move-object/from16 v69, v7

    move-object/from16 v68, v8

    move/from16 v66, v9

    const/4 v0, 0x1

    move-object v9, v5

    move-object v8, v6

    .end local v0    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v2    # "nativePtr":J
    .end local v4    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "spanned":Landroid/text/Spanned;
    .end local v6    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v7    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v8, "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v63    # "nativePtr":J
    .restart local v65    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v66    # "ellipsizedWidth":F
    .restart local v67    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    :cond_c
    move-object/from16 v1, v65

    .end local v65    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v1    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_b
    if-nez v1, :cond_d

    .line 666
    new-instance v2, Landroid/text/PrecomputedText$Params;

    .line 667
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-direct {v2, v11, v10, v3, v4}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 668
    .local v2, "param":Landroid/text/PrecomputedText$Params;
    const/4 v3, 0x0

    invoke-static {v14, v2, v13, v12, v3}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v1

    .line 673
    .end local v1    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v2    # "param":Landroid/text/PrecomputedText$Params;
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :cond_d
    move-object v7, v1

    move/from16 v3, v17

    move-object/from16 v2, v18

    const/4 v1, 0x0

    .end local v17    # "v":I
    .end local v18    # "chooseHtv":[I
    .local v1, "paraIndex":I
    .local v2, "chooseHtv":[I
    .local v3, "v":I
    :goto_c
    move v4, v1

    .end local v1    # "paraIndex":I
    .local v4, "paraIndex":I
    :try_start_0
    array-length v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    if-ge v4, v1, :cond_30

    .line 674
    if-nez v4, :cond_e

    .line 675
    move v1, v13

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v4, -0x1

    :try_start_1
    aget-object v1, v7, v1

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 676
    .local v1, "paraStart":I
    :goto_d
    aget-object v5, v7, v4

    iget v5, v5, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    move v6, v5

    .line 678
    .local v6, "paraEnd":I
    const/4 v5, 0x1

    .line 679
    .local v5, "firstWidthLineCount":I
    move/from16 v17, v46

    .line 680
    .local v17, "firstWidth":I
    move/from16 v18, v46

    .line 682
    .local v18, "restWidth":I
    const/16 v19, 0x0

    .line 684
    .local v19, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v9, :cond_16

    .line 685
    :try_start_2
    const-class v0, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v1, v6, v0}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/LeadingMarginSpan;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 687
    .local v0, "sp":[Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v70, v10

    move v10, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v10, "firstWidthLineCount":I
    .local v70, "textDir":Landroid/text/TextDirectionHeuristic;
    :goto_e
    move-object/from16 v71, v11

    :try_start_3
    array-length v11, v0

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v71, "paint":Landroid/text/TextPaint;
    if-ge v5, v11, :cond_10

    .line 688
    aget-object v11, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 689
    .local v11, "lms":Landroid/text/style/LeadingMarginSpan;
    move/from16 v72, v13

    :try_start_4
    aget-object v13, v0, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v13    # "bufStart":I
    .local v72, "bufStart":I
    move-object/from16 v73, v14

    const/4 v14, 0x1

    :try_start_5
    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    .end local v14    # "source":Ljava/lang/CharSequence;
    .local v73, "source":Ljava/lang/CharSequence;
    sub-int v17, v17, v13

    .line 690
    aget-object v13, v0, v5

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v18, v18, v13

    .line 694
    instance-of v13, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v13, :cond_f

    .line 695
    move-object v13, v11

    check-cast v13, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 696
    .local v13, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    nop

    .line 697
    invoke-interface {v13}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 696
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v10, v14

    .line 687
    .end local v11    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v13    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v71

    move/from16 v13, v72

    move-object/from16 v14, v73

    goto :goto_e

    .line 906
    .end local v0    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v1    # "paraStart":I
    .end local v4    # "paraIndex":I
    .end local v5    # "i":I
    .end local v6    # "paraEnd":I
    .end local v10    # "firstWidthLineCount":I
    .end local v17    # "firstWidth":I
    .end local v18    # "restWidth":I
    .end local v19    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v14    # "source":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v73    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .line 701
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v0    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v1    # "paraStart":I
    .restart local v4    # "paraIndex":I
    .restart local v6    # "paraEnd":I
    .restart local v10    # "firstWidthLineCount":I
    .local v13, "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    .restart local v17    # "firstWidth":I
    .restart local v18    # "restWidth":I
    .restart local v19    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_10
    move/from16 v72, v13

    move-object/from16 v73, v14

    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    const-class v5, Landroid/text/style/LineHeightSpan;

    invoke-static {v9, v1, v6, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineHeightSpan;

    .line 703
    .end local v19    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v5, "chooseHt":[Landroid/text/style/LineHeightSpan;
    array-length v11, v5

    if-nez v11, :cond_12

    .line 704
    const/4 v5, 0x0

    .line 728
    .end local v2    # "chooseHtv":[I
    .end local v5    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v10    # "firstWidthLineCount":I
    .end local v17    # "firstWidth":I
    .end local v18    # "restWidth":I
    .local v0, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v13, "restWidth":I
    .local v14, "firstWidth":I
    .local v37, "firstWidthLineCount":I
    .local v38, "chooseHtv":[I
    :cond_11
    move-object/from16 v38, v2

    move-object v0, v5

    move/from16 v37, v10

    move/from16 v14, v17

    move/from16 v13, v18

    goto/16 :goto_11

    .line 706
    .end local v13    # "restWidth":I
    .end local v14    # "firstWidth":I
    .end local v37    # "firstWidthLineCount":I
    .end local v38    # "chooseHtv":[I
    .local v0, "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v2    # "chooseHtv":[I
    .restart local v5    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v10    # "firstWidthLineCount":I
    .restart local v17    # "firstWidth":I
    .restart local v18    # "restWidth":I
    :cond_12
    if-eqz v2, :cond_13

    array-length v11, v2

    array-length v13, v5

    if-ge v11, v13, :cond_14

    .line 707
    :cond_13
    array-length v11, v5

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v11

    move-object v2, v11

    .line 710
    :cond_14
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    array-length v13, v5

    if-ge v11, v13, :cond_11

    .line 711
    aget-object v13, v5, v11

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 713
    .local v13, "o":I
    if-ge v13, v1, :cond_15

    .line 717
    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v14

    aput v14, v2, v11

    goto :goto_10

    .line 721
    :cond_15
    aput v3, v2, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 710
    .end local v13    # "o":I
    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 906
    .end local v0    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v1    # "paraStart":I
    .end local v4    # "paraIndex":I
    .end local v5    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v6    # "paraEnd":I
    .end local v10    # "firstWidthLineCount":I
    .end local v11    # "i":I
    .end local v17    # "firstWidth":I
    .end local v18    # "restWidth":I
    :catchall_1
    move-exception v0

    move-object/from16 v38, v2

    goto/16 :goto_13

    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .local v13, "bufStart":I
    .local v14, "source":Ljava/lang/CharSequence;
    :catchall_2
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v11, "paint":Landroid/text/TextPaint;
    .restart local v13    # "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    :catchall_3
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object v6, v10

    move-object v7, v11

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .line 728
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v1    # "paraStart":I
    .restart local v4    # "paraIndex":I
    .local v5, "firstWidthLineCount":I
    .restart local v6    # "paraEnd":I
    .restart local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v11    # "paint":Landroid/text/TextPaint;
    .restart local v13    # "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    .restart local v17    # "firstWidth":I
    .restart local v18    # "restWidth":I
    .restart local v19    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_16
    move-object/from16 v70, v10

    move-object/from16 v71, v11

    move/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v38, v2

    move/from16 v37, v5

    move/from16 v14, v17

    move/from16 v13, v18

    move-object/from16 v0, v19

    .end local v2    # "chooseHtv":[I
    .end local v5    # "firstWidthLineCount":I
    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v17    # "firstWidth":I
    .end local v18    # "restWidth":I
    .end local v19    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v0, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v13, "restWidth":I
    .local v14, "firstWidth":I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v38    # "chooseHtv":[I
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    :goto_11
    const/4 v2, 0x0

    .line 729
    .local v2, "variableTabStops":[I
    if-eqz v9, :cond_18

    .line 730
    :try_start_6
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-static {v9, v1, v6, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/TabStopSpan;

    .line 732
    .local v5, "spans":[Landroid/text/style/TabStopSpan;
    array-length v10, v5

    if-lez v10, :cond_18

    .line 733
    array-length v10, v5

    new-array v10, v10, [I

    .line 734
    .local v10, "stops":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_12
    move-object/from16 v74, v2

    array-length v2, v5

    .end local v2    # "variableTabStops":[I
    .local v74, "variableTabStops":[I
    if-ge v11, v2, :cond_17

    .line 735
    aget-object v2, v5, v11

    invoke-interface {v2}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v2

    aput v2, v10, v11

    .line 734
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v74

    goto :goto_12

    .line 737
    .end local v11    # "i":I
    :cond_17
    array-length v2, v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v2}, Ljava/util/Arrays;->sort([III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 738
    move-object v2, v10

    .line 742
    .end local v5    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v10    # "stops":[I
    .end local v74    # "variableTabStops":[I
    .restart local v2    # "variableTabStops":[I
    move-object/from16 v74, v2

    goto :goto_14

    .line 906
    .end local v0    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v1    # "paraStart":I
    .end local v2    # "variableTabStops":[I
    .end local v4    # "paraIndex":I
    .end local v6    # "paraEnd":I
    .end local v13    # "restWidth":I
    .end local v14    # "firstWidth":I
    .end local v37    # "firstWidthLineCount":I
    :catchall_4
    move-exception v0

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .local v1, "bufEnd":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v4, "bufStart":I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v7, "paint":Landroid/text/TextPaint;
    .local v9, "nativePtr":J
    .local v53, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v55, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v56, "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v57, "ellipsizedWidth":F
    .local v58, "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v75, "v":I
    :goto_13
    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    .line 742
    .end local v5    # "source":Ljava/lang/CharSequence;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v75    # "v":I
    .restart local v0    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v1, "paraStart":I
    .restart local v2    # "variableTabStops":[I
    .local v3, "v":I
    .local v4, "paraIndex":I
    .local v6, "paraEnd":I
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v12    # "bufEnd":I
    .restart local v13    # "restWidth":I
    .restart local v14    # "firstWidth":I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    :cond_18
    move-object/from16 v74, v2

    .end local v2    # "variableTabStops":[I
    .restart local v74    # "variableTabStops":[I
    :goto_14
    :try_start_7
    aget-object v2, v7, v4

    iget-object v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    move-object v11, v2

    .line 743
    .local v11, "measuredPara":Landroid/text/MeasuredParagraph;
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    move-object v10, v2

    .line 744
    .local v10, "chs":[C
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v39, v2

    .line 745
    .local v39, "spanEndCache":[I
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v40, v2

    .line 747
    .local v40, "fmCache":[I
    array-length v2, v10

    invoke-virtual {v8, v2}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 753
    nop

    .line 758
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    sub-int v22, v6, v1

    int-to-float v2, v14

    int-to-float v5, v13

    const/16 v27, 0x14

    move/from16 v75, v3

    :try_start_8
    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    .end local v3    # "v":I
    .restart local v75    # "v":I
    move/from16 v77, v4

    move/from16 v76, v14

    move-object/from16 v14, v69

    :try_start_9
    iget-object v4, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    .end local v4    # "paraIndex":I
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v14, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v76, "firstWidth":I
    .local v77, "paraIndex":I
    array-length v4, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v78, v7

    :try_start_a
    iget-object v7, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v78, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    move-object/from16 v79, v9

    :try_start_b
    iget-object v9, v14, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    .end local v9    # "spanned":Landroid/text/Spanned;
    .local v79, "spanned":Landroid/text/Spanned;
    move-object/from16 v80, v11

    iget-object v11, v14, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    .end local v11    # "measuredPara":Landroid/text/MeasuredParagraph;
    .local v80, "measuredPara":Landroid/text/MeasuredParagraph;
    move/from16 v81, v13

    iget-object v13, v14, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    .end local v13    # "restWidth":I
    .local v81, "restWidth":I
    move-object/from16 v82, v0

    iget-object v0, v14, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    .line 775
    .end local v0    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v82, "chooseHt":[Landroid/text/style/LineHeightSpan;
    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v36

    .line 753
    move-wide/from16 v17, v63

    move-object/from16 v19, v10

    move/from16 v23, v2

    move/from16 v24, v37

    move/from16 v25, v5

    move-object/from16 v26, v74

    move/from16 v28, v3

    move-object/from16 v29, v14

    move/from16 v30, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v34, v13

    move-object/from16 v35, v0

    invoke-static/range {v17 .. v36}, Landroid/text/StaticLayout;->nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I

    move-result v0

    .line 777
    .local v0, "breakCount":I
    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v30, v2

    .line 778
    .local v30, "breaks":[I
    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v31, v2

    .line 779
    .local v31, "lineWidths":[F
    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v32, v2

    .line 780
    .local v32, "ascents":[F
    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v33, v2

    .line 781
    .local v33, "descents":[F
    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v34, v2

    .line 783
    .local v34, "flags":[I
    iget v2, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    sub-int v13, v2, v3

    .line 784
    .local v13, "remainingLineCount":I
    if-eqz v68, :cond_1a

    :try_start_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v9, v68

    if-eq v9, v2, :cond_19

    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v9, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :try_start_d
    iget v2, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v9, v2, :cond_1b

    goto :goto_15

    .line 906
    .end local v0    # "breakCount":I
    .end local v1    # "paraStart":I
    .end local v6    # "paraEnd":I
    .end local v10    # "chs":[C
    .end local v13    # "remainingLineCount":I
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v74    # "variableTabStops":[I
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :catchall_5
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    goto/16 :goto_26

    .line 784
    .restart local v0    # "breakCount":I
    .restart local v1    # "paraStart":I
    .restart local v6    # "paraEnd":I
    .restart local v10    # "chs":[C
    .restart local v13    # "remainingLineCount":I
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v74    # "variableTabStops":[I
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_19
    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    .line 906
    .end local v0    # "breakCount":I
    .end local v1    # "paraStart":I
    .end local v6    # "paraEnd":I
    .end local v9    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v10    # "chs":[C
    .end local v13    # "remainingLineCount":I
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v74    # "variableTabStops":[I
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :catchall_6
    move-exception v0

    move-object/from16 v56, v8

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v9    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    goto/16 :goto_26

    .line 784
    .end local v9    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v0    # "breakCount":I
    .restart local v1    # "paraStart":I
    .restart local v6    # "paraEnd":I
    .restart local v10    # "chs":[C
    .restart local v13    # "remainingLineCount":I
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v74    # "variableTabStops":[I
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_1a
    move-object/from16 v9, v68

    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v9    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_1b
    const/4 v2, 0x0

    :goto_16
    move/from16 v35, v2

    .line 788
    .local v35, "ellipsisMayBeApplied":Z
    if-lez v13, :cond_20

    if-ge v13, v0, :cond_20

    if-eqz v35, :cond_20

    .line 791
    const/4 v2, 0x0

    .line 792
    .local v2, "width":F
    const/4 v3, 0x0

    .line 793
    .local v3, "flag":I
    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_1f

    .line 794
    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1c

    .line 795
    aget v5, v31, v4

    add-float/2addr v2, v5

    goto :goto_19

    .line 797
    :cond_1c
    if-nez v4, :cond_1d

    const/4 v5, 0x0

    goto :goto_18

    :cond_1d
    add-int/lit8 v5, v4, -0x1

    aget v5, v30, v5

    .local v5, "j":I
    :goto_18
    aget v7, v30, v4

    if-ge v5, v7, :cond_1e

    .line 798
    invoke-virtual {v8, v5}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v7

    add-float/2addr v2, v7

    .line 797
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 801
    .end local v5    # "j":I
    :cond_1e
    :goto_19
    aget v5, v34, v4

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    .line 793
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 804
    .end local v4    # "i":I
    :cond_1f
    add-int/lit8 v4, v13, -0x1

    add-int/lit8 v5, v0, -0x1

    aget v5, v30, v5

    aput v5, v30, v4

    .line 805
    add-int/lit8 v4, v13, -0x1

    aput v2, v31, v4

    .line 806
    add-int/lit8 v4, v13, -0x1

    aput v3, v34, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 808
    move v0, v13

    .line 813
    .end local v2    # "width":F
    .end local v3    # "flag":I
    :cond_20
    move v2, v1

    .line 815
    .local v2, "here":I
    const/4 v3, 0x0

    .local v3, "fmTop":I
    const/4 v4, 0x0

    .local v4, "fmBottom":I
    const/4 v5, 0x0

    .local v5, "fmAscent":I
    const/4 v7, 0x0

    .line 816
    .local v7, "fmDescent":I
    const/4 v11, 0x0

    .line 817
    .local v11, "fmCacheIndex":I
    const/16 v17, 0x0

    .line 818
    .local v17, "spanEndCacheIndex":I
    const/16 v18, 0x0

    .line 819
    .local v18, "breakIndex":I
    move/from16 v19, v18

    move/from16 v18, v11

    move v11, v7

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    .local v2, "spanStart":I
    .local v3, "here":I
    .local v4, "fmTop":I
    .local v5, "fmBottom":I
    .local v7, "fmAscent":I
    .local v11, "fmDescent":I
    .local v18, "fmCacheIndex":I
    .local v19, "breakIndex":I
    :goto_1a
    if-ge v2, v6, :cond_2e

    .line 821
    add-int/lit8 v36, v17, 0x1

    .local v36, "spanEndCacheIndex":I
    :try_start_e
    aget v17, v39, v17

    .end local v17    # "spanEndCacheIndex":I
    move/from16 v83, v17

    .line 824
    .local v83, "spanEnd":I
    mul-int/lit8 v17, v18, 0x4

    const/16 v20, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v84, v3

    aget v3, v40, v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .end local v3    # "here":I
    .local v84, "here":I
    move-object/from16 v85, v9

    move-object/from16 v9, v67

    :try_start_f
    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 825
    .end local v67    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v85, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    mul-int/lit8 v3, v18, 0x4

    const/16 v41, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 826
    mul-int/lit8 v3, v18, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 827
    mul-int/lit8 v3, v18, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 828
    add-int/lit8 v42, v18, 0x1

    .line 830
    .end local v18    # "fmCacheIndex":I
    .local v42, "fmCacheIndex":I
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-ge v3, v4, :cond_21

    .line 831
    :try_start_10
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move v4, v3

    goto :goto_1b

    .line 906
    .end local v0    # "breakCount":I
    .end local v1    # "paraStart":I
    .end local v2    # "spanStart":I
    .end local v4    # "fmTop":I
    .end local v5    # "fmBottom":I
    .end local v6    # "paraEnd":I
    .end local v7    # "fmAscent":I
    .end local v10    # "chs":[C
    .end local v11    # "fmDescent":I
    .end local v13    # "remainingLineCount":I
    .end local v19    # "breakIndex":I
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v35    # "ellipsisMayBeApplied":Z
    .end local v36    # "spanEndCacheIndex":I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v42    # "fmCacheIndex":I
    .end local v74    # "variableTabStops":[I
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v83    # "spanEnd":I
    .end local v84    # "here":I
    :catchall_7
    move-exception v0

    move-object/from16 v56, v8

    move-object v3, v9

    move v1, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v55, v85

    goto/16 :goto_26

    .line 833
    .restart local v0    # "breakCount":I
    .restart local v1    # "paraStart":I
    .restart local v2    # "spanStart":I
    .restart local v4    # "fmTop":I
    .restart local v5    # "fmBottom":I
    .restart local v6    # "paraEnd":I
    .restart local v7    # "fmAscent":I
    .restart local v10    # "chs":[C
    .restart local v11    # "fmDescent":I
    .restart local v13    # "remainingLineCount":I
    .restart local v19    # "breakIndex":I
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v35    # "ellipsisMayBeApplied":Z
    .restart local v36    # "spanEndCacheIndex":I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v42    # "fmCacheIndex":I
    .restart local v74    # "variableTabStops":[I
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v83    # "spanEnd":I
    .restart local v84    # "here":I
    :cond_21
    :goto_1b
    :try_start_11
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-ge v3, v7, :cond_22

    .line 834
    :try_start_12
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move v7, v3

    .line 836
    :cond_22
    :try_start_13
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-le v3, v11, :cond_23

    .line 837
    :try_start_14
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move v11, v3

    .line 839
    :cond_23
    :try_start_15
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    if-le v3, v5, :cond_24

    .line 840
    :try_start_16
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v3

    .line 844
    .end local v19    # "breakIndex":I
    .local v3, "breakIndex":I
    :cond_24
    move/from16 v3, v19

    :goto_1c
    if-ge v3, v0, :cond_25

    aget v17, v30, v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    move/from16 v86, v4

    add-int v4, v1, v17

    .end local v4    # "fmTop":I
    .local v86, "fmTop":I
    if-ge v4, v2, :cond_26

    .line 845
    add-int/lit8 v3, v3, 0x1

    .line 844
    move/from16 v4, v86

    goto :goto_1c

    .line 848
    .end local v86    # "fmTop":I
    .restart local v4    # "fmTop":I
    :cond_25
    move/from16 v86, v4

    .end local v4    # "fmTop":I
    .restart local v86    # "fmTop":I
    :cond_26
    move/from16 v43, v5

    move v4, v11

    move v11, v3

    .end local v3    # "breakIndex":I
    .end local v5    # "fmBottom":I
    .local v4, "fmDescent":I
    .local v11, "breakIndex":I
    .local v43, "fmBottom":I
    :goto_1d
    if-ge v11, v0, :cond_2d

    :try_start_17
    aget v3, v30, v11

    add-int/2addr v3, v1

    move/from16 v5, v83

    if-gt v3, v5, :cond_2c

    .line 849
    .end local v83    # "spanEnd":I
    .local v5, "spanEnd":I
    aget v3, v30, v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    add-int/2addr v3, v1

    .line 851
    .local v3, "endPos":I
    if-ge v3, v12, :cond_27

    move/from16 v29, v41

    goto :goto_1e

    :cond_27
    const/16 v29, 0x0

    .line 852
    .local v29, "moreChars":Z
    :goto_1e
    if-eqz v47, :cond_28

    .line 853
    move/from16 v87, v0

    :try_start_18
    aget v0, v32, v11

    .end local v0    # "breakCount":I
    .local v87, "breakCount":I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1f

    .line 854
    .end local v87    # "breakCount":I
    .restart local v0    # "breakCount":I
    :cond_28
    move/from16 v87, v0

    .end local v0    # "breakCount":I
    .restart local v87    # "breakCount":I
    move v0, v7

    :goto_1f
    move/from16 v88, v5

    move v5, v0

    .line 855
    .local v5, "ascent":I
    .local v88, "spanEnd":I
    if-eqz v47, :cond_29

    .line 856
    aget v0, v33, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_20

    .line 857
    :cond_29
    move v0, v4

    :goto_20
    move/from16 v89, v6

    move v6, v0

    .line 858
    .local v6, "descent":I
    .local v89, "paraEnd":I
    :try_start_19
    aget v0, v34, v11

    .line 862
    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v23

    aget v27, v31, v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 858
    move/from16 v44, v1

    move-object v1, v15

    .end local v1    # "paraStart":I
    .local v44, "paraStart":I
    move/from16 v45, v2

    move-object/from16 v2, v73

    .end local v2    # "spanStart":I
    .local v45, "spanStart":I
    move/from16 v90, v3

    move/from16 v3, v84

    .end local v3    # "endPos":I
    .local v90, "endPos":I
    move/from16 v52, v4

    move/from16 v51, v77

    move/from16 v4, v90

    .end local v4    # "fmDescent":I
    .end local v77    # "paraIndex":I
    .local v51, "paraIndex":I
    .local v52, "fmDescent":I
    move/from16 v54, v7

    move-object/from16 v53, v78

    move/from16 v7, v86

    .end local v7    # "fmAscent":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v54, "fmAscent":I
    move-object/from16 v56, v8

    move-object/from16 v55, v85

    move/from16 v8, v43

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    move-object/from16 v91, v9

    move/from16 v57, v66

    move-object/from16 v58, v79

    move/from16 v9, v75

    .end local v9    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v66    # "ellipsizedWidth":F
    .end local v79    # "spanned":Landroid/text/Spanned;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v91, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v60, v10

    move-object/from16 v92, v70

    move/from16 v10, v48

    .end local v10    # "chs":[C
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v60, "chs":[C
    .local v92, "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v62, v11

    move-object/from16 v93, v71

    move-object/from16 v61, v80

    move/from16 v11, v49

    .end local v11    # "breakIndex":I
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .local v61, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v62, "breakIndex":I
    .local v93, "paint":Landroid/text/TextPaint;
    move/from16 v94, v12

    move-object/from16 v12, v82

    .end local v12    # "bufEnd":I
    .local v94, "bufEnd":I
    move/from16 v66, v13

    move/from16 v95, v72

    move/from16 v65, v81

    move-object/from16 v13, v38

    .end local v13    # "remainingLineCount":I
    .end local v72    # "bufStart":I
    .end local v81    # "restWidth":I
    .local v65, "restWidth":I
    .local v66, "remainingLineCount":I
    .local v95, "bufStart":I
    move-object/from16 v67, v14

    move-object/from16 v96, v73

    move/from16 v68, v76

    move-object/from16 v14, v91

    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v76    # "firstWidth":I
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .local v68, "firstWidth":I
    .local v96, "source":Ljava/lang/CharSequence;
    move v15, v0

    move-object/from16 v17, v61

    move/from16 v18, v94

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v50

    move-object/from16 v22, v60

    move/from16 v24, v44

    move-object/from16 v25, v55

    move/from16 v26, v57

    move-object/from16 v28, v93

    :try_start_1a
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move/from16 v75, v0

    .line 865
    move/from16 v0, v88

    move/from16 v1, v90

    if-ge v1, v0, :cond_2a

    .line 867
    .end local v88    # "spanEnd":I
    .end local v90    # "endPos":I
    .local v0, "spanEnd":I
    .local v1, "endPos":I
    move-object/from16 v3, v91

    :try_start_1b
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 868
    .end local v86    # "fmTop":I
    .end local v91    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v2, "fmTop":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 869
    .end local v43    # "fmBottom":I
    .local v4, "fmBottom":I
    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 870
    .end local v54    # "fmAscent":I
    .restart local v7    # "fmAscent":I
    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 875
    .end local v52    # "fmDescent":I
    .local v8, "fmDescent":I
    move/from16 v86, v2

    move/from16 v43, v4

    move v4, v8

    const/4 v2, 0x0

    goto :goto_21

    .line 906
    .end local v0    # "spanEnd":I
    .end local v1    # "endPos":I
    .end local v2    # "fmTop":I
    .end local v4    # "fmBottom":I
    .end local v5    # "ascent":I
    .end local v6    # "descent":I
    .end local v7    # "fmAscent":I
    .end local v8    # "fmDescent":I
    .end local v29    # "moreChars":Z
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v35    # "ellipsisMayBeApplied":Z
    .end local v36    # "spanEndCacheIndex":I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v42    # "fmCacheIndex":I
    .end local v44    # "paraStart":I
    .end local v45    # "spanStart":I
    .end local v51    # "paraIndex":I
    .end local v60    # "chs":[C
    .end local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v62    # "breakIndex":I
    .end local v65    # "restWidth":I
    .end local v66    # "remainingLineCount":I
    .end local v68    # "firstWidth":I
    .end local v74    # "variableTabStops":[I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v84    # "here":I
    .end local v87    # "breakCount":I
    .end local v89    # "paraEnd":I
    :catchall_8
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    move-object/from16 v8, p0

    goto/16 :goto_26

    .line 872
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v0    # "spanEnd":I
    .restart local v1    # "endPos":I
    .restart local v5    # "ascent":I
    .restart local v6    # "descent":I
    .restart local v29    # "moreChars":Z
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v35    # "ellipsisMayBeApplied":Z
    .restart local v36    # "spanEndCacheIndex":I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v42    # "fmCacheIndex":I
    .restart local v43    # "fmBottom":I
    .restart local v44    # "paraStart":I
    .restart local v45    # "spanStart":I
    .restart local v51    # "paraIndex":I
    .restart local v52    # "fmDescent":I
    .restart local v54    # "fmAscent":I
    .restart local v60    # "chs":[C
    .restart local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v62    # "breakIndex":I
    .restart local v65    # "restWidth":I
    .restart local v66    # "remainingLineCount":I
    .restart local v68    # "firstWidth":I
    .restart local v74    # "variableTabStops":[I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v84    # "here":I
    .restart local v86    # "fmTop":I
    .restart local v87    # "breakCount":I
    .restart local v89    # "paraEnd":I
    .restart local v91    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_2a
    move-object/from16 v3, v91

    .end local v91    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v2, 0x0

    move v4, v2

    .end local v52    # "fmDescent":I
    .local v4, "fmDescent":I
    move v7, v2

    .end local v54    # "fmAscent":I
    .restart local v7    # "fmAscent":I
    move v8, v2

    .end local v43    # "fmBottom":I
    .local v8, "fmBottom":I
    move v9, v2

    .line 875
    .end local v86    # "fmTop":I
    .local v9, "fmTop":I
    move/from16 v43, v8

    move/from16 v86, v9

    .end local v8    # "fmBottom":I
    .end local v9    # "fmTop":I
    .restart local v43    # "fmBottom":I
    .restart local v86    # "fmTop":I
    :goto_21
    move/from16 v84, v1

    .line 876
    add-int/lit8 v11, v62, 0x1

    .line 878
    .end local v62    # "breakIndex":I
    .restart local v11    # "breakIndex":I
    move-object/from16 v8, p0

    :try_start_1c
    iget v9, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v10, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2b

    iget-boolean v9, v8, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v9, :cond_2b

    .line 906
    move-wide/from16 v9, v63

    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    .line 879
    .end local v63    # "nativePtr":J
    .local v9, "nativePtr":J
    return-void

    .line 881
    .end local v1    # "endPos":I
    .end local v5    # "ascent":I
    .end local v6    # "descent":I
    .end local v9    # "nativePtr":J
    .end local v29    # "moreChars":Z
    .restart local v63    # "nativePtr":J
    :cond_2b
    move-wide/from16 v9, v63

    .line 848
    .end local v63    # "nativePtr":J
    .restart local v9    # "nativePtr":J
    move/from16 v83, v0

    move-object v15, v8

    move-wide/from16 v63, v9

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v77, v51

    move-object/from16 v78, v53

    move-object/from16 v85, v55

    move-object/from16 v8, v56

    move-object/from16 v79, v58

    move-object/from16 v10, v60

    move-object/from16 v80, v61

    move/from16 v81, v65

    move/from16 v13, v66

    move-object/from16 v14, v67

    move/from16 v76, v68

    move/from16 v0, v87

    move/from16 v6, v89

    move-object/from16 v70, v92

    move-object/from16 v71, v93

    move/from16 v12, v94

    move/from16 v72, v95

    move-object/from16 v73, v96

    move-object v9, v3

    move/from16 v66, v57

    goto/16 :goto_1d

    .line 906
    .end local v0    # "spanEnd":I
    .end local v4    # "fmDescent":I
    .end local v7    # "fmAscent":I
    .end local v9    # "nativePtr":J
    .end local v11    # "breakIndex":I
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v35    # "ellipsisMayBeApplied":Z
    .end local v36    # "spanEndCacheIndex":I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v42    # "fmCacheIndex":I
    .end local v43    # "fmBottom":I
    .end local v44    # "paraStart":I
    .end local v45    # "spanStart":I
    .end local v51    # "paraIndex":I
    .end local v60    # "chs":[C
    .end local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v65    # "restWidth":I
    .end local v66    # "remainingLineCount":I
    .end local v68    # "firstWidth":I
    .end local v74    # "variableTabStops":[I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v84    # "here":I
    .end local v86    # "fmTop":I
    .end local v87    # "breakCount":I
    .end local v89    # "paraEnd":I
    .restart local v63    # "nativePtr":J
    :catchall_9
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    .end local v63    # "nativePtr":J
    .restart local v9    # "nativePtr":J
    goto/16 :goto_26

    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v9    # "nativePtr":J
    .restart local v63    # "nativePtr":J
    .restart local v91    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :catchall_a
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v3, v91

    move-object/from16 v8, p0

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    .end local v63    # "nativePtr":J
    .end local v91    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v9    # "nativePtr":J
    goto/16 :goto_26

    .line 819
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v94    # "bufEnd":I
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v0, "breakCount":I
    .local v1, "paraStart":I
    .local v2, "spanStart":I
    .restart local v4    # "fmDescent":I
    .local v5, "spanEnd":I
    .local v6, "paraEnd":I
    .restart local v7    # "fmAscent":I
    .local v8, "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v10    # "chs":[C
    .restart local v11    # "breakIndex":I
    .restart local v12    # "bufEnd":I
    .restart local v13    # "remainingLineCount":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v35    # "ellipsisMayBeApplied":Z
    .restart local v36    # "spanEndCacheIndex":I
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v42    # "fmCacheIndex":I
    .restart local v43    # "fmBottom":I
    .restart local v63    # "nativePtr":J
    .local v66, "ellipsizedWidth":F
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v74    # "variableTabStops":[I
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v84    # "here":I
    .restart local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v86    # "fmTop":I
    :cond_2c
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v45, v2

    move/from16 v52, v4

    move v0, v5

    move/from16 v89, v6

    move/from16 v54, v7

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v60, v10

    move/from16 v62, v11

    move/from16 v94, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    move-object/from16 v55, v85

    const/4 v2, 0x0

    move/from16 v66, v13

    .end local v1    # "paraStart":I
    .end local v2    # "spanStart":I
    .end local v4    # "fmDescent":I
    .end local v5    # "spanEnd":I
    .end local v6    # "paraEnd":I
    .end local v7    # "fmAscent":I
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "chs":[C
    .end local v11    # "breakIndex":I
    .end local v12    # "bufEnd":I
    .end local v13    # "remainingLineCount":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .end local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v0, "spanEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v44    # "paraStart":I
    .restart local v45    # "spanStart":I
    .restart local v51    # "paraIndex":I
    .restart local v52    # "fmDescent":I
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v54    # "fmAscent":I
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .restart local v60    # "chs":[C
    .restart local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v62    # "breakIndex":I
    .restart local v65    # "restWidth":I
    .local v66, "remainingLineCount":I
    .restart local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v68    # "firstWidth":I
    .restart local v87    # "breakCount":I
    .restart local v89    # "paraEnd":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v94    # "bufEnd":I
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto :goto_22

    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v44    # "paraStart":I
    .end local v45    # "spanStart":I
    .end local v51    # "paraIndex":I
    .end local v52    # "fmDescent":I
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v54    # "fmAscent":I
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v60    # "chs":[C
    .end local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v62    # "breakIndex":I
    .end local v65    # "restWidth":I
    .end local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v68    # "firstWidth":I
    .end local v87    # "breakCount":I
    .end local v89    # "paraEnd":I
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v94    # "bufEnd":I
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v0, "breakCount":I
    .restart local v1    # "paraStart":I
    .restart local v2    # "spanStart":I
    .restart local v4    # "fmDescent":I
    .restart local v6    # "paraEnd":I
    .restart local v7    # "fmAscent":I
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v10    # "chs":[C
    .restart local v11    # "breakIndex":I
    .restart local v12    # "bufEnd":I
    .restart local v13    # "remainingLineCount":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .local v66, "ellipsizedWidth":F
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v83    # "spanEnd":I
    .restart local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_2d
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v45, v2

    move/from16 v52, v4

    move/from16 v89, v6

    move/from16 v54, v7

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v60, v10

    move/from16 v62, v11

    move/from16 v94, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    move/from16 v0, v83

    move-object/from16 v55, v85

    const/4 v2, 0x0

    move/from16 v66, v13

    .end local v1    # "paraStart":I
    .end local v2    # "spanStart":I
    .end local v4    # "fmDescent":I
    .end local v6    # "paraEnd":I
    .end local v7    # "fmAscent":I
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "chs":[C
    .end local v11    # "breakIndex":I
    .end local v12    # "bufEnd":I
    .end local v13    # "remainingLineCount":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .end local v83    # "spanEnd":I
    .end local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v0, "spanEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v44    # "paraStart":I
    .restart local v45    # "spanStart":I
    .restart local v51    # "paraIndex":I
    .restart local v52    # "fmDescent":I
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v54    # "fmAscent":I
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .restart local v60    # "chs":[C
    .restart local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v62    # "breakIndex":I
    .restart local v65    # "restWidth":I
    .local v66, "remainingLineCount":I
    .restart local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v68    # "firstWidth":I
    .restart local v87    # "breakCount":I
    .restart local v89    # "paraEnd":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v94    # "bufEnd":I
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    :goto_22
    move v1, v0

    .end local v45    # "spanStart":I
    .local v1, "spanStart":I
    move v2, v1

    move-object v15, v8

    move-wide/from16 v63, v9

    move/from16 v17, v36

    move/from16 v18, v42

    move/from16 v5, v43

    move/from16 v1, v44

    move/from16 v77, v51

    move/from16 v11, v52

    move-object/from16 v78, v53

    move/from16 v7, v54

    move-object/from16 v9, v55

    move-object/from16 v8, v56

    move-object/from16 v79, v58

    move-object/from16 v10, v60

    move-object/from16 v80, v61

    move/from16 v19, v62

    move/from16 v81, v65

    move/from16 v13, v66

    move-object/from16 v14, v67

    move/from16 v76, v68

    move/from16 v4, v86

    move/from16 v0, v87

    move/from16 v6, v89

    move-object/from16 v70, v92

    move-object/from16 v71, v93

    move/from16 v12, v94

    move/from16 v72, v95

    move-object/from16 v73, v96

    move-object/from16 v67, v3

    move/from16 v66, v57

    move/from16 v3, v84

    goto/16 :goto_1a

    .line 906
    .end local v0    # "spanEnd":I
    .end local v1    # "spanStart":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v35    # "ellipsisMayBeApplied":Z
    .end local v36    # "spanEndCacheIndex":I
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v42    # "fmCacheIndex":I
    .end local v43    # "fmBottom":I
    .end local v44    # "paraStart":I
    .end local v51    # "paraIndex":I
    .end local v52    # "fmDescent":I
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v54    # "fmAscent":I
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v60    # "chs":[C
    .end local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v62    # "breakIndex":I
    .end local v65    # "restWidth":I
    .end local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v68    # "firstWidth":I
    .end local v74    # "variableTabStops":[I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v84    # "here":I
    .end local v86    # "fmTop":I
    .end local v87    # "breakCount":I
    .end local v89    # "paraEnd":I
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v94    # "bufEnd":I
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v12    # "bufEnd":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .local v66, "ellipsizedWidth":F
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    .restart local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :catchall_b
    move-exception v0

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v55, v85

    move v1, v12

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .end local v85    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .restart local v67    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v94    # "bufEnd":I
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v94    # "bufEnd":I
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v12    # "bufEnd":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    :catchall_c
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    move v1, v12

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v94    # "bufEnd":I
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .line 884
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v94    # "bufEnd":I
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v0, "breakCount":I
    .local v1, "paraStart":I
    .local v3, "here":I
    .local v4, "fmTop":I
    .local v5, "fmBottom":I
    .restart local v6    # "paraEnd":I
    .restart local v7    # "fmAscent":I
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v10    # "chs":[C
    .local v11, "fmDescent":I
    .restart local v12    # "bufEnd":I
    .restart local v13    # "remainingLineCount":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v17    # "spanEndCacheIndex":I
    .restart local v18    # "fmCacheIndex":I
    .restart local v19    # "breakIndex":I
    .restart local v30    # "breaks":[I
    .restart local v31    # "lineWidths":[F
    .restart local v32    # "ascents":[F
    .restart local v33    # "descents":[F
    .restart local v34    # "flags":[I
    .restart local v35    # "ellipsisMayBeApplied":Z
    .restart local v37    # "firstWidthLineCount":I
    .restart local v39    # "spanEndCache":[I
    .restart local v40    # "fmCache":[I
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v74    # "variableTabStops":[I
    .restart local v76    # "firstWidth":I
    .restart local v77    # "paraIndex":I
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    .restart local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v81    # "restWidth":I
    .restart local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_2e
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v84, v3

    move/from16 v89, v6

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move-object/from16 v60, v10

    move/from16 v94, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    const/4 v2, 0x0

    const/16 v41, 0x1

    move/from16 v66, v13

    move-object/from16 v67, v14

    .end local v0    # "breakCount":I
    .end local v1    # "paraStart":I
    .end local v6    # "paraEnd":I
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "chs":[C
    .end local v12    # "bufEnd":I
    .end local v13    # "remainingLineCount":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v76    # "firstWidth":I
    .end local v77    # "paraIndex":I
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .end local v80    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v81    # "restWidth":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v44    # "paraStart":I
    .restart local v51    # "paraIndex":I
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .restart local v60    # "chs":[C
    .restart local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v65    # "restWidth":I
    .local v66, "remainingLineCount":I
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v68    # "firstWidth":I
    .restart local v84    # "here":I
    .restart local v87    # "breakCount":I
    .restart local v89    # "paraEnd":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v94    # "bufEnd":I
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    move/from16 v0, v89

    move/from16 v1, v94

    if-ne v0, v1, :cond_2f

    .line 885
    .end local v89    # "paraEnd":I
    .end local v94    # "bufEnd":I
    .local v0, "paraEnd":I
    .local v1, "bufEnd":I
    nop

    .line 889
    move-object/from16 v2, v38

    goto/16 :goto_23

    .line 673
    .end local v0    # "paraEnd":I
    .end local v4    # "fmTop":I
    .end local v5    # "fmBottom":I
    .end local v7    # "fmAscent":I
    .end local v11    # "fmDescent":I
    .end local v17    # "spanEndCacheIndex":I
    .end local v18    # "fmCacheIndex":I
    .end local v19    # "breakIndex":I
    .end local v30    # "breaks":[I
    .end local v31    # "lineWidths":[F
    .end local v32    # "ascents":[F
    .end local v33    # "descents":[F
    .end local v34    # "flags":[I
    .end local v35    # "ellipsisMayBeApplied":Z
    .end local v37    # "firstWidthLineCount":I
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v44    # "paraStart":I
    .end local v60    # "chs":[C
    .end local v61    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v65    # "restWidth":I
    .end local v66    # "remainingLineCount":I
    .end local v68    # "firstWidth":I
    .end local v74    # "variableTabStops":[I
    .end local v82    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v84    # "here":I
    .end local v87    # "breakCount":I
    :cond_2f
    add-int/lit8 v0, v51, 0x1

    .end local v51    # "paraIndex":I
    .local v0, "paraIndex":I
    move v12, v1

    move-object v15, v8

    move-wide/from16 v63, v9

    move-object/from16 v2, v38

    move-object/from16 v7, v53

    move-object/from16 v68, v55

    move-object/from16 v8, v56

    move/from16 v66, v57

    move-object/from16 v9, v58

    move-object/from16 v69, v67

    move-object/from16 v10, v92

    move-object/from16 v11, v93

    move/from16 v13, v95

    move-object/from16 v14, v96

    move v1, v0

    move-object/from16 v67, v3

    move/from16 v0, v41

    move/from16 v3, v75

    goto/16 :goto_c

    .line 906
    .end local v0    # "paraIndex":I
    .end local v1    # "bufEnd":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v9    # "nativePtr":J
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v12    # "bufEnd":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .local v66, "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v68, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v79    # "spanned":Landroid/text/Spanned;
    :catchall_d
    move-exception v0

    move-object/from16 v56, v8

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v79    # "spanned":Landroid/text/Spanned;
    .restart local v1    # "bufEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v9    # "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v1    # "bufEnd":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v12    # "bufEnd":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    .restart local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :catchall_e
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v53, v78

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .end local v78    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v1    # "bufEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v1    # "bufEnd":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v12    # "bufEnd":I
    .restart local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    :catchall_f
    move-exception v0

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v14    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v1    # "bufEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v1    # "bufEnd":I
    .end local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v12    # "bufEnd":I
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    :catchall_10
    move-exception v0

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v1    # "bufEnd":I
    .restart local v3    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v1    # "bufEnd":I
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v75    # "v":I
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v3, "v":I
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v12    # "bufEnd":I
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v71    # "paint":Landroid/text/TextPaint;
    .restart local v72    # "bufStart":I
    .restart local v73    # "source":Ljava/lang/CharSequence;
    :catchall_11
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v12    # "bufEnd":I
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .end local v70    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v71    # "paint":Landroid/text/TextPaint;
    .end local v72    # "bufStart":I
    .end local v73    # "source":Ljava/lang/CharSequence;
    .restart local v1    # "bufEnd":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v75    # "v":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .end local v1    # "bufEnd":I
    .end local v38    # "chooseHtv":[I
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v75    # "v":I
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v2, "chooseHtv":[I
    .local v3, "v":I
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v11, "paint":Landroid/text/TextPaint;
    .restart local v12    # "bufEnd":I
    .local v13, "bufStart":I
    .local v14, "source":Ljava/lang/CharSequence;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    :catchall_12
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object/from16 v92, v10

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v38, v2

    move-object v7, v11

    move v4, v13

    move-object v5, v14

    move-object/from16 v6, v92

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v12    # "bufEnd":I
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v1    # "bufEnd":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v75    # "v":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    goto/16 :goto_26

    .line 889
    .end local v1    # "bufEnd":I
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v75    # "v":I
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .end local v95    # "bufStart":I
    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v3, "v":I
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v11    # "paint":Landroid/text/TextPaint;
    .restart local v12    # "bufEnd":I
    .restart local v13    # "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    :cond_30
    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object/from16 v92, v10

    move-object/from16 v93, v11

    move v1, v12

    move/from16 v95, v13

    move-object/from16 v96, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v12    # "bufEnd":I
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v1    # "bufEnd":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "nativePtr":J
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v75    # "v":I
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    .restart local v95    # "bufStart":I
    .restart local v96    # "source":Ljava/lang/CharSequence;
    :goto_23
    move/from16 v4, v95

    if-eq v1, v4, :cond_32

    .end local v95    # "bufStart":I
    .local v4, "bufStart":I
    add-int/lit8 v12, v1, -0x1

    move-object/from16 v5, v96

    :try_start_1d
    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    .end local v96    # "source":Ljava/lang/CharSequence;
    .local v5, "source":Ljava/lang/CharSequence;
    const/16 v6, 0xa

    if-ne v0, v6, :cond_31

    goto :goto_24

    .line 906
    :cond_31
    move-object/from16 v6, v92

    move-object/from16 v7, v93

    goto/16 :goto_25

    :catchall_13
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    goto/16 :goto_26

    .line 889
    .end local v5    # "source":Ljava/lang/CharSequence;
    .restart local v96    # "source":Ljava/lang/CharSequence;
    :cond_32
    move-object/from16 v5, v96

    .end local v96    # "source":Ljava/lang/CharSequence;
    .restart local v5    # "source":Ljava/lang/CharSequence;
    :goto_24
    :try_start_1e
    iget v0, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v6, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    if-ge v0, v6, :cond_33

    .line 891
    nop

    .line 892
    move-object/from16 v6, v92

    const/4 v0, 0x0

    :try_start_1f
    invoke-static {v5, v1, v1, v6, v0}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v33
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    .line 893
    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v6, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v33, "measuredPara":Landroid/text/MeasuredParagraph;
    move-object/from16 v7, v93

    :try_start_20
    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 894
    .end local v93    # "paint":Landroid/text/TextPaint;
    .local v7, "paint":Landroid/text/TextPaint;
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v11, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v13, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v21, v0

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v75

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v30, v3

    move/from16 v32, v16

    move/from16 v34, v1

    move/from16 v35, p2

    move/from16 v36, p3

    move/from16 v37, v50

    move/from16 v40, v4

    move-object/from16 v41, v55

    move/from16 v42, v57

    move-object/from16 v44, v7

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    move/from16 v75, v0

    .end local v33    # "measuredPara":Landroid/text/MeasuredParagraph;
    goto :goto_25

    .line 906
    :catchall_14
    move-exception v0

    move-object/from16 v38, v2

    goto :goto_26

    .end local v7    # "paint":Landroid/text/TextPaint;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    :catchall_15
    move-exception v0

    move-object/from16 v7, v93

    move-object/from16 v38, v2

    .end local v93    # "paint":Landroid/text/TextPaint;
    .restart local v7    # "paint":Landroid/text/TextPaint;
    goto :goto_26

    .end local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v7    # "paint":Landroid/text/TextPaint;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    :cond_33
    move-object/from16 v6, v92

    move-object/from16 v7, v93

    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .restart local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v7    # "paint":Landroid/text/TextPaint;
    :goto_25
    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    .line 907
    nop

    .line 908
    return-void

    .line 906
    .end local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v7    # "paint":Landroid/text/TextPaint;
    .restart local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v93    # "paint":Landroid/text/TextPaint;
    :catchall_16
    move-exception v0

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move-object/from16 v38, v2

    .end local v92    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v93    # "paint":Landroid/text/TextPaint;
    .restart local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v7    # "paint":Landroid/text/TextPaint;
    goto :goto_26

    .end local v1    # "bufEnd":I
    .end local v4    # "bufStart":I
    .end local v5    # "source":Ljava/lang/CharSequence;
    .end local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v57    # "ellipsizedWidth":F
    .end local v58    # "spanned":Landroid/text/Spanned;
    .end local v75    # "v":I
    .local v3, "v":I
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v11    # "paint":Landroid/text/TextPaint;
    .restart local v12    # "bufEnd":I
    .restart local v13    # "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    .restart local v63    # "nativePtr":J
    .restart local v66    # "ellipsizedWidth":F
    .local v67, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    :catchall_17
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object v6, v10

    move-object v7, v11

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v38, v2

    .end local v2    # "chooseHtv":[I
    .end local v8    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v12    # "bufEnd":I
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .end local v63    # "nativePtr":J
    .end local v66    # "ellipsizedWidth":F
    .end local v68    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v69    # "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v1    # "bufEnd":I
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v4    # "bufStart":I
    .restart local v5    # "source":Ljava/lang/CharSequence;
    .restart local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v7, "paint":Landroid/text/TextPaint;
    .local v9, "nativePtr":J
    .restart local v38    # "chooseHtv":[I
    .restart local v53    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v55    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "widths":Landroid/text/AutoGrowArray$FloatArray;
    .restart local v57    # "ellipsizedWidth":F
    .restart local v58    # "spanned":Landroid/text/Spanned;
    .local v67, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    .restart local v75    # "v":I
    :goto_26
    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    throw v0
.end method

.method public getBottomPadding()I
    .locals 1

    .line 1252
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1297
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1298
    const/4 v0, 0x0

    return v0

    .line 1301
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1306
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1307
    const/4 v0, 0x0

    return v0

    .line 1310
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .line 1315
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4
    .param p1, "cap"    # Z

    .line 1326
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    .line 1327
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    const-string v1, "StaticLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    .line 1334
    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 1333
    :goto_0
    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1260
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .line 1268
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    .line 1270
    return v1

    .line 1272
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 1274
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    .line 1275
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    .line 1276
    return v1

    .line 1278
    :cond_2
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    .line 1280
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    .line 1283
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1285
    :cond_4
    const/4 v1, 0x0

    .line 1286
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1287
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1289
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1291
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1234
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public getLineCount()I
    .locals 1

    .line 1201
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1219
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .line 1239
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1242
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLineExtra(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1214
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .line 1180
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1181
    .local v0, "high":I
    const/4 v1, -0x1

    .line 1183
    .local v1, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1184
    .local v2, "lines":[I
    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1185
    add-int v3, v0, v1

    shr-int/2addr v3, v4

    .line 1186
    .local v3, "guess":I
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    .line 1187
    move v0, v3

    goto :goto_0

    .line 1189
    :cond_0
    move v1, v3

    goto :goto_0

    .line 1192
    .end local v3    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1193
    const/4 v3, 0x0

    return v3

    .line 1195
    :cond_2
    return v1
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1224
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1206
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1229
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .line 1247
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
