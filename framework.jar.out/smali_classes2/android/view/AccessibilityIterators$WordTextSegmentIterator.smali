.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$1;)V

    .line 171
    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 163
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    .line 166
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 236
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0
.end method

.method private isLetterOrDigit(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 241
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 243
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    return v1

    .line 245
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStartBoundary(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 231
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 232
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0
.end method


# virtual methods
.method public following(I)[I
    .locals 5
    .param p1, "offset"    # I

    .line 180
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 182
    return-object v1

    .line 184
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 185
    return-object v1

    .line 187
    :cond_1
    move v2, p1

    .line 188
    .local v2, "start":I
    if-gez v2, :cond_2

    .line 189
    const/4 v2, 0x0

    .line 191
    :cond_2
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 193
    if-ne v2, v4, :cond_2

    .line 194
    return-object v1

    .line 197
    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v3

    .line 198
    .local v3, "end":I
    if-eq v3, v4, :cond_5

    invoke-direct {p0, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1

    .line 199
    :cond_5
    :goto_0
    return-object v1
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 175
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 176
    return-void
.end method

.method public preceding(I)[I
    .locals 5
    .param p1, "offset"    # I

    .line 206
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 208
    return-object v1

    .line 210
    :cond_0
    if-gtz p1, :cond_1

    .line 211
    return-object v1

    .line 213
    :cond_1
    move v2, p1

    .line 214
    .local v2, "end":I
    if-le v2, v0, :cond_2

    .line 215
    move v2, v0

    .line 217
    :cond_2
    const/4 v3, -0x1

    if-lez v2, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 218
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 219
    if-ne v2, v3, :cond_2

    .line 220
    return-object v1

    .line 223
    :cond_3
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v4

    .line 224
    .local v4, "start":I
    if-eq v4, v3, :cond_5

    invoke-direct {p0, v4}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {p0, v4, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1

    .line 225
    :cond_5
    :goto_0
    return-object v1
.end method
