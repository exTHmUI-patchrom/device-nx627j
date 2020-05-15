.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 71
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 73
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x1040653

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 77
    const v3, 0x10403cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 78
    const v3, 0x104018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 81
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 82
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 83
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 84
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 85
    .end local v1    # "locale":Ljava/util/Locale;
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static brokenIsLower(C)Z
    .locals 1
    .param p0, "toCheck"    # C

    .line 476
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .locals 1
    .param p0, "toCheck"    # C

    .line 468
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static brokenToLower(C)C
    .locals 1
    .param p0, "input"    # C

    .line 484
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 485
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    .line 487
    :cond_0
    return p0
.end method

.method private static brokenToUpper(C)C
    .locals 1
    .param p0, "input"    # C

    .line 495
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 496
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    .line 498
    :cond_0
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .line 133
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 134
    .local v0, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 135
    const/4 v1, 0x1

    .line 136
    .local v1, "outputCurrentChar":Z
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    .line 137
    .local v2, "currentChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 138
    invoke-direct {p0, v0, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    move-result v1

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    .end local v1    # "outputCurrentChar":Z
    .end local v2    # "currentChar":C
    goto :goto_0

    .line 145
    :cond_2
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .line 448
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    .line 456
    return-object p1

    .line 450
    :cond_0
    return-object p2

    .line 454
    :cond_1
    return-object p4

    .line 452
    :cond_2
    return-object p3
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .locals 19
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 151
    move-object/from16 v3, p3

    const/4 v4, 0x0

    move v5, v4

    .line 152
    .local v5, "modifier":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1c

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->get(I)C

    move-result v6

    .line 156
    .local v6, "currentChar":C
    const/4 v8, 0x7

    const/16 v9, 0xc

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    packed-switch v6, :pswitch_data_5

    packed-switch v6, :pswitch_data_6

    packed-switch v6, :pswitch_data_7

    sparse-switch v6, :sswitch_data_0

    .line 384
    return v7

    .line 253
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    if-lt v8, v9, :cond_0

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v8, v8, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v7, v8, v7

    goto :goto_1

    .line 254
    :cond_0
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v7, v7, v4

    .line 253
    :goto_1
    invoke-direct {v0, v7, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 255
    return v4

    .line 242
    :sswitch_1
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%02d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 243
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 242
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 244
    return v4

    .line 378
    :sswitch_2
    const-string v7, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 379
    return v4

    .line 360
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v8

    if-gez v8, :cond_1

    .line 361
    return v4

    .line 363
    :cond_1
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v8

    .line 365
    .local v8, "diff":I
    if-gez v8, :cond_2

    .line 366
    const/16 v9, 0x2d

    .line 367
    .local v9, "sign":C
    neg-int v8, v8

    goto :goto_2

    .line 369
    .end local v9    # "sign":C
    :cond_2
    const/16 v9, 0x2b

    .line 371
    .restart local v9    # "sign":C
    :goto_2
    iget-object v10, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    div-int/lit8 v8, v8, 0x3c

    .line 373
    div-int/lit8 v10, v8, 0x3c

    mul-int/lit8 v10, v10, 0x64

    rem-int/lit8 v11, v8, 0x3c

    add-int/2addr v10, v11

    .line 374
    .end local v8    # "diff":I
    .local v10, "diff":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v11, "%04d"

    const-string v12, "%4d"

    const-string v13, "%d"

    const-string v14, "%04d"

    invoke-static {v5, v11, v12, v13, v14}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v4

    invoke-virtual {v8, v11, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 375
    return v4

    .line 347
    .end local v9    # "sign":C
    .end local v10    # "diff":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v8

    invoke-direct {v0, v8, v4, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 348
    return v4

    .line 344
    :pswitch_2
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 345
    return v4

    .line 338
    :pswitch_3
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 339
    return v4

    .line 329
    :pswitch_4
    const-string v7, "%e-%b-%Y"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 330
    return v4

    .line 286
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v8

    .line 287
    .local v8, "day":I
    :goto_3
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    invoke-virtual {v9, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 288
    return v4

    .line 278
    .end local v8    # "day":I
    :pswitch_6
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    return v4

    .line 271
    :pswitch_7
    invoke-virtual/range {p2 .. p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v7

    .line 272
    .local v7, "timeInSeconds":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    return v4

    .line 264
    .end local v7    # "timeInSeconds":I
    :pswitch_8
    const-string v7, "%I:%M:%S %p"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 265
    return v4

    .line 250
    :pswitch_9
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    return v4

    .line 246
    :pswitch_a
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%02d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    .line 247
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    .line 246
    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 248
    return v4

    .line 238
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    rem-int/2addr v8, v9

    if-eqz v8, :cond_4

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    rem-int/lit8 v9, v8, 0xc

    nop

    :cond_4
    move v8, v9

    .line 239
    .local v8, "n2":I
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%2d"

    const-string v11, "%2d"

    const-string v12, "%d"

    const-string v13, "%02d"

    invoke-static {v5, v10, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    invoke-virtual {v9, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 240
    return v4

    .line 234
    .end local v8    # "n2":I
    :pswitch_c
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%2d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 235
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 234
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 236
    return v4

    .line 229
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v8

    add-int/2addr v8, v7

    .line 230
    .local v8, "yearDay":I
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%03d"

    const-string v11, "%3d"

    const-string v12, "%d"

    const-string v13, "%03d"

    invoke-static {v5, v10, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    .line 231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    .line 230
    invoke-virtual {v9, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 232
    return v4

    .line 214
    .end local v8    # "yearDay":I
    :pswitch_e
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%2d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 215
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 214
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 216
    return v4

    .line 199
    :pswitch_f
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%02d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 200
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 199
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 201
    return v4

    .line 193
    :pswitch_10
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 194
    return v4

    .line 185
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    if-ltz v7, :cond_6

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    if-lt v7, v9, :cond_5

    goto :goto_4

    .line 186
    :cond_5
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v8

    aget-object v7, v7, v8

    goto :goto_5

    :cond_6
    :goto_4
    const-string v7, "?"

    .line 185
    :goto_5
    invoke-direct {v0, v7, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 188
    return v4

    .line 164
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v9

    if-ltz v9, :cond_8

    .line 165
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v9

    if-lt v9, v8, :cond_7

    goto :goto_6

    .line 166
    :cond_7
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v8, v8, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v9

    add-int/2addr v9, v7

    aget-object v7, v8, v9

    goto :goto_7

    :cond_8
    :goto_6
    const-string v7, "?"

    .line 164
    :goto_7
    invoke-direct {v0, v7, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 168
    return v4

    .line 211
    :pswitch_13
    :sswitch_3
    move v5, v6

    .line 212
    goto/16 :goto_0

    .line 353
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v8

    if-gez v8, :cond_9

    .line 354
    return v4

    .line 356
    :cond_9
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    move v7, v4

    .line 357
    .local v7, "isDst":Z
    :goto_8
    invoke-virtual {v3, v7, v4}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 358
    return v4

    .line 350
    .end local v7    # "isDst":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v8

    invoke-direct {v0, v8, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 351
    return v4

    .line 341
    :pswitch_16
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 342
    return v4

    .line 332
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v9

    add-int/2addr v9, v8

    .line 333
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v10

    sub-int/2addr v10, v7

    goto :goto_9

    .line 334
    :cond_b
    const/4 v10, 0x6

    :goto_9
    sub-int/2addr v9, v10

    div-int/2addr v9, v8

    .line 335
    .local v9, "n":I
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%02d"

    const-string v11, "%2d"

    const-string v12, "%d"

    const-string v13, "%02d"

    invoke-static {v5, v10, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    invoke-virtual {v8, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 336
    return v4

    .line 281
    .end local v9    # "n":I
    :pswitch_18
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%02d"

    const-string v11, "%2d"

    const-string v12, "%d"

    const-string v13, "%02d"

    invoke-static {v5, v10, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    .line 282
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 281
    invoke-virtual {v9, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 284
    return v4

    .line 275
    :pswitch_19
    const-string v7, "%H:%M:%S"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 276
    return v4

    .line 267
    :pswitch_1a
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%02d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 268
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 267
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 269
    return v4

    .line 261
    :pswitch_1b
    const-string v7, "%H:%M"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 262
    return v4

    .line 257
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    if-lt v8, v9, :cond_c

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v8, v8, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v7, v8, v7

    goto :goto_a

    .line 258
    :cond_c
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v7, v7, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v7, v7, v4

    .line 257
    :goto_a
    const/4 v8, -0x1

    invoke-direct {v0, v7, v8}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 259
    return v4

    .line 225
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    rem-int/2addr v8, v9

    if-eqz v8, :cond_d

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    rem-int/lit8 v9, v8, 0xc

    nop

    :cond_d
    move v8, v9

    .line 226
    .local v8, "hour":I
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%02d"

    const-string v11, "%2d"

    const-string v12, "%d"

    const-string v13, "%02d"

    invoke-static {v5, v10, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    invoke-virtual {v9, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 227
    return v4

    .line 221
    .end local v8    # "hour":I
    :pswitch_1e
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%02d"

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    invoke-static {v5, v9, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    .line 222
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 221
    invoke-virtual {v8, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 223
    return v4

    .line 293
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v9

    .line 294
    .local v9, "year":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v10

    .line 295
    .local v10, "yday":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v11

    .line 298
    .local v11, "wday":I
    :goto_b
    invoke-static {v9}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x16e

    goto :goto_c

    :cond_e
    const/16 v12, 0x16d

    .line 300
    .local v12, "len":I
    :goto_c
    add-int/lit8 v15, v10, 0xb

    sub-int/2addr v15, v11

    rem-int/2addr v15, v8

    add-int/lit8 v15, v15, -0x3

    .line 302
    .local v15, "bot":I
    rem-int/lit8 v16, v12, 0x7

    sub-int v13, v15, v16

    .line 303
    .local v13, "top":I
    const/4 v14, -0x3

    if-ge v13, v14, :cond_f

    .line 304
    add-int/lit8 v13, v13, 0x7

    .line 306
    :cond_f
    add-int/2addr v13, v12

    .line 307
    if-lt v10, v13, :cond_10

    .line 308
    add-int/lit8 v9, v9, 0x1

    .line 309
    const/4 v8, 0x1

    .line 310
    .local v8, "w":I
    goto :goto_d

    .line 312
    .end local v8    # "w":I
    :cond_10
    if-lt v10, v15, :cond_13

    .line 313
    sub-int v14, v10, v15

    div-int/2addr v14, v8

    add-int v8, v7, v14

    .line 314
    .restart local v8    # "w":I
    nop

    .line 318
    .end local v12    # "len":I
    .end local v13    # "top":I
    .end local v15    # "bot":I
    :goto_d
    nop

    .line 319
    const/16 v12, 0x56

    if-ne v6, v12, :cond_11

    .line 320
    iget-object v12, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v13, "%02d"

    const-string v14, "%2d"

    const-string v15, "%d"

    const-string v4, "%02d"

    invoke-static {v5, v13, v14, v15, v4}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-virtual {v12, v4, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_e

    .line 321
    :cond_11
    move v14, v4

    const/16 v4, 0x67

    if-ne v6, v4, :cond_12

    .line 322
    invoke-direct {v0, v9, v14, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_e

    .line 324
    :cond_12
    invoke-direct {v0, v9, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 326
    :goto_e
    return v14

    .line 316
    .end local v8    # "w":I
    .restart local v12    # "len":I
    .restart local v13    # "top":I
    .restart local v15    # "bot":I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 317
    invoke-static {v9}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v17, 0x16e

    goto :goto_f

    :cond_14
    const/16 v17, 0x16d

    :goto_f
    add-int v10, v10, v17

    .line 318
    .end local v12    # "len":I
    .end local v13    # "top":I
    .end local v15    # "bot":I
    nop

    .line 295
    const/4 v4, 0x0

    goto :goto_b

    .line 218
    .end local v9    # "year":I
    .end local v10    # "yday":I
    .end local v11    # "wday":I
    :pswitch_20
    const-string v4, "%Y-%m-%d"

    invoke-direct {v0, v4, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 219
    const/4 v4, 0x0

    return v4

    .line 205
    :pswitch_21
    goto/16 :goto_0

    .line 196
    :pswitch_22
    const-string v7, "%m/%d/%y"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 197
    return v4

    .line 190
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v8

    invoke-direct {v0, v8, v7, v4, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 191
    return v4

    .line 170
    :pswitch_24
    const/16 v4, 0x2d

    if-ne v5, v4, :cond_17

    .line 171
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v4

    if-ltz v4, :cond_16

    .line 172
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v4

    if-lt v4, v9, :cond_15

    goto :goto_10

    .line 174
    :cond_15
    iget-object v4, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    aget-object v4, v4, v7

    goto :goto_11

    .line 173
    :cond_16
    :goto_10
    const-string v4, "?"

    .line 171
    :goto_11
    invoke-direct {v0, v4, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_14

    .line 177
    :cond_17
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v4

    if-ltz v4, :cond_19

    .line 178
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v4

    if-lt v4, v9, :cond_18

    goto :goto_12

    .line 179
    :cond_18
    iget-object v4, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    aget-object v4, v4, v7

    goto :goto_13

    :cond_19
    :goto_12
    const-string v4, "?"

    .line 177
    :goto_13
    invoke-direct {v0, v4, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 182
    :goto_14
    const/4 v4, 0x0

    return v4

    .line 158
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v4

    if-ltz v4, :cond_1b

    .line 159
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v4

    if-lt v4, v8, :cond_1a

    goto :goto_15

    .line 160
    :cond_1a
    iget-object v4, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v7

    aget-object v4, v4, v8

    goto :goto_16

    :cond_1b
    :goto_15
    const-string v4, "?"

    .line 158
    :goto_16
    invoke-direct {v0, v4, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 162
    const/4 v4, 0x0

    return v4

    .line 387
    .end local v6    # "currentChar":C
    :cond_1c
    return v7

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_21
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5e
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x67
        :pswitch_1f
        :pswitch_11
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x72
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_3
        0x30 -> :sswitch_3
        0x4d -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isLeap(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 460
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    .local v0, "length":I
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v1, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    .line 117
    .local v1, "offsetToLocalizedDigits":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 119
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 120
    .local v5, "ch":C
    if-lt v5, v2, :cond_0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_0

    .line 121
    add-int v6, v5, v1

    int-to-char v5, v6

    .line 123
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .line 391
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    const/16 v0, 0x23

    if-eq p2, v0, :cond_2

    const/16 v0, 0x5e

    if-eq p2, v0, :cond_0

    .line 414
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 398
    :cond_0
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 403
    :cond_2
    nop

    .restart local v1    # "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 404
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 405
    .local v1, "c":C
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    goto :goto_2

    .line 407
    :cond_3
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    .line 410
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    .end local v1    # "c":C
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 412
    .end local v1    # "i":I
    :cond_5
    goto :goto_4

    .line 393
    :cond_6
    nop

    .restart local v1    # "i":I
    :goto_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 394
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 396
    .end local v1    # "i":I
    :cond_7
    nop

    .line 416
    :goto_4
    return-void
.end method

.method private outputYear(IZZI)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .line 422
    const/16 v0, 0x64

    .line 423
    .local v0, "DIVISOR":I
    rem-int/lit8 v1, p1, 0x64

    .line 424
    .local v1, "trail":I
    div-int/lit8 v2, p1, 0x64

    div-int/lit8 v3, v1, 0x64

    add-int/2addr v2, v3

    .line 425
    .local v2, "lead":I
    rem-int/lit8 v1, v1, 0x64

    .line 426
    if-gez v1, :cond_0

    if-lez v2, :cond_0

    .line 427
    add-int/lit8 v1, v1, 0x64

    .line 428
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 429
    :cond_0
    if-gez v2, :cond_1

    if-lez v1, :cond_1

    .line 430
    add-int/lit8 v1, v1, -0x64

    .line 431
    add-int/lit8 v2, v2, 0x1

    .line 433
    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    .line 434
    if-nez v2, :cond_2

    if-gez v1, :cond_2

    .line 435
    iget-object v5, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v6, "-0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 437
    :cond_2
    iget-object v5, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v6, "%02d"

    const-string v7, "%2d"

    const-string v8, "%d"

    const-string v9, "%02d"

    invoke-static {p4, v6, v7, v8, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 440
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 441
    if-gez v1, :cond_4

    neg-int v5, v1

    goto :goto_2

    :cond_4
    move v5, v1

    .line 442
    .local v5, "n":I
    :goto_2
    iget-object v6, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v7, "%02d"

    const-string v8, "%2d"

    const-string v9, "%d"

    const-string v10, "%02d"

    invoke-static {p4, v7, v8, v9, v10}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v6, v7, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 444
    .end local v5    # "n":I
    :cond_5
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .line 93
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 98
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v3, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 105
    invoke-direct {p0, v2}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 107
    :cond_0
    nop

    .line 109
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 107
    return-object v2

    .line 109
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 110
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw v1
.end method
