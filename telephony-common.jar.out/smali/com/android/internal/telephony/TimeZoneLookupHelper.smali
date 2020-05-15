.class public Lcom/android/internal/telephony/TimeZoneLookupHelper;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;,
        Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    }
.end annotation


# static fields
.field private static final MS_PER_HOUR:I = 0x36ee80


# instance fields
.field private mLastCountryTimeZones:Llibcore/util/CountryTimeZones;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;
    .locals 1
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/util/CountryTimeZones;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/util/CountryTimeZones;

    invoke-virtual {v0, p1}, Llibcore/util/CountryTimeZones;->isForCountryCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/util/CountryTimeZones;

    monitor-exit p0

    return-object v0

    .line 291
    :cond_0
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/util/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object v0

    .line 292
    .local v0, "countryTimeZones":Llibcore/util/CountryTimeZones;
    if-eqz v0, :cond_1

    .line 293
    iput-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/util/CountryTimeZones;

    .line 295
    :cond_1
    monitor-exit p0

    return-object v0

    .line 296
    .end local v0    # "countryTimeZones":Llibcore/util/CountryTimeZones;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static guessZoneByNitzStatic(Lcom/android/internal/telephony/NitzData;)Ljava/util/TimeZone;
    .locals 2
    .param p0, "nitzData"    # Lcom/android/internal/telephony/NitzData;

    .line 221
    invoke-static {p0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v0

    .line 222
    .local v0, "result":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 10
    .param p0, "timeMillis"    # J
    .param p2, "utcOffsetMillis"    # I
    .param p3, "isDst"    # Z

    .line 240
    move v0, p2

    .line 241
    .local v0, "rawOffset":I
    if-eqz p3, :cond_0

    .line 242
    const v1, 0x36ee80

    sub-int/2addr v0, v1

    .line 244
    :cond_0
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 246
    .local v2, "match":Ljava/util/TimeZone;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 247
    .local v3, "d":Ljava/util/Date;
    const/4 v4, 0x1

    .line 248
    .local v4, "isOnlyMatch":Z
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 249
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 250
    .local v8, "tz":Ljava/util/TimeZone;
    invoke-virtual {v8, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p2, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p3, :cond_2

    .line 251
    if-nez v2, :cond_1

    .line 252
    move-object v2, v8

    goto :goto_1

    .line 254
    :cond_1
    const/4 v4, 0x0

    .line 255
    goto :goto_2

    .line 248
    .end local v7    # "zone":Ljava/lang/String;
    .end local v8    # "tz":Ljava/util/TimeZone;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 260
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 261
    const/4 v5, 0x0

    return-object v5

    .line 263
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;-><init>(Ljava/lang/String;Z)V

    return-object v5
.end method

.method private static lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 6
    .param p0, "nitzData"    # Lcom/android/internal/telephony/NitzData;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    .line 227
    .local v0, "utcOffsetMillis":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v1

    .line 228
    .local v1, "isDst":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v2

    .line 230
    .local v2, "timeMillis":J
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v4

    .line 231
    .local v4, "match":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    if-nez v4, :cond_0

    .line 233
    xor-int/lit8 v5, v1, 0x1

    invoke-static {v2, v3, v0, v5}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v4

    .line 235
    :cond_0
    return-object v4
.end method


# virtual methods
.method public countryUsesUtc(Ljava/lang/String;J)Z
    .locals 3
    .param p1, "isoCountryCode"    # Ljava/lang/String;
    .param p2, "whenMillis"    # J

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    return v1

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object v0

    .line 276
    .local v0, "countryTimeZones":Llibcore/util/CountryTimeZones;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Llibcore/util/CountryTimeZones;->hasUtcZone(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
    .locals 4
    .param p1, "isoCountryCode"    # Ljava/lang/String;
    .param p2, "whenMillis"    # J

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object v0

    .line 196
    .local v0, "countryTimeZones":Llibcore/util/CountryTimeZones;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return-object v1

    .line 200
    :cond_0
    invoke-virtual {v0}, Llibcore/util/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 201
    return-object v1

    .line 204
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    .line 205
    invoke-virtual {v0}, Llibcore/util/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, p2, p3}, Llibcore/util/CountryTimeZones;->isDefaultOkForCountryTimeZoneDetection(J)Z

    move-result v3

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;-><init>(Ljava/lang/String;ZJ)V

    .line 204
    return-object v1
.end method

.method public lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 1
    .param p1, "nitzData"    # Lcom/android/internal/telephony/NitzData;

    .line 184
    invoke-static {p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v0

    return-object v0
.end method

.method public lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 9
    .param p1, "nitzData"    # Lcom/android/internal/telephony/NitzData;
    .param p2, "isoCountryCode"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/util/CountryTimeZones;

    move-result-object v6

    .line 159
    .local v6, "countryTimeZones":Llibcore/util/CountryTimeZones;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 160
    return-object v7

    .line 162
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v8

    .line 164
    .local v8, "bias":Landroid/icu/util/TimeZone;
    nop

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v2

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v3

    .line 164
    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Llibcore/util/CountryTimeZones;->lookupByOffsetWithBias(IZJLandroid/icu/util/TimeZone;)Llibcore/util/CountryTimeZones$OffsetResult;

    move-result-object v0

    .line 168
    .local v0, "offsetResult":Llibcore/util/CountryTimeZones$OffsetResult;
    if-nez v0, :cond_1

    .line 169
    return-object v7

    .line 171
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    iget-object v2, v0, Llibcore/util/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Llibcore/util/CountryTimeZones$OffsetResult;->mOneMatch:Z

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method
