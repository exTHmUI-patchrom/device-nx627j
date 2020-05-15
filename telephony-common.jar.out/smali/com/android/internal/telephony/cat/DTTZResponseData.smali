.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "cal"    # Ljava/util/Calendar;

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 217
    return-void
.end method

.method private byteToBCD(I)B
    .locals 2
    .param p1, "value"    # I

    .line 269
    if-gez p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Value has to be between 0 and 99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private getTZOffSetByte(J)B
    .locals 6
    .param p1, "offSetVal"    # J

    .line 279
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 287
    .local v0, "isNegative":Z
    :goto_0
    const-wide/32 v2, 0xdbba0

    div-long v2, p1, v2

    .line 288
    .local v2, "tzOffset":J
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    nop

    :cond_1
    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 289
    .end local v2    # "tzOffset":J
    .local v4, "tzOffset":J
    long-to-int v1, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v1

    .line 291
    .local v1, "bcdVal":B
    if-eqz v0, :cond_2

    or-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    move v1, v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    return v2
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .line 221
    if-nez p1, :cond_0

    .line 222
    return-void

    .line 226
    :cond_0
    const/16 v0, 0x80

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    or-int/2addr v0, v1

    .line 227
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 231
    .local v1, "data":[B
    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_1

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v5

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    .line 243
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 246
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    .line 252
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 254
    const-string v4, "persist.sys.timezone"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "tz":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    const/4 v5, -0x1

    aput-byte v5, v1, v3

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 259
    .local v5, "zone":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    add-int/2addr v6, v7

    .line 260
    .local v6, "zoneOffset":I
    int-to-long v7, v6

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result v7

    aput-byte v7, v1, v3

    .line 263
    .end local v5    # "zone":Ljava/util/TimeZone;
    .end local v6    # "zoneOffset":I
    :goto_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v5, v1, v2

    .line 264
    .local v5, "b":B
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    .end local v5    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_3
    return-void
.end method
