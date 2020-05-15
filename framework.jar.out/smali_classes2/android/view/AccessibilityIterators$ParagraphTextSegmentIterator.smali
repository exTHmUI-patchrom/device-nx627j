.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    .line 253
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 256
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 318
    if-lez p1, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0
.end method

.method private isStartBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 313
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0
.end method


# virtual methods
.method public following(I)[I
    .locals 5
    .param p1, "offset"    # I

    .line 261
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 262
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 263
    return-object v1

    .line 265
    :cond_0
    if-lt p1, v0, :cond_1

    .line 266
    return-object v1

    .line 268
    :cond_1
    move v2, p1

    .line 269
    .local v2, "start":I
    if-gez v2, :cond_2

    .line 270
    const/4 v2, 0x0

    .line 272
    :cond_2
    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 273
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_3
    if-lt v2, v0, :cond_4

    .line 277
    return-object v1

    .line 279
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 280
    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_5

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    :cond_5
    invoke-virtual {p0, v2, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method public preceding(I)[I
    .locals 5
    .param p1, "offset"    # I

    .line 288
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 289
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 290
    return-object v1

    .line 292
    :cond_0
    if-gtz p1, :cond_1

    .line 293
    return-object v1

    .line 295
    :cond_1
    move v2, p1

    .line 296
    .local v2, "end":I
    if-le v2, v0, :cond_2

    .line 297
    move v2, v0

    .line 299
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 300
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 302
    :cond_3
    if-gtz v2, :cond_4

    .line 303
    return-object v1

    .line 305
    :cond_4
    add-int/lit8 v1, v2, -0x1

    .line 306
    .local v1, "start":I
    :goto_1
    if-lez v1, :cond_5

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 307
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 309
    :cond_5
    invoke-virtual {p0, v1, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
