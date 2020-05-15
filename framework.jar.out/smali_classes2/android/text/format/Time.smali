.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 875
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1
    .param p1, "other"    # Landroid/text/format/Time;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, "c":C
    if-ne v0, p3, :cond_0

    .line 500
    return-void

    .line 496
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    .line 496
    const-string v3, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .line 337
    if-eqz p0, :cond_1

    .line 339
    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 343
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 345
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result v0

    return v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spos"    # I
    .param p2, "mul"    # I

    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 504
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    .line 507
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error at pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .line 685
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 6
    .param p0, "millis"    # J
    .param p2, "gmtoff"    # J

    .line 974
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 975
    .local v0, "offsetMillis":J
    add-long v2, p0, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    .line 976
    .local v2, "julianDay":J
    long-to-int v4, v2

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .line 1052
    mul-int/lit8 v0, p0, 0x7

    const v1, 0x253d89

    add-int/2addr v1, v0

    return v1
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .line 1033
    rsub-int/lit8 v0, p1, 0x4

    .line 1034
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 1035
    add-int/lit8 v0, v0, 0x7

    .line 1037
    :cond_0
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v0

    .line 1038
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 201
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 208
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 209
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5
    .param p0, "time"    # Landroid/text/format/Time;

    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 952
    .local v1, "millis":J
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 17
    .param p1, "s"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 554
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 555
    .local v2, "len":I
    const/16 v3, 0xa

    if-lt v2, v3, :cond_9

    .line 558
    const/4 v4, 0x0

    .line 561
    .local v4, "inUtc":Z
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 562
    .local v5, "n":I
    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v5, v7

    .line 563
    const/4 v7, 0x2

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    .line 564
    const/4 v9, 0x3

    invoke-static {v1, v9, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    .line 565
    iput v5, v0, Landroid/text/format/Time;->year:I

    .line 567
    const/4 v9, 0x4

    const/16 v10, 0x2d

    invoke-direct {v0, v1, v9, v10}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 570
    const/4 v9, 0x5

    invoke-static {v1, v9, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 571
    const/4 v9, 0x6

    invoke-static {v1, v9, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    .line 572
    const/4 v9, -0x1

    add-int/2addr v5, v9

    .line 573
    iput v5, v0, Landroid/text/format/Time;->month:I

    .line 575
    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v10}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 578
    const/16 v11, 0x8

    invoke-static {v1, v11, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 579
    const/16 v11, 0x9

    invoke-static {v1, v11, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v11

    add-int/2addr v5, v11

    .line 580
    iput v5, v0, Landroid/text/format/Time;->monthDay:I

    .line 582
    const/16 v11, 0x13

    if-lt v2, v11, :cond_8

    .line 584
    const/16 v11, 0x54

    invoke-direct {v0, v1, v3, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 585
    iput-boolean v6, v0, Landroid/text/format/Time;->allDay:Z

    .line 588
    const/16 v11, 0xb

    invoke-static {v1, v11, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 589
    const/16 v11, 0xc

    invoke-static {v1, v11, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v11

    add-int/2addr v5, v11

    .line 592
    move v11, v5

    .line 594
    .local v11, "hour":I
    const/16 v12, 0xd

    const/16 v13, 0x3a

    invoke-direct {v0, v1, v12, v13}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 597
    const/16 v12, 0xe

    invoke-static {v1, v12, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 598
    const/16 v12, 0xf

    invoke-static {v1, v12, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v12

    add-int/2addr v5, v12

    .line 600
    move v12, v5

    .line 602
    .local v12, "minute":I
    const/16 v14, 0x10

    invoke-direct {v0, v1, v14, v13}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 605
    const/16 v13, 0x11

    invoke-static {v1, v13, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 606
    const/16 v13, 0x12

    invoke-static {v1, v13, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v13

    add-int/2addr v5, v13

    .line 607
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 611
    const/16 v13, 0x13

    .line 612
    .local v13, "tzIndex":I
    if-ge v13, v2, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_1

    .line 614
    :cond_0
    add-int/2addr v13, v8

    .line 615
    if-ge v13, v2, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 618
    :cond_1
    const/4 v14, 0x0

    .line 619
    .local v14, "offset":I
    if-le v2, v13, :cond_6

    .line 620
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 623
    .local v15, "c":C
    const/16 v9, 0x2b

    if-eq v15, v9, :cond_4

    if-eq v15, v10, :cond_3

    const/16 v9, 0x5a

    if-ne v15, v9, :cond_2

    .line 626
    const/4 v7, 0x0

    .line 627
    .end local v14    # "offset":I
    .local v7, "offset":I
    goto :goto_0

    .line 635
    .end local v7    # "offset":I
    .restart local v14    # "offset":I
    :cond_2
    new-instance v3, Landroid/util/TimeFormatException;

    new-array v7, v7, [Ljava/lang/Object;

    .line 637
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    .line 635
    const-string v6, "Unexpected character 0x%02d at position %d.  Expected + or -"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    :cond_3
    const/4 v7, 0x1

    .line 630
    .end local v14    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_0

    .line 632
    .end local v7    # "offset":I
    .restart local v14    # "offset":I
    :cond_4
    const/4 v7, -0x1

    .line 633
    .end local v14    # "offset":I
    .restart local v7    # "offset":I
    nop

    .line 639
    .end local v7    # "offset":I
    .restart local v14    # "offset":I
    :goto_0
    move v14, v7

    const/4 v4, 0x1

    .line 641
    if-eqz v14, :cond_6

    .line 642
    add-int/lit8 v7, v13, 0x6

    if-lt v2, v7, :cond_5

    .line 649
    add-int/lit8 v7, v13, 0x1

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 650
    add-int/lit8 v7, v13, 0x2

    invoke-static {v1, v7, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v5, v7

    .line 651
    mul-int/2addr v5, v14

    .line 652
    add-int/2addr v11, v5

    .line 655
    add-int/lit8 v7, v13, 0x4

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 656
    .end local v5    # "n":I
    .local v3, "n":I
    add-int/lit8 v5, v13, 0x5

    invoke-static {v1, v5, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 657
    mul-int/2addr v3, v14

    .line 658
    add-int/2addr v12, v3

    .line 661
    .end local v15    # "c":C
    move v5, v3

    goto :goto_1

    .line 643
    .end local v3    # "n":I
    .restart local v5    # "n":I
    .restart local v15    # "c":C
    :cond_5
    new-instance v3, Landroid/util/TimeFormatException;

    new-array v7, v8, [Ljava/lang/Object;

    add-int/lit8 v8, v13, 0x6

    .line 645
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 644
    const-string v6, "Unexpected length; should be %d characters"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    .end local v15    # "c":C
    :cond_6
    :goto_1
    iput v11, v0, Landroid/text/format/Time;->hour:I

    .line 662
    iput v12, v0, Landroid/text/format/Time;->minute:I

    .line 664
    if-eqz v14, :cond_7

    .line 665
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 667
    .end local v11    # "hour":I
    .end local v12    # "minute":I
    .end local v13    # "tzIndex":I
    .end local v14    # "offset":I
    :cond_7
    goto :goto_2

    .line 668
    :cond_8
    iput-boolean v8, v0, Landroid/text/format/Time;->allDay:Z

    .line 669
    iput v6, v0, Landroid/text/format/Time;->hour:I

    .line 670
    iput v6, v0, Landroid/text/format/Time;->minute:I

    .line 671
    iput v6, v0, Landroid/text/format/Time;->second:I

    .line 674
    :goto_2
    iput v6, v0, Landroid/text/format/Time;->weekDay:I

    .line 675
    iput v6, v0, Landroid/text/format/Time;->yearDay:I

    .line 676
    const/4 v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->isDst:I

    .line 677
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    .line 678
    return v4

    .line 556
    .end local v4    # "inUtc":Z
    .end local v5    # "n":I
    :cond_9
    new-instance v3, Landroid/util/TimeFormatException;

    const-string v4, "String too short --- expected at least 10 characters."

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 424
    .local v0, "len":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 429
    const/4 v2, 0x0

    .line 432
    .local v2, "inUtc":Z
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 433
    .local v3, "n":I
    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 434
    const/4 v5, 0x2

    const/16 v7, 0xa

    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 435
    const/4 v5, 0x3

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 436
    iput v3, p0, Landroid/text/format/Time;->year:I

    .line 439
    const/4 v5, 0x4

    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 440
    const/4 v5, 0x5

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 441
    const/4 v5, -0x1

    add-int/2addr v3, v5

    .line 442
    iput v3, p0, Landroid/text/format/Time;->month:I

    .line 445
    const/4 v8, 0x6

    invoke-static {p1, v8, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 446
    const/4 v8, 0x7

    invoke-static {p1, v8, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v3, v8

    .line 447
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 449
    if-le v0, v1, :cond_1

    .line 450
    const/16 v8, 0xf

    if-lt v0, v8, :cond_0

    .line 456
    const/16 v9, 0x54

    invoke-direct {p0, p1, v1, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 457
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 460
    const/16 v1, 0x9

    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 461
    .end local v3    # "n":I
    .local v1, "n":I
    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v1, v3

    .line 462
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 465
    const/16 v3, 0xb

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 466
    const/16 v3, 0xc

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v1, v3

    .line 467
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 470
    const/16 v3, 0xd

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 471
    const/16 v3, 0xe

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v3, v1

    .line 472
    .end local v1    # "n":I
    .restart local v3    # "n":I
    iput v3, p0, Landroid/text/format/Time;->second:I

    .line 474
    if-le v0, v8, :cond_2

    .line 476
    const/16 v1, 0x5a

    invoke-direct {p0, p1, v8, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 477
    const/4 v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" If there are more than 8 characters there must be at least 15."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_1
    iput-boolean v6, p0, Landroid/text/format/Time;->allDay:Z

    .line 481
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 482
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 483
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 486
    :cond_2
    :goto_0
    iput v4, p0, Landroid/text/format/Time;->weekDay:I

    .line 487
    iput v4, p0, Landroid/text/format/Time;->yearDay:I

    .line 488
    iput v5, p0, Landroid/text/format/Time;->isDst:I

    .line 489
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    .line 490
    return v2

    .line 425
    .end local v2    # "inUtc":Z
    .end local v3    # "n":I
    :cond_3
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is too short: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" Expected at least 8 characters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .line 867
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .line 851
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 306
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 307
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 308
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 309
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 310
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 311
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 312
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 313
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 316
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 357
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    .line 776
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10
    .param p1, "allDay"    # Z

    .line 924
    if-eqz p1, :cond_0

    .line 925
    const-string v0, "%Y-%m-%d"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 926
    :cond_0
    const-string v0, "UTC"

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    const-string v0, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 929
    :cond_1
    const-string v0, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "base":Ljava/lang/String;
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const-string v1, "-"

    goto :goto_0

    :cond_2
    const-string v1, "+"

    .line 931
    .local v1, "sign":Ljava/lang/String;
    :goto_0
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 932
    .local v2, "offset":I
    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 933
    .local v3, "minutes":I
    div-int/lit16 v4, v2, 0xe10

    .line 935
    .local v4, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getActualMaximum(I)I
    .locals 4
    .param p1, "field"    # I

    .line 261
    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WEEK_NUM not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_1
    iget v0, p0, Landroid/text/format/Time;->year:I

    .line 286
    .local v0, "y":I
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_0

    rem-int/lit16 v1, v0, 0x190

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x16d

    goto :goto_0

    :cond_1
    const/16 v1, 0x16c

    :goto_0
    return v1

    .line 282
    .end local v0    # "y":I
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 280
    :pswitch_3
    const/16 v0, 0x7f5

    return v0

    .line 278
    :pswitch_4
    const/16 v0, 0xb

    return v0

    .line 269
    :pswitch_5
    sget-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v1, p0, Landroid/text/format/Time;->month:I

    aget v0, v0, v1

    .line 270
    .local v0, "n":I
    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    .line 271
    return v0

    .line 273
    :cond_2
    iget v2, p0, Landroid/text/format/Time;->year:I

    .line 274
    .local v2, "y":I
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_4

    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_3

    rem-int/lit16 v3, v2, 0x190

    if-nez v3, :cond_4

    :cond_3
    const/16 v1, 0x1d

    nop

    :cond_4
    return v1

    .line 267
    .end local v0    # "n":I
    .end local v2    # "y":I
    :pswitch_6
    const/16 v0, 0x17

    return v0

    .line 265
    :pswitch_7
    return v0

    .line 263
    :pswitch_8
    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method public getWeekNumber()I
    .locals 6

    .line 899
    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 902
    .local v0, "closestThursday":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    .line 903
    div-int/lit8 v2, v0, 0x7

    add-int/2addr v2, v1

    return v2

    .line 907
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 908
    .local v2, "temp":Landroid/text/format/Time;
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sget-object v4, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 909
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 910
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v1

    return v3
.end method

.method public normalize(Z)J
    .locals 3
    .param p1, "ignoreDst"    # Z

    .line 230
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 231
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 232
    .local v0, "timeInMillis":J
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 233
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 409
    if-eqz p1, :cond_1

    .line 412
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 543
    if-eqz p1, :cond_1

    .line 546
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 548
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(III)V
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 828
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 829
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 830
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 831
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 832
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 833
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 834
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 837
    return-void
.end method

.method public set(IIIIII)V
    .locals 2
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 804
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 805
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 806
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 807
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 808
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 809
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 810
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 811
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 812
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 813
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 814
    return-void
.end method

.method public set(J)V
    .locals 2
    .param p1, "millis"    # J

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 764
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 766
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 767
    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .line 784
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 785
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 786
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 787
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 788
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 789
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 790
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 791
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 792
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 793
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 794
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 795
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 796
    return-void
.end method

.method public setJulianDay(I)J
    .locals 5
    .param p1, "julianDay"    # I

    .line 1003
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1004
    .local v0, "millis":J
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1008
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1009
    .local v2, "approximateDay":I
    sub-int v3, p1, v2

    .line 1010
    .local v3, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 1013
    const/4 v4, 0x0

    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1014
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 1015
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 1016
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1017
    return-wide v0
.end method

.method public setToNow()V
    .locals 2

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 693
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezone"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 247
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public toMillis(Z)J
    .locals 2
    .param p1, "ignoreDst"    # Z

    .line 751
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 752
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 369
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
