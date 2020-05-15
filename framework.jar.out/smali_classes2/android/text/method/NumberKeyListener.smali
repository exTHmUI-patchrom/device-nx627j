.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 228
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 229
    return v0

    .line 231
    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    .line 232
    .local v1, "amPm":[Ljava/lang/String;
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 233
    move v3, v0

    .local v3, "j":I
    :goto_1
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 234
    aget-object v4, v1, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 235
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    .restart local v4    # "ch":C
    :cond_1
    return v0

    .line 232
    .end local v3    # "j":I
    .end local v4    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 154
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "digits":[Ljava/lang/String;
    move v2, v0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 159
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 160
    return v0

    .line 162
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method static addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 176
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 177
    return v0

    .line 179
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "pattern":Ljava/lang/String;
    const/4 v2, 0x1

    .line 181
    .local v2, "outsideQuotes":Z
    move v3, v2

    move v2, v0

    .local v2, "i":I
    .local v3, "outsideQuotes":Z
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_7

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 183
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    return v0

    .line 185
    :cond_1
    const/16 v6, 0x27

    if-ne v4, v6, :cond_3

    .line 186
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    move v3, v5

    .line 189
    if-eqz v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    .line 190
    goto :goto_2

    .line 194
    :cond_3
    if-eqz v3, :cond_5

    .line 195
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 197
    goto :goto_2

    .line 198
    :cond_4
    const-string v5, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_5

    .line 200
    return v0

    .line 205
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "ch":C
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "i":I
    :cond_7
    return v5
.end method

.method static addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeletons"    # [Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 214
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 215
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 217
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 218
    return v0

    .line 214
    .end local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static collectionToArray(Ljava/util/Collection;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 248
    .local p0, "chars":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 249
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 250
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 251
    .local v3, "ch":Ljava/lang/Character;
    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v0, v1

    .line 252
    .end local v1    # "i":I
    .end local v3    # "ch":Ljava/lang/Character;
    nop

    .line 250
    move v1, v4

    goto :goto_0

    .line 253
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static ok([CC)Z
    .locals 3
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    .line 96
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 97
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_0

    .line 98
    return v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 59
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 60
    .local v0, "accept":[C
    const/4 v1, 0x0

    .line 63
    .local v1, "filter":Z
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 64
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    if-ne v2, p3, :cond_2

    .line 71
    const/4 v3, 0x0

    return-object v3

    .line 74
    :cond_2
    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 76
    const-string v3, ""

    return-object v3

    .line 79
    :cond_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 81
    .local v3, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v2, p2

    .line 82
    sub-int/2addr p3, p2

    .line 84
    sub-int v4, p3, p2

    .line 86
    .local v4, "len":I
    add-int/lit8 v5, p3, -0x1

    .local v5, "j":I
    :goto_2
    if-lt v5, v2, :cond_5

    .line 87
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_4

    .line 88
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 86
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 92
    .end local v5    # "j":I
    :cond_5
    return-object v3
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    .line 54
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 111
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 112
    .local v0, "a":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 114
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    .local v2, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    .end local v1    # "b":I
    .local v0, "selEnd":I
    const/4 v1, 0x0

    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 119
    :cond_0
    move v0, v1

    move v2, v1

    .line 120
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 123
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    .line 124
    .local v3, "i":I
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    nop

    .line 125
    .local v1, "repeatCount":I
    :cond_3
    const/4 v4, 0x1

    if-nez v1, :cond_5

    .line 126
    if-eqz v3, :cond_6

    .line 127
    if-eq v2, v0, :cond_4

    .line 128
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    :cond_4
    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v0, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 134
    return v4

    .line 136
    :cond_5
    const/16 v5, 0x30

    if-ne v3, v5, :cond_6

    if-ne v1, v4, :cond_6

    .line 139
    if-ne v2, v0, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v6, v2, -0x1

    .line 140
    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_6

    .line 141
    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x2b

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 142
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 143
    return v4

    .line 147
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method
