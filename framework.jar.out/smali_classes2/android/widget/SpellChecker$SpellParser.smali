.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/SpellChecker;
    .param p2, "x1"    # Landroid/widget/SpellChecker$1;

    .line 503
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .line 541
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .line 742
    .local p3, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v0, p3

    .line 743
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 744
    aget-object v2, p3, v1

    .line 745
    .local v2, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 746
    .local v3, "start":I
    if-le v3, p2, :cond_0

    .end local v2    # "span":Ljava/lang/Object;, "TT;"
    .end local v3    # "start":I
    goto :goto_1

    .line 747
    .restart local v2    # "span":Ljava/lang/Object;, "TT;"
    .restart local v3    # "start":I
    :cond_0
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 748
    .local v4, "end":I
    if-ge v4, p2, :cond_1

    .end local v2    # "span":Ljava/lang/Object;, "TT;"
    .end local v3    # "start":I
    .end local v4    # "end":I
    goto :goto_1

    .line 749
    .restart local v2    # "span":Ljava/lang/Object;, "TT;"
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    :cond_1
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 743
    .end local v2    # "span":Ljava/lang/Object;, "TT;"
    .end local v3    # "start":I
    .end local v4    # "end":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 533
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 534
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 2

    .line 522
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse()V
    .locals 21

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v1}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 548
    .local v1, "editable":Landroid/text/Editable;
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    .line 552
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v3

    .line 551
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "start":I
    goto :goto_0

    .line 554
    .end local v2    # "start":I
    :cond_0
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 557
    .restart local v2    # "start":I
    :goto_0
    iget-object v5, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 559
    .local v5, "end":I
    add-int/lit16 v6, v2, 0x15e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 560
    .local v6, "wordIteratorWindowEnd":I
    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 563
    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v7

    .line 565
    .local v7, "wordStart":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 566
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    .line 567
    .local v9, "wordEnd":I
    if-eq v9, v8, :cond_2

    .line 568
    iget-object v10, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v7

    goto :goto_1

    .line 571
    .end local v9    # "wordEnd":I
    :cond_1
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    .line 573
    .restart local v9    # "wordEnd":I
    :cond_2
    :goto_1
    if-ne v9, v8, :cond_3

    .line 577
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 578
    return-void

    .line 583
    :cond_3
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v5, 0x1

    const-class v12, Landroid/text/style/SpellCheckSpan;

    invoke-interface {v1, v10, v11, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/SpellCheckSpan;

    .line 585
    .local v10, "spellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v5, 0x1

    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v11, v12, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/SuggestionSpan;

    .line 588
    .local v11, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v12, 0x0

    .line 589
    .local v12, "wordCount":I
    const/4 v13, 0x0

    .line 591
    .local v13, "scheduleOtherSpellCheck":Z
    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v14}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 592
    if-ge v6, v5, :cond_4

    .line 597
    const/4 v13, 0x1

    .line 599
    :cond_4
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v3

    .line 600
    .local v3, "spellCheckEnd":I
    const/4 v14, 0x1

    if-eq v3, v8, :cond_5

    move v15, v14

    goto :goto_2

    :cond_5
    move v15, v4

    .line 601
    .local v15, "correct":Z
    :goto_2
    if-eqz v15, :cond_7

    .line 602
    iget-object v4, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v4}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v3

    .line 603
    if-eq v3, v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    move v15, v14

    .line 605
    :cond_7
    if-nez v15, :cond_8

    .line 609
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 610
    return-void

    .line 614
    :cond_8
    move v4, v7

    .line 615
    .local v4, "spellCheckStart":I
    const/4 v14, 0x1

    .line 617
    .local v14, "createSpellCheckSpan":Z
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$600(Landroid/widget/SpellChecker;)I

    move-result v8

    move/from16 v18, v6

    move/from16 v6, v17

    if-ge v6, v8, :cond_e

    .line 618
    .end local v17    # "i":I
    .local v6, "i":I
    .local v18, "wordIteratorWindowEnd":I
    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v8

    aget-object v8, v8, v6

    .line 619
    .local v8, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move/from16 v19, v7

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    .end local v7    # "wordStart":I
    .local v19, "wordStart":I
    invoke-static {v7}, Landroid/widget/SpellChecker;->access$800(Landroid/widget/SpellChecker;)[I

    move-result-object v7

    aget v7, v7, v6

    if-ltz v7, :cond_c

    invoke-virtual {v8}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 620
    nop

    .line 617
    move/from16 v20, v9

    goto :goto_5

    .line 622
    :cond_9
    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 623
    .local v7, "spanStart":I
    move/from16 v20, v9

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 624
    .local v9, "spanEnd":I
    .local v20, "wordEnd":I
    if-lt v9, v4, :cond_d

    if-ge v3, v7, :cond_a

    .line 626
    goto :goto_5

    .line 628
    :cond_a
    if-gt v7, v4, :cond_b

    if-gt v3, v9, :cond_b

    .line 631
    const/4 v14, 0x0

    .line 635
    goto :goto_6

    .line 638
    :cond_b
    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 639
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 640
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v7    # "spanStart":I
    .end local v8    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v9    # "spanEnd":I
    goto :goto_5

    .line 617
    .end local v20    # "wordEnd":I
    .local v9, "wordEnd":I
    :cond_c
    move/from16 v20, v9

    .end local v9    # "wordEnd":I
    .restart local v20    # "wordEnd":I
    :cond_d
    :goto_5
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    const/4 v8, -0x1

    goto :goto_4

    .line 651
    .end local v16    # "i":I
    .end local v19    # "wordStart":I
    .end local v20    # "wordEnd":I
    .local v7, "wordStart":I
    .restart local v9    # "wordEnd":I
    :cond_e
    move/from16 v19, v7

    move/from16 v20, v9

    .end local v7    # "wordStart":I
    .end local v9    # "wordEnd":I
    .restart local v19    # "wordStart":I
    .restart local v20    # "wordEnd":I
    :goto_6
    if-ge v3, v2, :cond_f

    .line 652
    goto :goto_7

    .line 654
    :cond_f
    if-gt v3, v4, :cond_10

    .line 655
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to spellcheck invalid region, from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    goto :goto_7

    .line 659
    :cond_10
    if-eqz v14, :cond_11

    .line 660
    iget-object v6, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v6, v1, v4, v3}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 663
    .end local v4    # "spellCheckStart":I
    .end local v14    # "createSpellCheckSpan":Z
    :cond_11
    :goto_7
    nop

    .line 664
    .end local v15    # "correct":Z
    .end local v19    # "wordStart":I
    .local v3, "wordStart":I
    nop

    .line 731
    move v4, v3

    move/from16 v6, v18

    move/from16 v9, v20

    goto/16 :goto_d

    .line 665
    .end local v3    # "wordStart":I
    .end local v18    # "wordIteratorWindowEnd":I
    .end local v20    # "wordEnd":I
    .local v6, "wordIteratorWindowEnd":I
    .restart local v7    # "wordStart":I
    .restart local v9    # "wordEnd":I
    :cond_12
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v4, v19

    .end local v7    # "wordStart":I
    .local v4, "wordStart":I
    :goto_8
    if-gt v4, v5, :cond_20

    .line 666
    if-lt v9, v2, :cond_1b

    if-le v9, v4, :cond_1b

    .line 667
    if-lt v12, v3, :cond_13

    .line 668
    const/4 v13, 0x1

    .line 669
    goto/16 :goto_d

    .line 674
    :cond_13
    if-ge v4, v2, :cond_14

    if-le v9, v2, :cond_14

    .line 675
    invoke-direct {v0, v1, v2, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 676
    invoke-direct {v0, v1, v2, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 679
    :cond_14
    if-ge v4, v5, :cond_15

    if-le v9, v5, :cond_15

    .line 680
    invoke-direct {v0, v1, v5, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 681
    invoke-direct {v0, v1, v5, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 685
    :cond_15
    const/4 v7, 0x1

    .line 686
    .local v7, "createSpellCheckSpan":Z
    if-ne v9, v2, :cond_17

    .line 687
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    array-length v14, v10

    if-ge v8, v14, :cond_17

    .line 688
    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 689
    .local v14, "spanEnd":I
    if-ne v14, v2, :cond_16

    .line 690
    const/4 v7, 0x0

    .line 691
    goto :goto_a

    .line 687
    .end local v14    # "spanEnd":I
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 696
    .end local v8    # "i":I
    :cond_17
    :goto_a
    if-ne v4, v5, :cond_19

    .line 697
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    array-length v14, v10

    if-ge v8, v14, :cond_19

    .line 698
    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 699
    .local v14, "spanStart":I
    if-ne v14, v5, :cond_18

    .line 700
    const/4 v7, 0x0

    .line 701
    goto :goto_c

    .line 697
    .end local v14    # "spanStart":I
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 706
    .end local v8    # "i":I
    :cond_19
    :goto_c
    if-eqz v7, :cond_1a

    .line 707
    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8, v1, v4, v9}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 709
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 713
    .end local v7    # "createSpellCheckSpan":Z
    :cond_1b
    move v7, v9

    .line 714
    .local v7, "originalWordEnd":I
    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    .line 715
    .end local v9    # "wordEnd":I
    .local v8, "wordEnd":I
    if-ge v6, v5, :cond_1d

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1c

    if-lt v8, v6, :cond_1d

    .line 717
    :cond_1c
    add-int/lit16 v9, v7, 0x15e

    .line 718
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 719
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v1, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 721
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    .line 723
    .end local v8    # "wordEnd":I
    .restart local v9    # "wordEnd":I
    :cond_1d
    move v9, v8

    const/4 v8, -0x1

    if-ne v9, v8, :cond_1e

    .end local v7    # "originalWordEnd":I
    goto :goto_e

    .line 724
    .restart local v7    # "originalWordEnd":I
    :cond_1e
    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v14}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    .line 725
    if-ne v4, v8, :cond_1f

    .line 726
    goto :goto_e

    .line 728
    .end local v7    # "originalWordEnd":I
    :cond_1f
    goto/16 :goto_8

    .line 731
    :cond_20
    :goto_d
    const/4 v8, -0x1

    :goto_e
    if-eqz v13, :cond_21

    if-eq v4, v8, :cond_21

    if-gt v4, v5, :cond_21

    .line 733
    invoke-direct {v0, v1, v4, v5}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_f

    .line 735
    :cond_21
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 738
    :goto_f
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$1000(Landroid/widget/SpellChecker;)V

    .line 739
    return-void
.end method

.method public parse(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 507
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 509
    .local v0, "max":I
    if-le p2, v0, :cond_0

    .line 510
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move v1, v0

    .local v1, "parseEnd":I
    goto :goto_0

    .line 513
    .end local v1    # "parseEnd":I
    :cond_0
    move v1, p2

    .line 515
    .restart local v1    # "parseEnd":I
    :goto_0
    if-le v1, p1, :cond_1

    .line 516
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 519
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 526
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 527
    return-void
.end method
