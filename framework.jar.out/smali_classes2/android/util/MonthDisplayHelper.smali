.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "MonthDisplayHelper.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private final mWeekStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 68
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "weekStartDay"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v1, 0x7

    if-gt p3, v1, :cond_0

    .line 51
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    .line 54
    iget-object v1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v1, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 58
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 63
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private recalculate()V
    .locals 4

    .line 200
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    .line 202
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 203
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    .line 204
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 206
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    move-result v0

    .line 207
    .local v0, "firstDayOfMonth":I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    sub-int v1, v0, v1

    .line 208
    .local v1, "offset":I
    if-gez v1, :cond_0

    .line 209
    add-int/lit8 v1, v1, 0x7

    .line 211
    :cond_0
    iput v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    .line 212
    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .locals 1
    .param p1, "day"    # I

    .line 157
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getDayAt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 136
    if-nez p1, :cond_0

    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v0, :cond_0

    .line 137
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    add-int/2addr v0, p2

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x7

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 142
    .local v0, "day":I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le v0, v1, :cond_1

    .line 143
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    sub-int v1, v0, v1

    goto :goto_0

    .line 142
    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public getDigitsForRow(I)[I
    .locals 4
    .param p1, "row"    # I

    .line 116
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 121
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 122
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 122
    .local v2, "column":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, v2}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v3

    aput v3, v1, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "column":I
    :cond_0
    return-object v1

    .line 117
    .end local v1    # "result":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range (0-5)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstDayOfMonth()I
    .locals 2

    .line 89
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 76
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    return v0
.end method

.method public getRowOf(I)I
    .locals 1
    .param p1, "day"    # I

    .line 150
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getWeekStartDay()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 72
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 181
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    const/4 v1, 0x5

    if-gt p1, v1, :cond_3

    const/4 v1, 0x6

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    if-ge p2, v1, :cond_1

    .line 186
    return v0

    .line 189
    :cond_1
    const/4 v1, 0x7

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 190
    .local v1, "day":I
    iget v3, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    if-le v1, v3, :cond_2

    .line 191
    return v0

    .line 193
    :cond_2
    return v2

    .line 182
    .end local v1    # "day":I
    :cond_3
    :goto_0
    return v0
.end method

.method public nextMonth()V
    .locals 3

    .line 172
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 174
    return-void
.end method

.method public previousMonth()V
    .locals 3

    .line 164
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 165
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    .line 166
    return-void
.end method
