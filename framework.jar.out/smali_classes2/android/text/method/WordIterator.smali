.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mCharSeq:Ljava/lang/CharSequence;

.field private mEnd:I

.field private final mIterator:Landroid/icu/text/BreakIterator;

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    .line 57
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 383
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 387
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/text/method/WordIterator;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/text/method/WordIterator;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBeginning(IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    .line 212
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 214
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 218
    :cond_0
    return p1

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 223
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 227
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getEnd(IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    .line 247
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 249
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 252
    :cond_0
    return p1

    .line 254
    :cond_1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 257
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 261
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 367
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 369
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 371
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMidWordPunctuation(Ljava/util/Locale;I)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "codePoint"    # I

    .line 341
    const/16 v0, 0x1014

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    .line 342
    .local v0, "wb":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 375
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 377
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 379
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isPunctuation(I)Z
    .locals 2
    .param p0, "cp"    # I

    .line 356
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 357
    .local v0, "type":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isPunctuationEndBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 352
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPunctuationStartBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 348
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public following(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 83
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p1

    .line 86
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :cond_1
    return p1
.end method

.method public getBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getNextWordEndOnTwoWordBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevWordBeginningOnTwoWordsBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getPunctuationBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 272
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 273
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    goto :goto_0

    .line 277
    :cond_0
    return p1
.end method

.method public getPunctuationEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 288
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 289
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    goto :goto_0

    .line 293
    :cond_0
    return p1
.end method

.method public isAfterPunctuation(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 304
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 306
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 308
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 94
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 95
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public isOnPunctuation(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 319
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 321
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 323
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 106
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 107
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 72
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 75
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :cond_1
    return p1
.end method

.method public prevBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 118
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 119
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 60
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 61
    iput-object p1, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    .line 62
    const/4 v0, 0x0

    add-int/lit8 v1, p2, -0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mStart:I

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    .line 64
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    new-instance v1, Landroid/text/CharSequenceCharacterIterator;

    iget v2, p0, Landroid/text/method/WordIterator;->mStart:I

    iget v3, p0, Landroid/text/method/WordIterator;->mEnd:I

    invoke-direct {v1, p1, v2, v3}, Landroid/text/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "input indexes are outside the CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
