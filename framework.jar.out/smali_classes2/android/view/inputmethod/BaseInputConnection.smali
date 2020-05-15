.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static INVALID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 268
    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 73
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 74
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 67
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 68
    return-void
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .line 740
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 744
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 747
    :cond_1
    const/4 v0, 0x0

    .line 749
    .restart local v0    # "context":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010230

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 751
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 754
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 755
    .local v2, "style":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 756
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 757
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    .line 758
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    .line 757
    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 762
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v2    # "style":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method private static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 271
    move v0, p1

    .line 272
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 273
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 274
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    if-gez p2, :cond_1

    .line 278
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 280
    :cond_1
    move v3, v1

    move v1, v0

    move v0, p2

    .line 282
    .local v0, "remainingCodePoints":I
    .local v1, "currentIndex":I
    .local v3, "waitingHighSurrogate":Z
    :goto_0
    if-nez v0, :cond_2

    .line 283
    return v1

    .line 286
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 287
    if-gez v1, :cond_4

    .line 288
    if-eqz v3, :cond_3

    .line 289
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 291
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 293
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 294
    .local v4, "c":C
    if-eqz v3, :cond_6

    .line 295
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 296
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 298
    :cond_5
    const/4 v3, 0x0

    .line 299
    add-int/lit8 v0, v0, -0x1

    .line 300
    goto :goto_0

    .line 302
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 303
    add-int/lit8 v0, v0, -0x1

    .line 304
    goto :goto_0

    .line 306
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 307
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 309
    :cond_8
    const/4 v3, 0x1

    .line 310
    .end local v4    # "c":C
    goto :goto_0

    .line 275
    .end local v3    # "waitingHighSurrogate":Z
    .local v0, "currentIndex":I
    .local v1, "waitingHighSurrogate":Z
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method private static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 315
    move v0, p1

    .line 316
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 317
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 318
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    if-gez p2, :cond_1

    .line 322
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 324
    :cond_1
    move v3, v1

    move v1, v0

    move v0, p2

    .line 327
    .local v0, "remainingCodePoints":I
    .local v1, "currentIndex":I
    .local v3, "waitingLowSurrogate":Z
    :goto_0
    if-nez v0, :cond_2

    .line 328
    return v1

    .line 331
    :cond_2
    if-lt v1, v2, :cond_4

    .line 332
    if-eqz v3, :cond_3

    .line 333
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 335
    :cond_3
    return v2

    .line 337
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 338
    .local v4, "c":C
    if-eqz v3, :cond_6

    .line 339
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 340
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 342
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 343
    const/4 v3, 0x0

    .line 344
    add-int/lit8 v1, v1, 0x1

    .line 345
    goto :goto_0

    .line 347
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 348
    add-int/lit8 v0, v0, -0x1

    .line 349
    add-int/lit8 v1, v1, 0x1

    .line 350
    goto :goto_0

    .line 352
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 353
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 355
    :cond_8
    const/4 v3, 0x1

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 357
    .end local v4    # "c":C
    goto :goto_0

    .line 319
    .end local v3    # "waitingLowSurrogate":Z
    .local v0, "currentIndex":I
    .local v1, "waitingLowSurrogate":Z
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 125
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 121
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 78
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "sps":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 81
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 82
    aget-object v2, v0, v1

    .line 83
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 81
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .line 766
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 767
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    .line 768
    return-void

    .line 771
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 774
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 775
    .local v1, "a":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 779
    .local v2, "b":I
    if-ge v2, v1, :cond_1

    .line 780
    move v3, v1

    .line 781
    .local v3, "tmp":I
    move v1, v2

    .line 782
    move v2, v3

    .line 785
    .end local v3    # "tmp":I
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 786
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    goto :goto_0

    .line 788
    :cond_2
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 789
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 790
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 791
    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 792
    :cond_4
    if-ge v2, v1, :cond_5

    .line 793
    move v3, v1

    .line 794
    .restart local v3    # "tmp":I
    move v1, v2

    .line 795
    move v2, v3

    .line 799
    .end local v3    # "tmp":I
    :cond_5
    :goto_0
    if-eqz p3, :cond_8

    .line 800
    const/4 v3, 0x0

    .line 801
    .local v3, "sp":Landroid/text/Spannable;
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_6

    .line 802
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 803
    move-object p1, v3

    .line 804
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 805
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 806
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 807
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const/16 v8, 0x121

    invoke-interface {v3, v6, v4, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 806
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 812
    .end local v5    # "i":I
    :cond_6
    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    .line 814
    :cond_7
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 833
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_9

    .line 834
    add-int/lit8 v3, v2, -0x1

    add-int/2addr p2, v3

    goto :goto_2

    .line 836
    :cond_9
    add-int/2addr p2, v1

    .line 838
    :goto_2
    if-gez p2, :cond_a

    const/4 p2, 0x0

    .line 839
    :cond_a
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-le p2, v3, :cond_b

    .line 840
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    .line 841
    :cond_b
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 843
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 851
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 852
    return-void
.end method

.method private sendCurrentText()V
    .locals 11

    .line 701
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v0, :cond_0

    .line 702
    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 706
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_5

    .line 707
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 708
    .local v1, "N":I
    if-nez v1, :cond_1

    .line 709
    return-void

    .line 711
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 714
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_2

    .line 715
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 717
    :cond_2
    new-array v3, v2, [C

    .line 718
    .local v3, "chars":[C
    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 719
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 720
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_4

    .line 721
    nop

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 723
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 721
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 725
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 726
    return-void

    .line 732
    .end local v2    # "events":[Landroid/view/KeyEvent;
    .end local v3    # "chars":[C
    :cond_4
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 733
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 734
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 735
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 737
    .end local v1    # "N":I
    .end local v2    # "event":Landroid/view/KeyEvent;
    :cond_5
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 91
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 92
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 96
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "sps":[Ljava/lang/Object;
    const/16 v1, 0x121

    if-eqz v0, :cond_2

    .line 98
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 99
    aget-object v3, v0, v2

    .line 100
    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    .line 101
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 102
    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 106
    .local v4, "fl":I
    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_1

    .line 108
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v7, v4, -0x34

    or-int/lit16 v7, v7, 0x100

    or-int/lit8 v7, v7, 0x21

    invoke-interface {p0, v3, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "fl":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .line 170
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 171
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 172
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 173
    const/4 v1, 0x1

    return v1
.end method

.method public closeConnection()V
    .locals 0

    .line 161
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 162
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 198
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 218
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 219
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 223
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 224
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 226
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 227
    move v3, v1

    .line 228
    .local v3, "tmp":I
    move v1, v2

    .line 229
    move v2, v3

    .line 233
    .end local v3    # "tmp":I
    :cond_1
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    .line 234
    .local v3, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    .line 235
    .local v4, "cb":I
    if-ge v4, v3, :cond_2

    .line 236
    move v5, v3

    .line 237
    .local v5, "tmp":I
    move v3, v4

    .line 238
    move v4, v5

    .line 240
    .end local v5    # "tmp":I
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-eq v4, v5, :cond_4

    .line 241
    if-ge v3, v1, :cond_3

    move v1, v3

    .line 242
    :cond_3
    if-le v4, v2, :cond_4

    move v2, v4

    .line 245
    :cond_4
    const/4 v5, 0x0

    .line 247
    .local v5, "deleted":I
    if-lez p1, :cond_6

    .line 248
    sub-int v6, v1, p1

    .line 249
    .local v6, "start":I
    if-gez v6, :cond_5

    const/4 v6, 0x0

    .line 250
    :cond_5
    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 251
    sub-int v5, v1, v6

    .line 254
    .end local v6    # "start":I
    :cond_6
    if-lez p2, :cond_8

    .line 255
    sub-int/2addr v2, v5

    .line 257
    add-int v6, v2, p2

    .line 258
    .local v6, "end":I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v6, v7, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    .line 260
    :cond_7
    invoke-interface {v0, v2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 263
    .end local v6    # "end":I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 265
    const/4 v6, 0x1

    return v6
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 375
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 376
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 380
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 381
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 383
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 384
    move v4, v2

    .line 385
    .local v4, "tmp":I
    move v2, v3

    .line 386
    move v3, v4

    .line 390
    .end local v4    # "tmp":I
    :cond_1
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 391
    .local v4, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 392
    .local v5, "cb":I
    if-ge v5, v4, :cond_2

    .line 393
    move v6, v4

    .line 394
    .local v6, "tmp":I
    move v4, v5

    .line 395
    move v5, v6

    .line 397
    .end local v6    # "tmp":I
    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    if-eq v5, v6, :cond_4

    .line 398
    if-ge v4, v2, :cond_3

    move v2, v4

    .line 399
    :cond_3
    if-le v5, v3, :cond_4

    move v3, v5

    .line 402
    :cond_4
    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    .line 403
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v2, v6}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 404
    .local v6, "start":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v6, v7, :cond_6

    .line 405
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 406
    .local v1, "end":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v1, v7, :cond_6

    .line 407
    sub-int v7, v2, v6

    .line 408
    .local v7, "numDeleteBefore":I
    if-lez v7, :cond_5

    .line 409
    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 411
    :cond_5
    sub-int v8, v1, v3

    .line 412
    .local v8, "numDeleteAfter":I
    if-lez v8, :cond_6

    .line 413
    sub-int v9, v3, v7

    sub-int v10, v1, v7

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 424
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "numDeleteBefore":I
    .end local v8    # "numDeleteAfter":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 426
    const/4 v1, 0x1

    return v1
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .line 436
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 437
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 439
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 441
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 442
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 444
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 4
    .param p1, "reqModes"    # I

    .line 453
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 456
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_1

    return v1

    .line 458
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 459
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 461
    .local v2, "b":I
    if-le v1, v2, :cond_2

    .line 462
    move v3, v1

    .line 463
    .local v3, "tmp":I
    move v1, v2

    .line 464
    move v2, v3

    .line 467
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 137
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .line 513
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 514
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 516
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 517
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 519
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 520
    move v4, v2

    .line 521
    .local v4, "tmp":I
    move v2, v3

    .line 522
    move v3, v4

    .line 525
    .end local v4    # "tmp":I
    :cond_1
    if-eq v2, v3, :cond_4

    if-gez v2, :cond_2

    goto :goto_0

    .line 527
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 528
    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 530
    :cond_3
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 525
    :cond_4
    :goto_0
    return-object v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 538
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 539
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 541
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 542
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 544
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 545
    move v3, v1

    .line 546
    .local v3, "tmp":I
    move v1, v2

    .line 547
    move v2, v3

    .line 551
    .end local v3    # "tmp":I
    :cond_1
    if-gez v2, :cond_2

    .line 552
    const/4 v2, 0x0

    .line 555
    :cond_2
    add-int v3, v2, p1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 556
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int p1, v3, v2

    .line 560
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 561
    add-int v3, v2, p1

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 563
    :cond_4
    add-int v3, v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 482
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 483
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 485
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 486
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 488
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 489
    move v3, v1

    .line 490
    .local v3, "tmp":I
    move v1, v2

    .line 491
    move v2, v3

    .line 494
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v1, :cond_2

    .line 495
    const-string v3, ""

    return-object v3

    .line 498
    :cond_2
    if-le p1, v1, :cond_3

    .line 499
    move p1, v1

    .line 502
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 503
    sub-int v3, v1, p1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 505
    :cond_4
    sub-int v3, v1, p1

    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 16
    .param p1, "actionCode"    # I

    move-object/from16 v0, p0

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 571
    .local v13, "eventTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 576
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 581
    const/4 v1, 0x1

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 689
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 621
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 622
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_6

    .line 623
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 624
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 625
    move v1, p1

    .line 626
    .local v1, "a":I
    move v2, p2

    .line 627
    .local v2, "b":I
    if-le v1, v2, :cond_0

    .line 628
    move v3, v1

    .line 629
    .local v3, "tmp":I
    move v1, v2

    .line 630
    move v2, v3

    .line 633
    .end local v3    # "tmp":I
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 634
    .local v3, "length":I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 635
    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 636
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 637
    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    .line 639
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 640
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    const/16 v5, 0x121

    if-eqz v4, :cond_5

    .line 641
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v4, v6, :cond_5

    .line 642
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-interface {v0, v6, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 641
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    .end local v4    # "i":I
    :cond_5
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 651
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 652
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 654
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v3    # "length":I
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 616
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 617
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 663
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 664
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 665
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 666
    .local v1, "len":I
    const/4 v2, 0x1

    if-gt p1, v1, :cond_3

    if-gt p2, v1, :cond_3

    if-ltz p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 673
    :cond_1
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 679
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 681
    :goto_0
    return v2

    .line 671
    :cond_3
    :goto_1
    return v2
.end method
