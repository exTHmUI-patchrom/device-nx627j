.class public Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigParser"
.end annotation


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 495
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 496
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 497
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 498
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 501
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 502
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "palettes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 505
    :cond_1
    const-string v3, "blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->parseBlacklist(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 508
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 509
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid XML event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 512
    :cond_4
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 516
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "eventType":I
    :cond_5
    nop

    .line 517
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseBlacklist(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    const-string v0, "blacklist"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 531
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 532
    goto :goto_0

    .line 534
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "range"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 542
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 540
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 543
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    const-string/jumbo v0, "palettes"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 564
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 565
    goto :goto_0

    .line 567
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "palette"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 575
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 573
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 595
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 597
    .local v1, "numbers":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 598
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    const-string/jumbo v0, "palette"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "h"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 583
    .local v0, "h":[F
    const-string/jumbo v2, "s"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 584
    .local v2, "s":[F
    const-string v3, "l"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 586
    .local v3, "l":[F
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 590
    new-instance v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;-><init>([F[F[F)V

    return-object v1

    .line 587
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Incomplete range tag."

    invoke-direct {v4, v5, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    const-string/jumbo v0, "range"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "h"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 549
    .local v0, "h":[F
    const-string/jumbo v2, "s"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 550
    .local v2, "s":[F
    const-string v3, "l"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 552
    .local v3, "l":[F
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 556
    new-instance v1, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    new-instance v4, Landroid/util/Range;

    const/4 v5, 0x0

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Landroid/util/Range;

    aget v8, v2, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Landroid/util/Range;

    aget v5, v3, v5

    .line 557
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v8, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v1, v4, v6, v8}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 556
    return-object v1

    .line 553
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Incomplete range tag."

    invoke-direct {v4, v5, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public getBlacklistedColors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTonalPalettes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    return-object v0
.end method
