.class public Landroid/service/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "ScheduleCalendar"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/notification/ScheduleCalendar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private addDays(JI)J
    .locals 2
    .param p1, "time"    # J
    .param p3, "days"    # I

    .line 192
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 194
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDayOfWeek(J)I
    .locals 2
    .param p1, "time"    # J

    .line 178
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getNextTime(JII)J
    .locals 4
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 111
    .local v0, "time":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method private getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .line 115
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 117
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 118
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 119
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isInSchedule(IJJJ)Z
    .locals 5
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .line 170
    const/4 v0, 0x7

    .line 171
    .local v0, "n":I
    invoke-direct {p0, p2, p3}, Landroid/service/notification/ScheduleCalendar;->getDayOfWeek(J)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x7

    rem-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    .line 172
    .local v1, "day":I
    invoke-direct {p0, p4, p5, p1}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p4

    .line 173
    invoke-direct {p0, p6, p7, p1}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p6

    .line 174
    iget-object v3, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, p2, p4

    if-ltz v3, :cond_0

    cmp-long v3, p2, p6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updateDays()V
    .locals 3

    .line 183
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 184
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public exitAtAlarm()Z
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    return v0
.end method

.method public getNextChangeTime(J)J
    .locals 6
    .param p1, "now"    # J

    .line 101
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v0

    .line 103
    .local v0, "nextStart":J
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v3, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/service/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v2

    .line 104
    .local v2, "nextEnd":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 106
    .local v4, "nextScheduleTime":J
    return-wide v4
.end method

.method public isAlarmInSchedule(JJ)Z
    .locals 17
    .param p1, "alarm"    # J
    .param p3, "now"    # J

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    .line 143
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_0
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v12

    .line 145
    .local v12, "start":J
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 146
    .local v0, "end":J
    cmp-long v2, v0, v12

    const/4 v14, 0x1

    if-gtz v2, :cond_1

    .line 147
    invoke-direct {v8, v0, v1, v14}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    .line 149
    .end local v0    # "end":J
    .local v15, "end":J
    :cond_1
    move-wide v15, v0

    const/4 v1, -0x1

    move-object v0, v8

    move-wide v2, v9

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 150
    move-object v0, v8

    move-wide/from16 v2, p3

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 151
    move-object v0, v8

    move-wide v2, v9

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 152
    move-object v0, v8

    move-wide/from16 v2, p3

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    :cond_3
    move v11, v14

    goto :goto_0

    .line 152
    :cond_4
    nop

    .line 149
    :goto_0
    return v11

    .line 143
    .end local v12    # "start":J
    .end local v15    # "end":J
    :cond_5
    :goto_1
    return v11
.end method

.method public isInSchedule(J)Z
    .locals 17
    .param p1, "time"    # J

    move-object/from16 v8, p0

    .line 128
    move-wide/from16 v9, p1

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 129
    :cond_0
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v12

    .line 130
    .local v12, "start":J
    iget-object v0, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, v8, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {v8, v9, v10, v0, v1}, Landroid/service/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 131
    .local v0, "end":J
    cmp-long v2, v0, v12

    const/4 v14, 0x1

    if-gtz v2, :cond_1

    .line 132
    invoke-direct {v8, v0, v1, v14}, Landroid/service/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    .line 134
    .end local v0    # "end":J
    .local v15, "end":J
    :cond_1
    move-wide v15, v0

    const/4 v1, -0x1

    move-object v0, v8

    move-wide v2, v9

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    move-object v0, v8

    move-wide v2, v9

    move-wide v4, v12

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v11, v14

    :goto_1
    return v11

    .line 128
    .end local v12    # "start":J
    .end local v15    # "end":J
    :cond_4
    :goto_2
    return v11
.end method

.method public maybeSetNextAlarm(JJ)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "nextAlarm"    # J

    .line 66
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v0, :cond_5

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide v0, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 72
    :cond_0
    cmp-long v2, p3, p1

    if-lez v2, :cond_3

    .line 73
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide p3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    goto :goto_1

    .line 79
    :cond_3
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_5

    .line 80
    sget-boolean v2, Landroid/service/notification/ScheduleCalendar;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 81
    const-string v2, "ScheduleCalendar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All alarms are in the past "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_4
    iget-object v2, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide v0, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 86
    :cond_5
    :goto_1
    return-void
.end method

.method public setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 1
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 54
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 56
    invoke-direct {p0}, Landroid/service/notification/ScheduleCalendar;->updateDays()V

    .line 57
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 93
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    return-void
.end method

.method public shouldExitForAlarm(J)Z
    .locals 6
    .param p1, "time"    # J

    .line 160
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return v1

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 166
    invoke-virtual {p0, v2, v3, p1, p2}, Landroid/service/notification/ScheduleCalendar;->isAlarmInSchedule(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    .line 163
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCalendar[mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
