.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .locals 5
    .param p0, "formatString"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .line 590
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 591
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 592
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 593
    const/4 v1, 0x1

    return v1

    .line 596
    :cond_0
    const/4 v1, 0x0

    .line 599
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 600
    add-int/lit8 v0, v0, -0x1

    .line 602
    :goto_0
    if-ge p1, v0, :cond_3

    .line 603
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 605
    .local v3, "c":C
    if-ne v3, v2, :cond_2

    .line 607
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 609
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 610
    add-int/lit8 v0, v0, -0x1

    .line 611
    add-int/lit8 v1, v1, 0x1

    .line 612
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 615
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 616
    goto :goto_2

    .line 619
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 622
    .end local v3    # "c":C
    :goto_1
    goto :goto_0

    .line 624
    :cond_3
    :goto_2
    return v1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .line 355
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .line 423
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 426
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 428
    .local v1, "localeData":Llibcore/icu/LocaleData;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 430
    .local v2, "len":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 431
    const/4 v5, 0x1

    .line 432
    .local v5, "count":I
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 434
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_0

    .line 435
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 436
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 437
    goto/16 :goto_3

    .line 440
    :cond_0
    :goto_1
    add-int v7, v2, v5

    if-ge v7, v4, :cond_1

    add-int v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    .line 441
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 445
    :cond_1
    sparse-switch v6, :sswitch_data_0

    .line 499
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 496
    :sswitch_0
    invoke-static {p1, v5}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_2

    .line 493
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v7

    .line 494
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 490
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_2
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 491
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 487
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_3
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 488
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 451
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_4
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 452
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 483
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_5
    const/4 v7, 0x2

    .line 484
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 483
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v7

    .line 485
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 461
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 462
    .local v7, "hour":I
    const/16 v8, 0x68

    if-ne v6, v8, :cond_2

    if-nez v7, :cond_2

    .line 463
    const/16 v7, 0xc

    .line 465
    :cond_2
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_2

    .line 471
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_7
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 478
    .local v7, "hour":I
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_2

    .line 455
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_8
    const/4 v7, 0x7

    .line 456
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 455
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v7

    .line 457
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 448
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_9
    iget-object v7, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 449
    .restart local v7    # "replacement":Ljava/lang/String;
    nop

    .line 499
    :goto_2
    nop

    .line 503
    if-eqz v7, :cond_3

    .line 504
    add-int v8, v2, v5

    invoke-virtual {v0, v2, v8, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 505
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 506
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 430
    .end local v6    # "c":I
    .end local v7    # "replacement":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 510
    .end local v2    # "i":I
    .end local v5    # "count":I
    :cond_4
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 511
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2

    .line 513
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x45 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4b -> :sswitch_6
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x64 -> :sswitch_4
        0x68 -> :sswitch_6
        0x6b -> :sswitch_7
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .line 366
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 367
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 368
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 5
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .line 555
    div-int/lit16 p0, p0, 0x3e8

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, "tb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 559
    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    neg-int p0, p0

    goto :goto_0

    .line 562
    :cond_0
    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_0
    div-int/lit16 v1, p0, 0xe10

    .line 566
    .local v1, "hours":I
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 568
    .local v2, "minutes":I
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 253
    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 298
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 333
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 338
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 340
    .local v1, "df":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    .line 341
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 518
    const/16 v0, 0x63

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 519
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 520
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_1
    return-object v1

    .line 521
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 522
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_2
    return-object v1

    .line 524
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_3
    return-object v1
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 309
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 320
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 529
    const/16 v0, 0x4c

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 531
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_1
    return-object v1

    .line 532
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 533
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_2
    return-object v1

    .line 534
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 535
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_3
    return-object v1

    .line 538
    :cond_6
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 264
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 286
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .line 543
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 544
    .local v0, "tz":Ljava/util/TimeZone;
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xf

    .line 546
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 545
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 549
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 550
    .local v1, "dst":Z
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    .line 574
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    rem-int/lit8 v1, p0, 0x64

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 7
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .line 396
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 398
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 400
    .local v1, "length":I
    const/4 v2, 0x0

    .line 401
    .local v2, "insideQuote":Z
    move v3, v2

    move v2, v0

    .local v2, "i":I
    .local v3, "insideQuote":Z
    :goto_0
    if-ge v2, v1, :cond_4

    .line 402
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 403
    .local v4, "c":C
    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 404
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v3, v6

    goto :goto_2

    .line 405
    :cond_2
    if-nez v3, :cond_3

    .line 406
    if-ne v4, p1, :cond_3

    .line 407
    return v6

    .line 401
    .end local v4    # "c":C
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .line 383
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static is24HourLocale(Ljava/util/Locale;)Z
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 199
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-boolean v1, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return v1

    .line 203
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    const/4 v0, 0x1

    .line 206
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 209
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v0, v1, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_1

    .line 210
    move-object v0, v1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 211
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "pattern":Ljava/lang/String;
    const/16 v3, 0x48

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    .line 213
    .end local v2    # "pattern":Ljava/lang/String;
    .local v0, "is24Hour":Z
    goto :goto_0

    .line 214
    .end local v0    # "is24Hour":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "is24Hour":Z
    :goto_0
    move v2, v0

    .line 217
    .end local v0    # "is24Hour":Z
    .local v2, "is24Hour":Z
    sget-object v3, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_1
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 219
    sput-boolean v2, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 220
    monitor-exit v3

    .line 222
    return v2

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 203
    .end local v1    # "natural":Ljava/text/DateFormat;
    .end local v2    # "is24Hour":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .line 628
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
