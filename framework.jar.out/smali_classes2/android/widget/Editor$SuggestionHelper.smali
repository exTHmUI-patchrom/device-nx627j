.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 3416
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3417
    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$1;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 3419
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .line 3416
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionHelper;

    .line 3416
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 10

    .line 3447
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 3448
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 3449
    .local v1, "spannable":Landroid/text/Spannable;
    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 3451
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3452
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 3453
    .local v5, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3454
    .local v6, "start":I
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3455
    .local v7, "end":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    sub-int v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    .end local v5    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3460
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3461
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3463
    return-object v2
.end method


# virtual methods
.method public getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .locals 20
    .param p1, "suggestionInfos"    # [Landroid/widget/Editor$SuggestionInfo;
    .param p2, "misspelledSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    move-object/from16 v0, p1

    .line 3476
    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 3477
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v4

    .line 3478
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v5, v4

    .line 3479
    .local v5, "nbSpans":I
    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 3481
    :cond_0
    const/4 v7, 0x0

    .line 3482
    .local v7, "numberOfSuggestions":I
    array-length v8, v4

    move v9, v7

    move v7, v6

    .end local v7    # "numberOfSuggestions":I
    .local v9, "numberOfSuggestions":I
    :goto_0
    if-ge v7, v8, :cond_7

    aget-object v10, v4, v7

    .line 3483
    .local v10, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 3484
    .local v11, "spanStart":I
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 3486
    .local v12, "spanEnd":I
    if-eqz v1, :cond_1

    .line 3487
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1

    .line 3488
    iput-object v10, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3489
    iput v11, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 3490
    iput v12, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 3493
    :cond_1
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    .line 3494
    .local v13, "suggestions":[Ljava/lang/String;
    array-length v14, v13

    .line 3496
    .local v14, "nbSuggestions":I
    move v15, v9

    move v9, v6

    .local v9, "suggestionIndex":I
    .local v15, "numberOfSuggestions":I
    :goto_1
    if-ge v9, v14, :cond_6

    .line 3497
    aget-object v6, v13, v9

    .line 3498
    .local v6, "suggestion":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v1, v17

    if-ge v1, v15, :cond_4

    .line 3499
    .end local v17    # "i":I
    .local v1, "i":I
    aget-object v2, v0, v1

    .line 3500
    .local v2, "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    move-object/from16 v18, v3

    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .end local v3    # "spannable":Landroid/text/Spannable;
    .local v18, "spannable":Landroid/text/Spannable;
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3501
    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v3, v3, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 3503
    .local v3, "otherSpanStart":I
    move-object/from16 v19, v4

    iget-object v4, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v19, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 3505
    .local v4, "otherSpanEnd":I
    if-ne v11, v3, :cond_3

    if-ne v12, v4, :cond_3

    .line 3506
    nop

    .line 3496
    const/4 v2, 0x0

    goto :goto_3

    .line 3498
    .end local v2    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v3    # "otherSpanStart":I
    .end local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_2
    move-object/from16 v19, v4

    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_3
    add-int/lit8 v16, v1, 0x1

    .end local v1    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto :goto_2

    .line 3511
    .end local v16    # "i":I
    .end local v18    # "spannable":Landroid/text/Spannable;
    .end local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v3, "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    .restart local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    aget-object v1, v0, v15

    .line 3512
    .local v1, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v1, v10, v11, v12}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    .line 3513
    iput v9, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 3514
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3515
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3516
    iget-object v3, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3517
    add-int/lit8 v15, v15, 0x1

    .line 3518
    array-length v3, v0

    if-lt v15, v3, :cond_5

    .line 3519
    return v15

    .line 3496
    .end local v1    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v6    # "suggestion":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v6, v2

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto :goto_1

    .line 3482
    .end local v9    # "suggestionIndex":I
    .end local v10    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "suggestions":[Ljava/lang/String;
    .end local v14    # "nbSuggestions":I
    .end local v18    # "spannable":Landroid/text/Spannable;
    .end local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move v2, v6

    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    .restart local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int/lit8 v7, v7, 0x1

    move v9, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 3523
    .end local v15    # "numberOfSuggestions":I
    .end local v18    # "spannable":Landroid/text/Spannable;
    .end local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v9, "numberOfSuggestions":I
    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    .restart local v19    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    return v9
.end method
