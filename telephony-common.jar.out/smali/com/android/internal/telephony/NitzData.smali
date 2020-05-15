.class public final Lcom/android/internal/telephony/NitzData;
.super Ljava/lang/Object;
.source "NitzData.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final MAX_NITZ_YEAR:I = 0x7f5

.field private static final MS_PER_QUARTER_HOUR:I = 0xdbba0


# instance fields
.field private final mCurrentTimeMillis:J

.field private final mDstOffset:Ljava/lang/Integer;

.field private final mEmulatorHostTimeZone:Ljava/util/TimeZone;

.field private final mOriginalString:Ljava/lang/String;

.field private final mZoneOffset:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V
    .locals 2
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "zoneOffsetMillis"    # I
    .param p3, "dstOffsetMillis"    # Ljava/lang/Integer;
    .param p4, "utcTimeMillis"    # J
    .param p6, "emulatorHostTimeZone"    # Ljava/util/TimeZone;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    .line 60
    iput-object p3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    .line 61
    iput-wide p4, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    .line 62
    iput-object p6, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    .line 63
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "originalString==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForTests(ILjava/lang/Integer;JLjava/util/TimeZone;)Lcom/android/internal/telephony/NitzData;
    .locals 8
    .param p0, "zoneOffsetMillis"    # I
    .param p1, "dstOffsetMillis"    # Ljava/lang/Integer;
    .param p2, "utcTimeMillis"    # J
    .param p4, "emulatorHostTimeZone"    # Ljava/util/TimeZone;

    .line 141
    new-instance v7, Lcom/android/internal/telephony/NitzData;

    const-string v1, "Test data"

    move-object v0, v7

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V

    return-object v7
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;
    .locals 25
    .param p0, "nitz"    # Ljava/lang/String;

    .line 75
    move-object/from16 v8, p0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 77
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 79
    const-string v1, "[/:,+-]"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 81
    .local v10, "nitzSubs":[Ljava/lang/String;
    const/16 v1, 0x7d0

    aget-object v3, v10, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int v11, v1, v3

    .line 82
    .local v11, "year":I
    const/16 v1, 0x7f5

    if-le v11, v1, :cond_0

    .line 84
    const-string v1, "SST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NITZ year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds limit, skip NITZ time update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v9

    .line 88
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    .line 91
    aget-object v3, v10, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .line 92
    .local v12, "month":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v12}, Ljava/util/Calendar;->set(II)V

    .line 94
    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v13, v3

    .line 95
    .local v13, "date":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v14, v4

    .line 98
    .local v14, "hour":I
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v14}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v15, v4

    .line 101
    .local v15, "minute":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v15}, Ljava/util/Calendar;->set(II)V

    .line 103
    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v7, v3

    .line 104
    .local v7, "second":I
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v3, 0x2d

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v2, v1

    nop

    :cond_1
    move/from16 v16, v2

    .line 108
    .local v16, "sign":Z
    const/4 v2, 0x6

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 110
    .local v17, "totalUtcOffsetQuarterHours":I
    if-eqz v16, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    mul-int v1, v1, v17

    const v2, 0xdbba0

    mul-int v18, v1, v2

    .line 115
    .local v18, "totalUtcOffsetMillis":I
    array-length v1, v10

    const/16 v3, 0x8

    if-lt v1, v3, :cond_3

    const/4 v1, 0x7

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v9

    :goto_1
    move-object v5, v1

    .line 116
    .local v5, "dstAdjustmentQuarterHours":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 117
    .local v1, "dstAdjustmentMillis":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 118
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 125
    .end local v1    # "dstAdjustmentMillis":Ljava/lang/Integer;
    .local v19, "dstAdjustmentMillis":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .line 126
    .local v1, "zone":Ljava/util/TimeZone;
    array-length v2, v10

    const/16 v4, 0x9

    if-lt v2, v4, :cond_5

    .line 127
    aget-object v2, v10, v3

    const/16 v3, 0x21

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "tzname":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object v1, v3

    .line 130
    .end local v1    # "zone":Ljava/util/TimeZone;
    .end local v2    # "tzname":Ljava/lang/String;
    .local v20, "zone":Ljava/util/TimeZone;
    :cond_5
    move-object/from16 v20, v1

    new-instance v21, Lcom/android/internal/telephony/NitzData;

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v1, v21

    move-object v2, v8

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v24, v5

    move-wide/from16 v5, v22

    .end local v5    # "dstAdjustmentQuarterHours":Ljava/lang/Integer;
    .local v24, "dstAdjustmentQuarterHours":Ljava/lang/Integer;
    move/from16 v22, v7

    move-object/from16 v7, v20

    .end local v7    # "second":I
    .local v22, "second":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object v21

    .line 132
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v10    # "nitzSubs":[Ljava/lang/String;
    .end local v11    # "year":I
    .end local v12    # "month":I
    .end local v13    # "date":I
    .end local v14    # "hour":I
    .end local v15    # "minute":I
    .end local v16    # "sign":Z
    .end local v17    # "totalUtcOffsetQuarterHours":I
    .end local v18    # "totalUtcOffsetMillis":I
    .end local v19    # "dstAdjustmentMillis":Ljava/lang/Integer;
    .end local v20    # "zone":Ljava/util/TimeZone;
    .end local v22    # "second":I
    .end local v24    # "dstAdjustmentQuarterHours":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NITZ: Parsing NITZ time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 191
    return v0

    .line 193
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 197
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/NitzData;

    .line 199
    .local v2, "nitzData":Lcom/android/internal/telephony/NitzData;
    iget v3, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    iget v4, v2, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    if-eq v3, v4, :cond_2

    .line 200
    return v1

    .line 202
    :cond_2
    iget-wide v3, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    iget-wide v5, v2, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 203
    return v1

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    return v1

    .line 208
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 210
    :goto_0
    return v1

    .line 212
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-eqz v3, :cond_7

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    iget-object v1, v2, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-nez v3, :cond_8

    goto :goto_1

    .line 212
    :cond_8
    move v0, v1

    :goto_1
    return v0

    .line 194
    .end local v2    # "nitzData":Lcom/android/internal/telephony/NitzData;
    :cond_9
    :goto_2
    return v1
.end method

.method public getCurrentTimeInMillis()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    return-wide v0
.end method

.method public getDstAdjustmentMillis()Ljava/lang/Integer;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEmulatorHostTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getLocalOffsetMillis()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 219
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    add-int/2addr v2, v3

    .line 220
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v0, v3

    .line 221
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-wide v5, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    iget-wide v7, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v3, v5

    add-int/2addr v2, v3

    .line 222
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    nop

    .line 223
    :cond_1
    add-int/2addr v1, v4

    .line 224
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isDst()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NitzData{mOriginalString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDstOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEmulatorHostTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
