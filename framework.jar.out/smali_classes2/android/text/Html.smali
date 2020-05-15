.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 11
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 288
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 291
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 292
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 293
    .local v3, "next":I
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 294
    .local v4, "style":[Landroid/text/style/ParagraphStyle;
    const-string v5, " "

    .line 295
    .local v5, "elements":Ljava/lang/String;
    const/4 v6, 0x0

    .line 297
    .local v6, "needDiv":Z
    move-object v7, v5

    move v5, v1

    .local v5, "j":I
    .local v7, "elements":Ljava/lang/String;
    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_3

    .line 298
    aget-object v8, v4, v5

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_2

    .line 299
    aget-object v8, v4, v5

    check-cast v8, Landroid/text/style/AlignmentSpan;

    .line 300
    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 301
    .local v8, "align":Landroid/text/Layout$Alignment;
    const/4 v6, 0x1

    .line 302
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_0

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"center\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 304
    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_1

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"right\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 307
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"left\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 297
    .end local v8    # "align":Landroid/text/Layout$Alignment;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 311
    .end local v5    # "j":I
    :cond_3
    if-eqz v6, :cond_4

    .line 312
    const-string v5, "<div "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_4
    invoke-static {p0, p1, v2, v3, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 317
    if-eqz v6, :cond_5

    .line 318
    const-string v5, "</div>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .end local v4    # "style":[Landroid/text/style/ParagraphStyle;
    .end local v6    # "needDiv":Z
    .end local v7    # "elements":Ljava/lang/String;
    :cond_5
    move v2, v3

    goto/16 :goto_0

    .line 321
    .end local v2    # "i":I
    .end local v3    # "next":I
    :cond_6
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .line 229
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 231
    .local v0, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    nop

    .line 240
    new-instance v7, Landroid/text/HtmlToSpannedConverter;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 242
    .local v1, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v1}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v2

    return-object v2

    .line 235
    .end local v1    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 232
    .end local v1    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 343
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int v1, p2, p1

    invoke-interface {v0, p0, p1, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string v0, " dir=\"rtl\""

    return-object v0

    .line 346
    :cond_0
    const-string v0, " dir=\"ltr\""

    return-object v0
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceNoVerticalMargin"    # Z
    .param p4, "includeTextAlign"    # Z

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "margin":Ljava/lang/String;
    const/4 v1, 0x0

    .line 355
    .local v1, "textAlign":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 356
    const-string/jumbo v0, "margin-top:0; margin-bottom:0;"

    .line 358
    :cond_0
    if-eqz p4, :cond_4

    .line 359
    const-class v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 362
    .local v2, "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 362
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 363
    aget-object v4, v2, v3

    .line 364
    .local v4, "s":Landroid/text/style/AlignmentSpan;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x33

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    .line 365
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 366
    .local v5, "alignment":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_1

    .line 367
    const-string/jumbo v1, "text-align:start;"

    goto :goto_1

    .line 368
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_2

    .line 369
    const-string/jumbo v1, "text-align:center;"

    goto :goto_1

    .line 370
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_4

    .line 371
    const-string/jumbo v1, "text-align:end;"

    goto :goto_1

    .line 362
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v5    # "alignment":Landroid/text/Layout$Alignment;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 378
    .end local v2    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "i":I
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 379
    const-string v2, ""

    return-object v2

    .line 382
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " style=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .local v2, "style":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 385
    :cond_6
    if-eqz v0, :cond_7

    .line 386
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 387
    :cond_7
    if-eqz v1, :cond_8

    .line 388
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_8
    :goto_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 396
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    .line 397
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 401
    :goto_0
    return-void
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 470
    const-string v0, "<p"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 474
    const/16 v1, 0xa

    invoke-static {p1, v1, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 475
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 476
    move v2, p3

    .line 479
    :cond_0
    const/4 v3, 0x0

    .line 481
    .local v3, "nl":I
    :goto_1
    if-ge v2, p3, :cond_1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_1

    .line 482
    add-int/lit8 v3, v3, 0x1

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_1
    sub-int v1, v2, v3

    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 488
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    .line 489
    const-string v1, "<br>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 491
    :cond_2
    const/4 v1, 0x2

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 492
    const-string v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 494
    .end local v1    # "j":I
    :cond_3
    if-eq v2, p3, :cond_4

    .line 496
    const-string v1, "</p>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "<p"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .end local v3    # "nl":I
    :cond_4
    :goto_3
    move v0, v2

    goto :goto_0

    .line 502
    .end local v0    # "i":I
    .end local v2    # "next":I
    :cond_5
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "isInList":Z
    move v1, v0

    move v0, p2

    .line 407
    .local v0, "i":I
    .local v1, "isInList":Z
    :goto_0
    if-gt v0, p3, :cond_a

    .line 408
    const/16 v2, 0xa

    invoke-static {p1, v2, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 409
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 410
    move v2, p3

    .line 413
    :cond_0
    if-ne v2, v0, :cond_2

    .line 414
    if-eqz v1, :cond_1

    .line 416
    const/4 v1, 0x0

    .line 417
    const-string v3, "</ul>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    const-string v3, "<br>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 421
    :cond_2
    const/4 v3, 0x0

    .line 422
    .local v3, "isListItem":Z
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v0, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 423
    .local v4, "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 424
    .local v8, "paragraphStyle":Landroid/text/style/ParagraphStyle;
    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 425
    .local v9, "spanFlags":I
    and-int/lit8 v10, v9, 0x33

    const/16 v11, 0x33

    if-ne v10, v11, :cond_3

    instance-of v10, v8, Landroid/text/style/BulletSpan;

    if-eqz v10, :cond_3

    .line 427
    const/4 v3, 0x1

    .line 428
    goto :goto_2

    .line 423
    .end local v8    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v9    # "spanFlags":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 432
    :cond_4
    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    .line 434
    const/4 v1, 0x1

    .line 435
    const-string v7, "<ul"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {p1, v0, v2, v5, v6}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">\n"

    .line 437
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_5
    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 442
    const/4 v1, 0x0

    .line 443
    const-string v7, "</ul>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_6
    if-eqz v3, :cond_7

    const-string v7, "li"

    goto :goto_3

    :cond_7
    const-string/jumbo v7, "p"

    .line 447
    .local v7, "tagType":Ljava/lang/String;
    :goto_3
    const-string v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {p1, v0, v2}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_8

    move v6, v5

    nop

    .line 449
    :cond_8
    invoke-static {p1, v0, v2, v6, v5}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    .line 450
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {p0, p1, v0, v2}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 454
    const-string v5, "</"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v5, ">\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    if-ne v2, p3, :cond_9

    if-eqz v1, :cond_9

    .line 459
    const/4 v1, 0x0

    .line 460
    const-string v5, "</ul>\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .end local v3    # "isListItem":Z
    .end local v4    # "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "tagType":Ljava/lang/String;
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 407
    move v0, v2

    goto/16 :goto_0

    .line 466
    .end local v0    # "i":I
    .end local v2    # "next":I
    :cond_a
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 326
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 327
    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 328
    .local v1, "next":I
    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    .line 330
    .local v2, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 331
    .local v6, "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v6    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 334
    :cond_0
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 336
    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 337
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string v6, "</blockquote>\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 326
    .end local v2    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 279
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 280
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 281
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 285
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 11
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 507
    move v0, p2

    .line 507
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1c

    .line 508
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 509
    .local v1, "next":I
    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 511
    .local v2, "style":[Landroid/text/style/CharacterStyle;
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 511
    .local v0, "j":I
    .local v4, "i":I
    :goto_1
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v0, v5, :cond_e

    .line 512
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_1

    .line 513
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 515
    .local v5, "s":I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    .line 516
    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_0
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    .line 519
    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .end local v5    # "s":I
    :cond_1
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/TypefaceSpan;

    if-eqz v5, :cond_2

    .line 523
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v5}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 526
    const-string v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/SuperscriptSpan;

    if-eqz v5, :cond_3

    .line 530
    const-string v5, "<sup>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_3
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/SubscriptSpan;

    if-eqz v5, :cond_4

    .line 533
    const-string v5, "<sub>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_4
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_5

    .line 536
    const-string v5, "<u>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_5
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/StrikethroughSpan;

    if-eqz v5, :cond_6

    .line 539
    const-string v5, "<span style=\"text-decoration:line-through;\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_6
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/URLSpan;

    if-eqz v5, :cond_7

    .line 542
    const-string v5, "<a href=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/URLSpan;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v5, "\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_7
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_8

    .line 547
    const-string v5, "<img src=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/ImageSpan;

    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v5, "\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    move v4, v1

    .line 554
    :cond_8
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v5, :cond_a

    .line 555
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/AbsoluteSizeSpan;

    .line 556
    .local v5, "s":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    .line 557
    .local v7, "sizeDip":F
    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v8

    if-nez v8, :cond_9

    .line 558
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    .line 559
    .local v8, "application":Landroid/app/Application;
    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v9

    .line 563
    .end local v8    # "application":Landroid/app/Application;
    :cond_9
    const-string v8, "<span style=\"font-size:%.0fpx\";>"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .end local v5    # "s":Landroid/text/style/AbsoluteSizeSpan;
    .end local v7    # "sizeDip":F
    :cond_a
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/RelativeSizeSpan;

    if-eqz v5, :cond_b

    .line 566
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v5}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v5

    .line 567
    .local v5, "sizeEm":F
    const-string v7, "<span style=\"font-size:%.2fem;\">"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .end local v5    # "sizeEm":F
    :cond_b
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/ForegroundColorSpan;

    const v7, 0xffffff

    if-eqz v5, :cond_c

    .line 570
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    .line 571
    .local v5, "color":I
    const-string v8, "<span style=\"color:#%06X;\">"

    new-array v9, v6, [Ljava/lang/Object;

    and-int v10, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .end local v5    # "color":I
    :cond_c
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_d

    .line 574
    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    .line 575
    .restart local v5    # "color":I
    const-string v8, "<span style=\"background-color:#%06X;\">"

    new-array v6, v6, [Ljava/lang/Object;

    and-int/2addr v7, v5

    .line 576
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 575
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .end local v5    # "color":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 580
    .end local v0    # "j":I
    :cond_e
    invoke-static {p0, p1, v4, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 582
    array-length v0, v2

    sub-int/2addr v0, v6

    .line 582
    .restart local v0    # "j":I
    :goto_2
    if-ltz v0, :cond_1b

    .line 583
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_f

    .line 584
    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_f
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_10

    .line 587
    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_10
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_11

    .line 590
    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_11
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_12

    .line 593
    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_12
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/URLSpan;

    if-eqz v3, :cond_13

    .line 596
    const-string v3, "</a>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_13
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/StrikethroughSpan;

    if-eqz v3, :cond_14

    .line 599
    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_14
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_15

    .line 602
    const-string v3, "</u>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_15
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/SubscriptSpan;

    if-eqz v3, :cond_16

    .line 605
    const-string v3, "</sub>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_16
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/SuperscriptSpan;

    if-eqz v3, :cond_17

    .line 608
    const-string v3, "</sup>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_17
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_18

    .line 611
    aget-object v3, v2, v0

    check-cast v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v5, "monospace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 614
    const-string v5, "</tt>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .end local v3    # "s":Ljava/lang/String;
    :cond_18
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_1a

    .line 618
    aget-object v3, v2, v0

    check-cast v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v3

    .line 620
    .local v3, "s":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_19

    .line 621
    const-string v5, "</b>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_19
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1a

    .line 624
    const-string v5, "</i>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .end local v3    # "s":I
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 507
    .end local v0    # "j":I
    .end local v2    # "style":[Landroid/text/style/CharacterStyle;
    :cond_1b
    move v0, v1

    .line 507
    .end local v4    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 629
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_1c
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 6
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 633
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_a

    .line 634
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 636
    .local v1, "c":C
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 637
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 638
    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 639
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 640
    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 641
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 642
    :cond_2
    const v2, 0xd800

    if-lt v1, v2, :cond_4

    const v3, 0xdfff

    if-gt v1, v3, :cond_4

    .line 643
    const v4, 0xdc00

    if-ge v1, v4, :cond_9

    add-int/lit8 v5, v0, 0x1

    if-ge v5, p3, :cond_9

    .line 644
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 645
    .local v5, "d":C
    if-lt v5, v4, :cond_3

    if-gt v5, v3, :cond_3

    .line 646
    add-int/lit8 v0, v0, 0x1

    .line 647
    const/high16 v3, 0x10000

    sub-int v2, v1, v2

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v3

    sub-int v3, v5, v4

    or-int/2addr v2, v3

    .line 648
    .local v2, "codepoint":I
    const-string v3, "&#"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .end local v2    # "codepoint":I
    .end local v5    # "d":C
    :cond_3
    goto :goto_3

    .line 651
    :cond_4
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_8

    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    goto :goto_2

    .line 653
    :cond_5
    if-ne v1, v2, :cond_7

    .line 654
    :goto_1
    add-int/lit8 v3, v0, 0x1

    if-ge v3, p3, :cond_6

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_6

    .line 655
    const-string v3, "&nbsp;"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 659
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 661
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v1    # "c":C
    goto :goto_3

    .line 652
    .restart local v1    # "c":C
    :cond_8
    :goto_2
    const-string v2, "&#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .end local v1    # "c":C
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 664
    .end local v0    # "i":I
    :cond_a
    return-void
.end method
