.class public Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
.super Landroid/text/format/Time;
.source "BearerSimSmsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    .locals 9
    .param p0, "data"    # [B

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;-><init>()V

    .line 72
    .local v0, "ts":Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 73
    .local v1, "year":I
    const/4 v2, 0x0

    const/16 v3, 0x63

    if-gt v1, v3, :cond_c

    if-gez v1, :cond_0

    goto :goto_6

    .line 74
    :cond_0
    const/16 v3, 0x60

    if-lt v1, v3, :cond_1

    add-int/lit16 v3, v1, 0x76c

    goto :goto_0

    :cond_1
    add-int/lit16 v3, v1, 0x7d0

    :goto_0
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    .line 75
    const/4 v3, 0x1

    aget-byte v4, p0, v3

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v4

    .line 76
    .local v4, "month":I
    if-lt v4, v3, :cond_b

    const/16 v5, 0xc

    if-le v4, v5, :cond_2

    goto :goto_5

    .line 77
    :cond_2
    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    .line 78
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v5

    .line 79
    .local v5, "day":I
    if-lt v5, v3, :cond_a

    const/16 v3, 0x1f

    if-le v5, v3, :cond_3

    goto :goto_4

    .line 80
    :cond_3
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    .line 81
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    .line 82
    .local v3, "hour":I
    if-ltz v3, :cond_9

    const/16 v6, 0x17

    if-le v3, v6, :cond_4

    goto :goto_3

    .line 83
    :cond_4
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    .line 84
    const/4 v6, 0x4

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    .line 85
    .local v6, "minute":I
    if-ltz v6, :cond_8

    const/16 v7, 0x3b

    if-le v6, v7, :cond_5

    goto :goto_2

    .line 86
    :cond_5
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    .line 87
    const/4 v8, 0x5

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v8

    .line 88
    .local v8, "second":I
    if-ltz v8, :cond_7

    if-le v8, v7, :cond_6

    goto :goto_1

    .line 89
    :cond_6
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    .line 90
    return-object v0

    .line 88
    :cond_7
    :goto_1
    return-object v2

    .line 85
    .end local v8    # "second":I
    :cond_8
    :goto_2
    return-object v2

    .line 82
    .end local v6    # "minute":I
    :cond_9
    :goto_3
    return-object v2

    .line 79
    .end local v3    # "hour":I
    :cond_a
    :goto_4
    return-object v2

    .line 76
    .end local v5    # "day":I
    :cond_b
    :goto_5
    return-object v2

    .line 73
    .end local v4    # "month":I
    :cond_c
    :goto_6
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerSimSmsData$TimeStamp;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
