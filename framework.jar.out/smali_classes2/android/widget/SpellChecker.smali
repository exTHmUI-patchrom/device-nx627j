.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MIN_SENTENCE_LENGTH:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final SUGGESTION_SPAN_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private final mSuggestionSpanCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 88
    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 101
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 105
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 110
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 112
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 115
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/SpellChecker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SpellChecker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    return v0
.end method

.method static synthetic access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/SpellChecker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SpellChecker;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SpellChecker;

    .line 48
    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/SpellChecker;
    .param p1, "x1"    # Landroid/text/Editable;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 195
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 196
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    .line 197
    .local v1, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 199
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v3, v2, v0

    .line 200
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 17
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p3, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;
    .param p4, "offset"    # I
    .param p5, "length"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 456
    move/from16 v4, p5

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 457
    .local v5, "spellCheckSpanStart":I
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 458
    .local v6, "spellCheckSpanEnd":I
    if-ltz v5, :cond_6

    if-gt v6, v5, :cond_0

    goto :goto_3

    .line 463
    :cond_0
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    if-eq v4, v7, :cond_1

    .line 464
    add-int v7, v5, v3

    .line 465
    .local v7, "start":I
    add-int v8, v7, v4

    .local v8, "end":I
    goto :goto_0

    .line 467
    .end local v7    # "start":I
    .end local v8    # "end":I
    :cond_1
    move v7, v5

    .line 468
    .restart local v7    # "start":I
    move v8, v6

    .line 471
    .restart local v8    # "end":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    .line 473
    .local v9, "suggestionsCount":I
    if-lez v9, :cond_3

    .line 474
    new-array v11, v9, [Ljava/lang/String;

    .line 475
    .local v11, "suggestions":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_2

    .line 476
    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    .line 475
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 479
    .end local v12    # "i":I
    :cond_2
    move-object/from16 v13, p2

    goto :goto_2

    .end local v11    # "suggestions":[Ljava/lang/String;
    :cond_3
    move-object/from16 v13, p2

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 482
    .restart local v11    # "suggestions":[Ljava/lang/String;
    :goto_2
    new-instance v12, Landroid/text/style/SuggestionSpan;

    iget-object v14, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x3

    invoke-direct {v12, v14, v11, v15}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 486
    .local v12, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    iget-boolean v14, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v14, :cond_5

    .line 487
    invoke-static {v7, v8}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 488
    .local v14, "key":Ljava/lang/Long;
    iget-object v15, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v15, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/text/style/SuggestionSpan;

    .line 489
    .local v15, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v15, :cond_4

    .line 494
    invoke-interface {v1, v15}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 496
    :cond_4
    iget-object v10, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v10, v14, v12}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .end local v14    # "key":Ljava/lang/Long;
    .end local v15    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_5
    const/16 v10, 0x21

    invoke-interface {v1, v12, v7, v8, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 500
    iget-object v10, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v10, v7, v8, v14}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 501
    return-void

    .line 459
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "suggestionsCount":I
    .end local v11    # "suggestions":[Ljava/lang/String;
    .end local v12    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    :goto_3
    move-object/from16 v13, p2

    return-void
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .line 757
    if-eq p4, p1, :cond_0

    if-eq p3, p2, :cond_0

    .line 758
    const/4 v0, 0x1

    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_0

    .line 762
    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_0
    if-ne p4, p1, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 763
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 764
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    .line 771
    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_0

    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_1
    if-ne p3, p2, :cond_2

    if-lez p2, :cond_2

    .line 772
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 773
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    .line 780
    .local v0, "haveWordBoundariesChanged":Z
    goto :goto_0

    .line 784
    .end local v0    # "haveWordBoundariesChanged":Z
    :cond_2
    const/4 v0, 0x0

    .line 786
    .restart local v0    # "haveWordBoundariesChanged":Z
    :goto_0
    return v0
.end method

.method private isSessionActive()Z
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 3

    .line 183
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v1

    if-gez v2, :cond_0

    return v1

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 188
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 190
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 191
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 17
    .param p1, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 326
    move/from16 v8, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    iget v2, v6, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 329
    :cond_0
    iget-object v1, v6, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/text/Editable;

    .line 330
    .local v10, "editable":Landroid/text/Editable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v11

    .line 331
    .local v11, "sequenceNumber":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "k":I
    :goto_0
    move v12, v2

    .end local v2    # "k":I
    .local v12, "k":I
    iget v2, v6, Landroid/widget/SpellChecker;->mLength:I

    if-ge v12, v2, :cond_7

    .line 332
    iget-object v2, v6, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v12

    if-ne v11, v2, :cond_6

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v13

    .line 334
    .local v13, "attributes":I
    and-int/lit8 v0, v13, 0x1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v14, v0

    .line 336
    .local v14, "isInDictionary":Z
    and-int/lit8 v0, v13, 0x2

    if-lez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    move v15, v1

    .line 339
    .local v15, "looksLikeTypo":Z
    iget-object v0, v6, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v0, v12

    .line 342
    .local v5, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-nez v14, :cond_3

    if-eqz v15, :cond_3

    .line 343
    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v5

    move v4, v7

    move-object v9, v5

    move v5, v8

    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .local v9, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    invoke-direct/range {v0 .. v5}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    goto :goto_3

    .line 347
    .end local v9    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_3
    move-object v9, v5

    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v9    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    iget-boolean v0, v6, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v0, :cond_5

    .line 350
    invoke-interface {v10, v9}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 351
    .local v0, "spellCheckSpanStart":I
    invoke-interface {v10, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 354
    .local v1, "spellCheckSpanEnd":I
    const/4 v2, -0x1

    if-eq v7, v2, :cond_4

    if-eq v8, v2, :cond_4

    .line 355
    add-int v2, v0, v7

    .line 356
    .local v2, "start":I
    add-int v3, v2, v8

    .local v3, "end":I
    goto :goto_2

    .line 358
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_4
    move v2, v0

    .line 359
    .restart local v2    # "start":I
    move v3, v1

    .line 361
    .restart local v3    # "end":I
    :goto_2
    if-ltz v0, :cond_5

    if-le v1, v0, :cond_5

    if-le v3, v2, :cond_5

    .line 363
    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 364
    .local v4, "key":Ljava/lang/Long;
    iget-object v5, v6, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/style/SuggestionSpan;

    .line 365
    .local v5, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v5, :cond_5

    .line 370
    invoke-interface {v10, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 371
    move/from16 v16, v0

    iget-object v0, v6, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .end local v0    # "spellCheckSpanStart":I
    .local v16, "spellCheckSpanStart":I
    invoke-virtual {v0, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v1    # "spellCheckSpanEnd":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "key":Ljava/lang/Long;
    .end local v5    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v16    # "spellCheckSpanStart":I
    :cond_5
    :goto_3
    return-object v9

    .line 331
    .end local v9    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v13    # "attributes":I
    .end local v14    # "isInDictionary":Z
    .end local v15    # "looksLikeTypo":Z
    :cond_6
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "k":I
    .local v2, "k":I
    goto :goto_0

    .line 379
    .end local v2    # "k":I
    :cond_7
    return-object v0

    .line 327
    .end local v10    # "editable":Landroid/text/Editable;
    .end local v11    # "sequenceNumber":I
    :cond_8
    :goto_4
    return-object v0
.end method

.method private resetSession()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 120
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "textservices"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 122
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v4, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 131
    iput-boolean v3, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 135
    :goto_1
    move v0, v2

    .line 135
    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_2

    .line 136
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    .end local v0    # "i":I
    :cond_2
    iput v2, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 141
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 142
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 143
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .line 433
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 451
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 146
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 148
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 150
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 157
    return-void
.end method

.method private spellCheck()V
    .locals 20

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v1, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v1, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 264
    .local v1, "editable":Landroid/text/Editable;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    .line 265
    .local v8, "selectionStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    .line 267
    .local v9, "selectionEnd":I
    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    new-array v10, v2, [Landroid/view/textservice/TextInfo;

    .line 268
    .local v10, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v2, 0x0

    .line 270
    .local v2, "textInfosCount":I
    const/4 v11, 0x0

    move v12, v2

    move v2, v11

    .local v2, "i":I
    .local v12, "textInfosCount":I
    :goto_0
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v13, v2, :cond_9

    .line 271
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v14, v2, v13

    .line 272
    .local v14, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v13

    if-ltz v2, :cond_8

    invoke-virtual {v14}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v14    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    goto/16 :goto_6

    .line 274
    .restart local v14    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_1
    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 275
    .local v15, "start":I
    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 282
    .local v7, "end":I
    add-int/lit8 v2, v7, 0x1

    const/4 v3, 0x1

    if-ne v8, v2, :cond_2

    iget-object v2, v0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    add-int/lit8 v4, v7, 0x1

    .line 284
    invoke-static {v1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 283
    invoke-static {v2, v4}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    const/4 v2, 0x0

    .local v2, "isEditing":Z
    :goto_1
    goto :goto_5

    .line 286
    .end local v2    # "isEditing":Z
    :cond_2
    iget-boolean v2, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v2, :cond_5

    .line 290
    if-le v9, v15, :cond_4

    if-le v8, v7, :cond_3

    goto :goto_2

    :cond_3
    move v2, v11

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    goto :goto_1

    .line 292
    :cond_5
    if-lt v9, v15, :cond_7

    if-le v8, v7, :cond_6

    goto :goto_4

    :cond_6
    move v2, v11

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v3

    .restart local v2    # "isEditing":Z
    :goto_5
    move/from16 v16, v2

    .line 294
    .end local v2    # "isEditing":Z
    .local v16, "isEditing":Z
    if-ltz v15, :cond_8

    if-le v7, v15, :cond_8

    if-eqz v16, :cond_8

    .line 295
    invoke-virtual {v14, v3}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 296
    new-instance v17, Landroid/view/textservice/TextInfo;

    iget v6, v0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v18, v2, v13

    move-object/from16 v2, v17

    move-object v3, v1

    move v4, v15

    move v5, v7

    move/from16 v19, v7

    move/from16 v7, v18

    .end local v7    # "end":I
    .local v19, "end":I
    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 297
    .local v2, "textInfo":Landroid/view/textservice/TextInfo;
    add-int/lit8 v3, v12, 0x1

    .local v3, "textInfosCount":I
    aput-object v2, v10, v12

    .line 270
    .end local v2    # "textInfo":Landroid/view/textservice/TextInfo;
    .end local v12    # "textInfosCount":I
    .end local v14    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v15    # "start":I
    .end local v16    # "isEditing":Z
    .end local v19    # "end":I
    move v12, v3

    .end local v3    # "textInfosCount":I
    .restart local v12    # "textInfosCount":I
    :cond_8
    :goto_6
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 307
    .end local v2    # "i":I
    :cond_9
    if-lez v12, :cond_c

    .line 308
    array-length v2, v10

    if-ge v12, v2, :cond_a

    .line 309
    new-array v2, v12, [Landroid/view/textservice/TextInfo;

    .line 310
    .local v2, "textInfosCopy":[Landroid/view/textservice/TextInfo;
    invoke-static {v10, v11, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    move-object v10, v2

    .line 314
    .end local v2    # "textInfosCopy":[Landroid/view/textservice/TextInfo;
    :cond_a
    iget-boolean v2, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_b

    .line 315
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2, v10, v3}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    goto :goto_7

    .line 318
    :cond_b
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2, v10, v3, v11}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    .line 322
    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 3

    .line 168
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    .line 173
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 174
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 10
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 398
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 400
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 401
    aget-object v3, p1, v2

    .line 402
    .local v3, "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-nez v3, :cond_0

    .line 403
    goto :goto_3

    .line 405
    :cond_0
    const/4 v4, 0x0

    .line 406
    .local v4, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object v5, v4

    move v4, v1

    .local v4, "j":I
    .local v5, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :goto_1
    invoke-virtual {v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 407
    invoke-virtual {v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v6

    .line 408
    .local v6, "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    if-nez v6, :cond_1

    .line 409
    goto :goto_2

    .line 411
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    .line 412
    .local v7, "offset":I
    invoke-virtual {v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    .line 413
    .local v8, "length":I
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v9

    .line 415
    .local v9, "scs":Landroid/text/style/SpellCheckSpan;
    if-nez v5, :cond_2

    if-eqz v9, :cond_2

    .line 418
    move-object v5, v9

    .line 406
    .end local v6    # "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    .end local v7    # "offset":I
    .end local v8    # "length":I
    .end local v9    # "scs":Landroid/text/style/SpellCheckSpan;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    .end local v4    # "j":I
    :cond_3
    if-eqz v5, :cond_4

    .line 423
    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 400
    .end local v3    # "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "i":I
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 427
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 4
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .line 384
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 385
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 386
    aget-object v2, p1, v1

    .line 387
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    .line 388
    .local v2, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-eqz v2, :cond_0

    .line 390
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 385
    .end local v2    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 394
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    .line 213
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 214
    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 3
    .param p1, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 207
    return-void

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public spellCheck(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 220
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    .line 221
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    .line 222
    .local v1, "isSessionActive":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v2}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v2

    .line 229
    .local v2, "spellCheckerActivated":Z
    if-eq v1, v2, :cond_2

    .line 231
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .end local v2    # "spellCheckerActivated":Z
    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 225
    const/4 p1, 0x0

    .line 226
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 235
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 238
    :cond_3
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v2, v2

    .line 239
    .local v2, "length":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 240
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v5, v5, v4

    .line 241
    .local v5, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    invoke-virtual {v5, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    .line 243
    return-void

    .line 239
    .end local v5    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 251
    .end local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Landroid/widget/SpellChecker$SpellParser;

    .line 252
    .local v4, "newSpellParsers":[Landroid/widget/SpellChecker$SpellParser;
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 255
    new-instance v3, Landroid/widget/SpellChecker$SpellParser;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V

    .line 256
    .local v3, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v3, v5, v2

    .line 257
    invoke-virtual {v3, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    .line 258
    return-void
.end method
