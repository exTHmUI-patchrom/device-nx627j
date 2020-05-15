.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private mClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private final mEditTextLogger:Z

.field private mStartIndex:I

.field private mText:Ljava/lang/String;

.field private final mTokenIterator:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 676
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    .line 688
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/SelectionSessionLogger;->getTokenIterator(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 689
    return-void
.end method

.method private countWordsBackward(I)I
    .locals 4
    .param p1, "from"    # I

    .line 827
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "wordCount":I
    move v1, v0

    move v0, p1

    .line 830
    .local v0, "offset":I
    .local v1, "wordCount":I
    :goto_1
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-le v0, v2, :cond_2

    .line 831
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 832
    .local v2, "start":I
    invoke-direct {p0, v2, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 833
    add-int/lit8 v1, v1, 0x1

    .line 835
    :cond_1
    move v0, v2

    .line 836
    .end local v2    # "start":I
    goto :goto_1

    .line 837
    :cond_2
    return v1
.end method

.method private countWordsForward(I)I
    .locals 4
    .param p1, "from"    # I

    .line 841
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "wordCount":I
    move v1, v0

    move v0, p1

    .line 844
    .local v0, "offset":I
    .local v1, "wordCount":I
    :goto_1
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge v0, v2, :cond_2

    .line 845
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 846
    .local v2, "end":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 847
    add-int/lit8 v1, v1, 0x1

    .line 849
    :cond_1
    move v0, v2

    .line 850
    .end local v2    # "end":I
    goto :goto_1

    .line 851
    :cond_2
    return v1
.end method

.method private static getWidetType(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 693
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "edittext"

    return-object v0

    .line 696
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    const-string/jumbo v0, "textview"

    return-object v0

    .line 699
    :cond_1
    const-string/jumbo v0, "nosel-textview"

    return-object v0
.end method

.method private getWordDelta(II)[I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 796
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 798
    .local v0, "wordIndices":[I
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 799
    aput v3, v0, v3

    goto :goto_0

    .line 800
    :cond_0
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p1, v1, :cond_1

    .line 801
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v3

    goto :goto_0

    .line 803
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v3

    .line 806
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 808
    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 809
    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v4

    .line 807
    invoke-direct {p0, v1, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    aget v1, v0, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 815
    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p2, v1, :cond_3

    .line 816
    aput v3, v0, v2

    goto :goto_1

    .line 817
    :cond_3
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p2, v1, :cond_4

    .line 818
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v2

    goto :goto_1

    .line 820
    :cond_4
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v2

    .line 823
    :goto_1
    return-object v0
.end method

.method private hasActiveClassificationSession()Z
    .locals 1

    .line 792
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhitespace(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 855
    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endTextClassificationSession()V
    .locals 1

    .line 786
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    .line 789
    :cond_0
    return-void
.end method

.method public isEditTextLogger()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return v0
.end method

.method public logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "action"    # I
    .param p4, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 757
    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 759
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 760
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v0

    .line 761
    .local v0, "wordIndices":[I
    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 762
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 763
    invoke-static {v2, v1, p3, p4}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 762
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    .line 767
    :cond_0
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 768
    invoke-static {v2, v1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 767
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 771
    :goto_0
    invoke-static {p3}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v0    # "wordIndices":[I
    :cond_1
    goto :goto_1

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelectionMetricsLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 728
    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 730
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 731
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v0

    .line 732
    .local v0, "wordIndices":[I
    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 733
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 734
    invoke-static {v2, v1, p4}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 733
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    .line 736
    :cond_0
    if-eqz p3, :cond_1

    .line 737
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 738
    invoke-static {v2, v1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 737
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 742
    invoke-static {v2, v1}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 741
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v0    # "wordIndices":[I
    :cond_2
    :goto_0
    goto :goto_1

    .line 746
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelectionMetricsLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "classificationSession"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "index"    # I
    .param p4, "invocationMethod"    # I

    .line 707
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 709
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 712
    :cond_1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 713
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 714
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 715
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 717
    invoke-static {p4, v2}, Landroid/view/textclassifier/SelectionEvent;->createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 716
    invoke-interface {v0, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_2
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelectionMetricsLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
