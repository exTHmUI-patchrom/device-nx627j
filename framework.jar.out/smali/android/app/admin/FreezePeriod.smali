.class public Landroid/app/admin/FreezePeriod;
.super Ljava/lang/Object;
.source "FreezePeriod.java"


# static fields
.field static final DAYS_IN_YEAR:I = 0x16d

.field private static final DUMMY_YEAR:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "FreezePeriod"


# instance fields
.field private final mEnd:Ljava/time/MonthDay;

.field private final mEndDay:I

.field private final mStart:Ljava/time/MonthDay;

.field private final mStartDay:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "startDay"    # I
    .param p2, "endDay"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 87
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 88
    iput p2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 89
    invoke-static {p2}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V
    .locals 2
    .param p1, "start"    # Ljava/time/MonthDay;
    .param p2, "end"    # Ljava/time/MonthDay;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    .line 63
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    iput v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 64
    iput-object p2, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    .line 65
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    iput v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 66
    return-void
.end method

.method static canonicalizePeriods(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    .line 221
    .local p0, "intervals":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/16 v0, 0x16d

    new-array v1, v0, [Z

    .line 223
    .local v1, "taken":[Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    .line 224
    .local v3, "interval":Landroid/app/admin/FreezePeriod;
    iget v5, v3, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 225
    add-int/lit8 v6, v5, -0x1

    rem-int/2addr v6, v0

    aput-boolean v4, v1, v6

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    .end local v3    # "interval":Landroid/app/admin/FreezePeriod;
    .end local v5    # "i":I
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/4 v3, 0x0

    move v5, v3

    .line 231
    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 232
    aget-boolean v6, v1, v5

    if-nez v6, :cond_2

    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    goto :goto_2

    .line 236
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 237
    .local v6, "intervalStart":I
    :goto_3
    if-ge v5, v0, :cond_3

    aget-boolean v7, v1, v5

    if-eqz v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 238
    :cond_3
    new-instance v7, Landroid/app/admin/FreezePeriod;

    invoke-direct {v7, v6, v5}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v6    # "intervalStart":I
    goto :goto_2

    .line 242
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 243
    .local v6, "lastIndex":I
    if-lez v6, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/FreezePeriod;

    iget v7, v7, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-ne v7, v0, :cond_5

    .line 244
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/FreezePeriod;

    iget v0, v0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ne v0, v4, :cond_5

    .line 245
    new-instance v0, Landroid/app/admin/FreezePeriod;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    iget v4, v4, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/FreezePeriod;

    iget v7, v7, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-direct {v0, v4, v7}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    .line 247
    .local v0, "wrappedInterval":Landroid/app/admin/FreezePeriod;
    invoke-interface {v2, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    .end local v0    # "wrappedInterval":Landroid/app/admin/FreezePeriod;
    :cond_5
    return-object v2
.end method

.method private static dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I
    .locals 1
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 194
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method private static dayOfYearToMonthDay(I)Ljava/time/MonthDay;
    .locals 3
    .param p0, "dayOfYear"    # I

    .line 185
    const/16 v0, 0x7d1

    invoke-static {v0, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    .line 186
    .local v0, "date":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I
    .locals 3
    .param p0, "first"    # Ljava/time/LocalDate;
    .param p1, "second"    # Ljava/time/LocalDate;

    .line 203
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 204
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x16d

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 203
    return v0
.end method

.method static validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 10
    .param p1, "prevPeriodStart"    # Ljava/time/LocalDate;
    .param p2, "prevPeriodEnd"    # Ljava/time/LocalDate;
    .param p3, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .line 304
    .local p0, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 307
    :cond_0
    invoke-virtual {p1, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_1
    const-string v0, "FreezePeriod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous period ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is after current date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    .line 318
    .local v1, "curOrNextFreezePeriod":Landroid/app/admin/FreezePeriod;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    .line 319
    .local v3, "interval":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v3, p3}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v3, Landroid/app/admin/FreezePeriod;->mStartDay:I

    .line 320
    invoke-static {p3}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_1

    .line 324
    .end local v3    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_3
    goto :goto_0

    .line 321
    .restart local v3    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_4
    :goto_1
    move-object v1, v3

    .line 322
    nop

    .line 325
    .end local v3    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_5
    nop

    .line 326
    invoke-virtual {v1, p3}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v2

    .line 327
    .local v2, "curOrNextFreezeDates":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/LocalDate;Ljava/time/LocalDate;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 328
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/LocalDate;

    invoke-direct {v3, p3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 330
    :cond_6
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/time/LocalDate;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; cur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "periodsDescription":Ljava/lang/String;
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/LocalDate;

    invoke-static {v4, p2}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    .line 339
    .local v4, "separation":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    .line 341
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_7

    goto :goto_2

    .line 342
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previous freeze period too close to new period: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v6

    throw v6

    .line 347
    :cond_8
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/time/LocalDate;

    invoke-static {v6, p1}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 349
    .local v6, "length":J
    const-wide/16 v8, 0x5a

    cmp-long v8, v6, v8

    if-gtz v8, :cond_9

    .line 354
    .end local v6    # "length":J
    :goto_2
    return-void

    .line 350
    .restart local v6    # "length":J
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Combined freeze period exceeds maximum days: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v8

    throw v8

    .line 331
    .end local v3    # "periodsDescription":Ljava/lang/String;
    .end local v4    # "separation":J
    .end local v6    # "length":J
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current freeze dates inverted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    .end local v0    # "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    .end local v1    # "curOrNextFreezePeriod":Landroid/app/admin/FreezePeriod;
    .end local v2    # "curOrNextFreezeDates":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/LocalDate;Ljava/time/LocalDate;>;"
    :cond_b
    :goto_3
    return-void
.end method

.method static validatePeriods(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p0, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "allPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 269
    .local v2, "current":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_4

    .line 273
    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    goto :goto_1

    .line 274
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    .line 275
    .local v3, "previous":Landroid/app/admin/FreezePeriod;
    :goto_1
    if-eq v3, v2, :cond_3

    .line 277
    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v5, v3, Landroid/app/admin/FreezePeriod;->mEndDay:I

    rsub-int v5, v5, 0x16d

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .local v4, "separation":I
    goto :goto_2

    .line 284
    .end local v4    # "separation":I
    :cond_1
    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v5, v3, Landroid/app/admin/FreezePeriod;->mEndDay:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 286
    .restart local v4    # "separation":I
    :goto_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_2

    .end local v2    # "current":Landroid/app/admin/FreezePeriod;
    .end local v3    # "previous":Landroid/app/admin/FreezePeriod;
    .end local v4    # "separation":I
    goto :goto_3

    .line 287
    .restart local v2    # "current":Landroid/app/admin/FreezePeriod;
    .restart local v3    # "previous":Landroid/app/admin/FreezePeriod;
    .restart local v4    # "separation":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze periods "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " are too close together: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " days apart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v5

    throw v5

    .line 267
    .end local v2    # "current":Landroid/app/admin/FreezePeriod;
    .end local v3    # "previous":Landroid/app/admin/FreezePeriod;
    .end local v4    # "separation":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .restart local v2    # "current":Landroid/app/admin/FreezePeriod;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeze period "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " days"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v3}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v3

    throw v3

    .line 293
    .end local v1    # "i":I
    .end local v2    # "current":Landroid/app/admin/FreezePeriod;
    :cond_5
    return-void

    .line 265
    :cond_6
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->duplicateOrOverlapPeriods()Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method after(Ljava/time/LocalDate;)Z
    .locals 2
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 129
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method contains(Ljava/time/LocalDate;)Z
    .locals 4
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 116
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 117
    .local v0, "daysOfYear":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 119
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt v0, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 123
    :cond_1
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_3

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method

.method getEffectiveEndDay()I
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    return v0

    .line 110
    :cond_0
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    add-int/lit16 v0, v0, 0x16d

    return v0
.end method

.method public getEnd()Ljava/time/MonthDay;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    return-object v0
.end method

.method getLength()I
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v0

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStart()Ljava/time/MonthDay;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    return-object v0
.end method

.method isWrapped()Z
    .locals 2

    .line 99
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;
    .locals 6
    .param p1, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 144
    .local v0, "nowDays":I
    invoke-virtual {p0, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "startYearAdjustment":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v2

    goto :goto_0

    .line 153
    .end local v1    # "startYearAdjustment":I
    :cond_0
    const/4 v1, -0x1

    .line 154
    .restart local v1    # "startYearAdjustment":I
    const/4 v2, 0x0

    .local v2, "endYearAdjustment":I
    :goto_0
    goto :goto_1

    .line 158
    .end local v1    # "startYearAdjustment":I
    .end local v2    # "endYearAdjustment":I
    :cond_1
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_2

    .line 161
    const/4 v1, 0x0

    .line 162
    .restart local v1    # "startYearAdjustment":I
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v2

    goto :goto_0

    .line 165
    .end local v1    # "startYearAdjustment":I
    :cond_2
    const/4 v1, 0x1

    .line 166
    .restart local v1    # "startYearAdjustment":I
    const/4 v2, 0x1

    .line 169
    .restart local v2    # "endYearAdjustment":I
    :goto_1
    iget v3, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v4, 0x7d1

    invoke-static {v4, v3}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v3

    .line 170
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    add-int/2addr v5, v1

    .line 169
    invoke-virtual {v3, v5}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v3

    .line 171
    .local v3, "startDate":Ljava/time/LocalDate;
    iget v5, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v4

    .line 172
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    add-int/2addr v5, v2

    .line 171
    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v4

    .line 173
    .local v4, "endDate":Ljava/time/LocalDate;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 178
    const-string v0, "MMM dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 179
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    .line 180
    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    return-object v1
.end method
