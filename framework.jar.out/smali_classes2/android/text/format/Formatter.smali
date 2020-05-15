.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_IEC_UNITS:I = 0x8

.field public static final FLAG_SHORTER:I = 0x1

.field public static final FLAG_SI_UNITS:I = 0x4

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 68
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 69
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 16
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    move-wide/from16 v0, p1

    .line 118
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    .line 119
    .local v2, "unit":I
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 120
    .local v5, "isNegative":Z
    :goto_1
    if-eqz v5, :cond_2

    neg-long v8, v0

    long-to-float v8, v8

    goto :goto_2

    :cond_2
    long-to-float v8, v0

    .line 121
    .local v8, "result":F
    :goto_2
    const v9, 0x10400e7

    .line 122
    .local v9, "suffix":I
    const-wide/16 v10, 0x1

    .line 123
    .local v10, "mult":J
    const/high16 v12, 0x44610000    # 900.0f

    cmpl-float v13, v8, v12

    if-lez v13, :cond_3

    .line 124
    const v9, 0x10402fb

    .line 125
    int-to-long v10, v2

    .line 126
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 128
    :cond_3
    cmpl-float v13, v8, v12

    if-lez v13, :cond_4

    .line 129
    const v9, 0x10403ad

    .line 130
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 131
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 133
    :cond_4
    cmpl-float v13, v8, v12

    if-lez v13, :cond_5

    .line 134
    const v9, 0x1040249

    .line 135
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 136
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 138
    :cond_5
    cmpl-float v13, v8, v12

    if-lez v13, :cond_6

    .line 139
    const v9, 0x104064b

    .line 140
    int-to-long v13, v2

    mul-long/2addr v10, v13

    .line 141
    int-to-float v13, v2

    div-float/2addr v8, v13

    .line 143
    :cond_6
    cmpl-float v12, v8, v12

    if-lez v12, :cond_7

    .line 144
    const v9, 0x1040527

    .line 145
    int-to-long v12, v2

    mul-long/2addr v10, v12

    .line 146
    int-to-float v12, v2

    div-float/2addr v8, v12

    .line 153
    :cond_7
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_8

    goto :goto_3

    .line 156
    :cond_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_9

    .line 157
    const/16 v12, 0x64

    .line 158
    .local v12, "roundFactor":I
    const-string v13, "%.2f"

    goto :goto_4

    .line 159
    .end local v12    # "roundFactor":I
    :cond_9
    const/high16 v12, 0x41200000    # 10.0f

    cmpg-float v12, v8, v12

    if-gez v12, :cond_b

    .line 160
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_a

    .line 161
    const/16 v12, 0xa

    .line 162
    .restart local v12    # "roundFactor":I
    const-string v13, "%.1f"

    goto :goto_4

    .line 164
    .end local v12    # "roundFactor":I
    :cond_a
    const/16 v12, 0x64

    .line 165
    .restart local v12    # "roundFactor":I
    const-string v13, "%.2f"

    goto :goto_4

    .line 168
    .end local v12    # "roundFactor":I
    :cond_b
    and-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_c

    .line 169
    const/4 v12, 0x1

    .line 170
    .restart local v12    # "roundFactor":I
    const-string v13, "%.0f"

    goto :goto_4

    .line 172
    .end local v12    # "roundFactor":I
    :cond_c
    const/16 v12, 0x64

    .line 173
    .restart local v12    # "roundFactor":I
    const-string v13, "%.2f"

    goto :goto_4

    .line 154
    .end local v12    # "roundFactor":I
    :cond_d
    :goto_3
    const/4 v12, 0x1

    .line 155
    .restart local v12    # "roundFactor":I
    const-string v13, "%.0f"

    .line 173
    .local v13, "roundFormat":Ljava/lang/String;
    :goto_4
    nop

    .line 177
    if-eqz v5, :cond_e

    .line 178
    neg-float v8, v8

    .line 180
    :cond_e
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v7, v6

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "roundedString":Ljava/lang/String;
    and-int/lit8 v7, p3, 0x2

    if-nez v7, :cond_f

    goto :goto_5

    .line 186
    :cond_f
    int-to-float v3, v12

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v10

    int-to-long v0, v12

    div-long/2addr v3, v0

    :goto_5
    move-wide v0, v3

    .line 188
    .local v0, "roundedBytes":J
    move-object/from16 v3, p0

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "units":Ljava/lang/String;
    new-instance v7, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v7, v6, v4, v0, v1}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 94
    if-nez p0, :cond_0

    .line 95
    const-string v0, ""

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104021b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 220
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 222
    .local v0, "secondsLong":J
    const/4 v2, 0x0

    .local v2, "days":I
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .line 223
    .local v4, "minutes":I
    const-wide/32 v5, 0x15180

    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    .line 224
    div-long v5, v0, v5

    long-to-int v2, v5

    .line 225
    const v5, 0x15180

    mul-int/2addr v5, v2

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 227
    :cond_0
    const-wide/16 v5, 0xe10

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    .line 228
    div-long v5, v0, v5

    long-to-int v3, v5

    .line 229
    mul-int/lit16 v5, v3, 0xe10

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 231
    :cond_1
    const-wide/16 v5, 0x3c

    cmp-long v7, v0, v5

    if-ltz v7, :cond_2

    .line 232
    div-long v5, v0, v5

    long-to-int v4, v5

    .line 233
    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 235
    :cond_2
    long-to-int v5, v0

    .line 237
    .local v5, "seconds":I
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    .line 238
    .local v6, "locale":Ljava/util/Locale;
    sget-object v7, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v6, v7}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v7

    .line 240
    .local v7, "measureFormat":Landroid/icu/text/MeasureFormat;
    const/4 v8, 0x2

    if-ge v2, v8, :cond_b

    if-lez v2, :cond_3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 243
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v2, :cond_4

    .line 244
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 244
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 247
    :cond_4
    if-ge v3, v8, :cond_a

    if-lez v3, :cond_5

    if-nez v4, :cond_5

    goto :goto_1

    .line 250
    :cond_5
    if-lez v3, :cond_6

    .line 251
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 251
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 254
    :cond_6
    if-ge v4, v8, :cond_9

    if-lez v4, :cond_7

    if-nez v5, :cond_7

    goto :goto_0

    .line 257
    :cond_7
    if-lez v4, :cond_8

    .line 258
    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    .line 259
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    .line 258
    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 262
    :cond_8
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 255
    :cond_9
    :goto_0
    add-int/lit8 v8, v5, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v4, v8

    .line 256
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 248
    :cond_a
    :goto_1
    add-int/lit8 v8, v4, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    .line 249
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 241
    :cond_b
    :goto_2
    add-int/lit8 v8, v3, 0xc

    div-int/lit8 v8, v8, 0x18

    add-int/2addr v2, v8

    .line 242
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 275
    const-wide/32 v0, 0xea60

    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    .line 277
    .local v2, "minutesRoundedUp":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 279
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    .line 281
    .local v1, "measureFormat":Landroid/icu/text/MeasureFormat;
    new-instance v4, Landroid/icu/util/Measure;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v4}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .line 107
    if-nez p0, :cond_0

    .line 108
    const-string v0, ""

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/text/format/Formatter$BytesResult;
    const v1, 0x104021b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
