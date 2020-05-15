.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$MEMORY;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$MemoryTextWatcher;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field private static final SELECTION_MEMORY:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 541
    new-instance v0, Landroid/text/Selection$MEMORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Selection$MEMORY;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    .line 547
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 548
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    return-object v0
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 5
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    .line 497
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 498
    .local v0, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 500
    .local v1, "line2":I
    if-ne v0, v1, :cond_3

    .line 503
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 504
    .local v2, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 506
    .local v3, "h2":F
    if-gez p1, :cond_1

    .line 509
    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .line 510
    return p2

    .line 512
    :cond_0
    return p3

    .line 516
    :cond_1
    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 517
    return p2

    .line 519
    :cond_2
    return p3

    .line 528
    .end local v2    # "h1":F
    .end local v3    # "h2":F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 529
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 531
    .local v3, "textdir":I
    if-ne v3, p1, :cond_4

    .line 532
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    .line 534
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 372
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 373
    .local v6, "end":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 375
    .local v7, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_0

    .line 376
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 377
    return v8

    .line 378
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-eq v6, v0, :cond_1

    .line 379
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 380
    return v8

    .line 383
    :cond_1
    return v8
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 391
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 392
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 394
    .local v1, "to":I
    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 395
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 396
    return v2

    .line 399
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 407
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 408
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 410
    .local v1, "to":I
    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 411
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 412
    return v2

    .line 415
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .line 166
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    .line 167
    return-void
.end method

.method private static extendSelection(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I
    .param p2, "memory"    # I

    .line 173
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 174
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 176
    :cond_0
    invoke-static {p0, p2}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 177
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 419
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 420
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 421
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 425
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    .line 426
    .local v1, "where":I
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 427
    return v0
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 353
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 354
    .local v6, "end":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 356
    .local v7, "line":I
    const/4 v8, 0x1

    if-lez v7, :cond_0

    .line 357
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 358
    return v8

    .line 359
    :cond_0
    if-eqz v6, :cond_1

    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 361
    return v8

    .line 364
    :cond_1
    return v8
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    .line 479
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 480
    .local v0, "pt":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 481
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 483
    .local v2, "pdir":I
    mul-int v3, p2, v2

    if-gez v3, :cond_0

    .line 484
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    return v3

    .line 486
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 488
    .local v3, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 489
    return v3

    .line 491
    :cond_1
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 51
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getSelectionMemory(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 58
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 40
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 269
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 270
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 272
    .local v7, "end":I
    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eq v0, v7, :cond_1

    .line 273
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 274
    .local v2, "min":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 276
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 278
    if-nez v2, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 279
    return v1

    .line 282
    :cond_0
    return v8

    .line 284
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_1
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 286
    .local v9, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v8

    if-ge v9, v2, :cond_2

    .line 287
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 289
    return v8

    .line 290
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-eq v7, v2, :cond_3

    .line 291
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 292
    return v8

    .line 296
    .end local v9    # "line":I
    :cond_3
    return v1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 305
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 306
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 308
    .local v1, "end":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 309
    const/4 v3, -0x1

    invoke-static {p1, v3, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 310
    return v2

    .line 312
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    .line 314
    .local v3, "to":I
    if-eq v3, v1, :cond_1

    .line 315
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 316
    return v2

    .line 320
    .end local v3    # "to":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 330
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 331
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 333
    .local v1, "end":I
    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 334
    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 335
    return v2

    .line 337
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    .line 339
    .local v3, "to":I
    if-eq v3, v1, :cond_1

    .line 340
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 341
    return v2

    .line 345
    .end local v3    # "to":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .line 467
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 468
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 469
    if-eqz p2, :cond_0

    .line 470
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 475
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 431
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 432
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 433
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .line 453
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 454
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 455
    if-eqz p2, :cond_0

    .line 456
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 461
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 437
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    .line 438
    .local v1, "where":I
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 439
    return v0
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .line 198
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 199
    .local v0, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 201
    .local v7, "end":I
    const/4 v8, 0x1

    const/4 v1, 0x0

    if-eq v0, v7, :cond_1

    .line 202
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    .local v2, "min":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 205
    .local v3, "max":I
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 207
    if-nez v2, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    return v8

    .line 213
    .end local v2    # "min":I
    .end local v3    # "max":I
    :cond_1
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 215
    .local v9, "line":I
    if-lez v9, :cond_2

    .line 216
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    .line 218
    return v8

    .line 219
    :cond_2
    if-eqz v7, :cond_3

    .line 220
    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 221
    return v8

    .line 225
    .end local v9    # "line":I
    :cond_3
    return v1
.end method

.method private static removeMemory(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 122
    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 123
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Selection$MemoryTextWatcher;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Selection$MemoryTextWatcher;

    .line 124
    .local v0, "watchers":[Landroid/text/Selection$MemoryTextWatcher;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 125
    .local v3, "watcher":Landroid/text/Selection$MemoryTextWatcher;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 124
    .end local v3    # "watcher":Landroid/text/Selection$MemoryTextWatcher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 183
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-interface {p0, v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;I)V

    .line 184
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 185
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 186
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 159
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 160
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .line 152
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 153
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .line 77
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 78
    return-void
.end method

.method private static setSelection(Landroid/text/Spannable;III)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "memory"    # I

    .line 89
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 90
    .local v0, "ostart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 92
    .local v1, "oend":I
    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_1

    .line 93
    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 96
    invoke-static {p0, p3}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    .line 98
    :cond_1
    return-void
.end method

.method private static setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "end"    # I
    .param p4, "direction"    # I
    .param p5, "extend"    # Z

    .line 236
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    add-int v1, p2, p4

    .line 237
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 238
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v0

    .line 239
    .local v0, "memory":I
    if-le v0, v2, :cond_0

    .line 241
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 242
    .local v1, "h":F
    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 243
    .local v2, "move":I
    nop

    .end local v1    # "h":F
    move v1, v0

    .line 244
    .local v1, "newMemory":I
    goto :goto_0

    .line 246
    .end local v1    # "newMemory":I
    .end local v2    # "move":I
    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 247
    .local v1, "h":F
    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 248
    .restart local v2    # "move":I
    nop

    .end local v0    # "memory":I
    .end local v1    # "h":F
    move v1, p3

    .local v1, "newMemory":I
    :goto_0
    move v0, v1

    .line 250
    .end local v1    # "newMemory":I
    .local v0, "newMemory":I
    goto :goto_1

    .line 251
    .end local v0    # "newMemory":I
    .end local v2    # "move":I
    :cond_1
    add-int v0, p2, p4

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 252
    .local v0, "move":I
    move v3, v2

    move v2, v0

    move v0, v3

    .line 255
    .local v0, "newMemory":I
    .restart local v2    # "move":I
    :goto_1
    if-eqz p5, :cond_2

    .line 256
    invoke-static {p0, v2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    .line 258
    :cond_2
    invoke-static {p0, v2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 260
    :goto_2
    return-void
.end method

.method private static updateMemory(Landroid/text/Spannable;I)V
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "memory"    # I

    .line 106
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 107
    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v1

    .line 108
    .local v1, "currentMemory":I
    if-eq p1, v1, :cond_0

    .line 109
    sget-object v2, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    if-ne v1, v0, :cond_0

    .line 112
    new-instance v0, Landroid/text/Selection$MemoryTextWatcher;

    invoke-direct {v0}, Landroid/text/Selection$MemoryTextWatcher;-><init>()V

    .line 113
    .local v0, "watcher":Landroid/text/TextWatcher;
    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {p0, v0, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .end local v0    # "watcher":Landroid/text/TextWatcher;
    .end local v1    # "currentMemory":I
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    .line 119
    :goto_0
    return-void
.end method
