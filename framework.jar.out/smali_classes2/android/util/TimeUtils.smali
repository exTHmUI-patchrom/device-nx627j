.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 98
    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 99
    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 3
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .line 102
    const/4 v0, 0x0

    const/16 v1, 0x3e7

    if-le p0, v1, :cond_1

    .line 103
    nop

    .line 104
    .local v0, "num":I
    :goto_0
    if-eqz p0, :cond_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 108
    :cond_0
    add-int v1, v0, p1

    return v1

    .line 110
    .end local v0    # "num":I
    :cond_1
    const/16 v1, 0x63

    const/4 v2, 0x3

    if-gt p0, v1, :cond_7

    if-eqz p2, :cond_2

    if-lt p3, v2, :cond_2

    goto :goto_3

    .line 113
    :cond_2
    const/16 v1, 0x9

    const/4 v2, 0x2

    if-gt p0, v1, :cond_6

    if-eqz p2, :cond_3

    if-lt p3, v2, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    if-nez p2, :cond_5

    if-lez p0, :cond_4

    goto :goto_1

    .line 120
    :cond_4
    return v0

    .line 117
    :cond_5
    :goto_1
    const/4 v0, 0x1

    add-int/2addr v0, p1

    return v0

    .line 114
    :cond_6
    :goto_2
    add-int/2addr v2, p1

    return v2

    .line 111
    :cond_7
    :goto_3
    add-int/2addr v2, p1

    return v2
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 5
    .param p0, "duration"    # J

    .line 260
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 262
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    .line 263
    .end local v2    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 278
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 269
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .line 252
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 254
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .end local v1    # "len":I
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 236
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 238
    .local v2, "len":I
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 239
    .end local v2    # "len":I
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "fieldLen"    # I

    .line 244
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 246
    .local v1, "len":I
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 247
    .end local v1    # "len":I
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 27
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    move-wide/from16 v0, p0

    .line 164
    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 165
    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 168
    :cond_0
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 170
    .local v3, "formatStr":[C
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x20

    if-nez v6, :cond_2

    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, "pos":I
    add-int/lit8 v2, v2, -0x1

    .line 173
    .end local p2    # "fieldLen":I
    .local v2, "fieldLen":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 174
    add-int/lit8 v5, v4, 0x1

    .local v5, "pos":I
    aput-char v7, v3, v4

    .line 173
    .end local v4    # "pos":I
    move v4, v5

    goto :goto_0

    .line 176
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 177
    add-int/lit8 v5, v4, 0x1

    return v5

    .line 181
    .end local v2    # "fieldLen":I
    .end local v4    # "pos":I
    .restart local p2    # "fieldLen":I
    :cond_2
    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 182
    const/16 v4, 0x2b

    .line 188
    .end local p0    # "duration":J
    .local v0, "duration":J
    .local v10, "prefix":C
    :goto_1
    move v10, v4

    goto :goto_2

    .line 184
    .end local v0    # "duration":J
    .end local v10    # "prefix":C
    .restart local p0    # "duration":J
    :cond_3
    const/16 v4, 0x2d

    .line 185
    .local v4, "prefix":C
    neg-long v0, v0

    .end local p0    # "duration":J
    .restart local v0    # "duration":J
    goto :goto_1

    .line 188
    .end local v4    # "prefix":C
    .restart local v10    # "prefix":C
    :goto_2
    const-wide/16 v4, 0x3e8

    rem-long v8, v0, v4

    long-to-int v11, v8

    .line 189
    .local v11, "millis":I
    div-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 190
    .local v4, "seconds":I
    const/4 v5, 0x0

    .local v5, "days":I
    const/4 v6, 0x0

    .local v6, "hours":I
    const/4 v8, 0x0

    .line 192
    .local v8, "minutes":I
    const v9, 0x15180

    if-lt v4, v9, :cond_4

    .line 193
    div-int v5, v4, v9

    .line 194
    mul-int/2addr v9, v5

    sub-int/2addr v4, v9

    .line 196
    .end local v5    # "days":I
    .local v12, "days":I
    :cond_4
    move v12, v5

    const/16 v5, 0xe10

    if-lt v4, v5, :cond_5

    .line 197
    div-int/lit16 v5, v4, 0xe10

    .line 198
    .end local v6    # "hours":I
    .local v5, "hours":I
    mul-int/lit16 v6, v5, 0xe10

    sub-int/2addr v4, v6

    .line 200
    move v13, v5

    goto :goto_3

    .end local v5    # "hours":I
    .restart local v6    # "hours":I
    :cond_5
    move v13, v6

    .end local v6    # "hours":I
    .local v13, "hours":I
    :goto_3
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_6

    .line 201
    div-int/lit8 v5, v4, 0x3c

    .line 202
    .end local v8    # "minutes":I
    .local v5, "minutes":I
    mul-int/lit8 v6, v5, 0x3c

    sub-int/2addr v4, v6

    .line 205
    move v15, v4

    move v14, v5

    goto :goto_4

    .end local v5    # "minutes":I
    .restart local v8    # "minutes":I
    :cond_6
    move v15, v4

    move v14, v8

    .end local v4    # "seconds":I
    .end local v8    # "minutes":I
    .local v14, "minutes":I
    .local v15, "seconds":I
    :goto_4
    const/4 v4, 0x0

    .line 207
    .local v4, "pos":I
    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_b

    .line 208
    invoke-static {v12, v6, v8, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    .line 209
    .local v5, "myLen":I
    if-lez v5, :cond_7

    move v8, v6

    nop

    :cond_7
    invoke-static {v13, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 210
    if-lez v5, :cond_8

    move v8, v6

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v14, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 211
    if-lez v5, :cond_9

    move v8, v6

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-static {v15, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 212
    if-lez v5, :cond_a

    move/from16 v8, v16

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-static {v11, v9, v6, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    .line 213
    :goto_8
    if-ge v5, v2, :cond_b

    .line 214
    aput-char v7, v3, v4

    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 216
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 220
    .end local v5    # "myLen":I
    :cond_b
    aput-char v10, v3, v4

    .line 221
    add-int/lit8 v18, v4, 0x1

    .line 223
    .end local v4    # "pos":I
    .local v18, "pos":I
    move/from16 v8, v18

    .line 224
    .local v8, "start":I
    if-eqz v2, :cond_c

    move v4, v6

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    move/from16 v19, v4

    .line 225
    .local v19, "zeropad":Z
    const/16 v7, 0x64

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v4, v3

    move v5, v12

    move/from16 v22, v6

    move v6, v7

    move/from16 v7, v18

    move/from16 v23, v8

    const/16 v17, 0x0

    move/from16 v8, v20

    .end local v8    # "start":I
    .local v23, "start":I
    move/from16 v20, v9

    move/from16 v9, v21

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 226
    .end local v18    # "pos":I
    .local v9, "pos":I
    const/16 v6, 0x68

    move/from16 v8, v23

    if-eq v9, v8, :cond_d

    .end local v23    # "start":I
    .restart local v8    # "start":I
    move/from16 v18, v22

    goto :goto_a

    :cond_d
    move/from16 v18, v17

    :goto_a
    if-eqz v19, :cond_e

    move/from16 v21, v20

    goto :goto_b

    :cond_e
    move/from16 v21, v17

    :goto_b
    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    move/from16 v8, v18

    .end local v8    # "start":I
    .local v24, "start":I
    move/from16 v18, v9

    move/from16 v9, v21

    .end local v9    # "pos":I
    .restart local v18    # "pos":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 227
    .end local v18    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    move/from16 v8, v24

    if-eq v9, v8, :cond_f

    .end local v24    # "start":I
    .restart local v8    # "start":I
    move/from16 v18, v22

    goto :goto_c

    :cond_f
    move/from16 v18, v17

    :goto_c
    if-eqz v19, :cond_10

    move/from16 v21, v20

    goto :goto_d

    :cond_10
    move/from16 v21, v17

    :goto_d
    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v25, v8

    move/from16 v8, v18

    .end local v8    # "start":I
    .local v25, "start":I
    move/from16 v18, v9

    move/from16 v9, v21

    .end local v9    # "pos":I
    .restart local v18    # "pos":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 228
    .end local v18    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x73

    move/from16 v8, v25

    if-eq v9, v8, :cond_11

    .end local v25    # "start":I
    .restart local v8    # "start":I
    goto :goto_e

    :cond_11
    move/from16 v22, v17

    :goto_e
    if-eqz v19, :cond_12

    goto :goto_f

    :cond_12
    move/from16 v20, v17

    :goto_f
    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v26, v8

    move/from16 v8, v22

    .end local v8    # "start":I
    .local v26, "start":I
    move/from16 v18, v9

    move/from16 v9, v20

    .end local v9    # "pos":I
    .restart local v18    # "pos":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 229
    .end local v18    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v19, :cond_13

    move/from16 v7, v26

    if-eq v9, v7, :cond_14

    .end local v26    # "start":I
    .local v7, "start":I
    goto :goto_10

    .end local v7    # "start":I
    .restart local v26    # "start":I
    :cond_13
    move/from16 v7, v26

    .end local v26    # "start":I
    .restart local v7    # "start":I
    :cond_14
    move/from16 v16, v17

    :goto_10
    move-object v4, v3

    move v5, v11

    move/from16 v17, v7

    move v7, v9

    .end local v7    # "start":I
    .local v17, "start":I
    move/from16 v18, v9

    move/from16 v9, v16

    .end local v9    # "pos":I
    .restart local v18    # "pos":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v4

    .line 230
    .end local v18    # "pos":I
    .restart local v4    # "pos":I
    const/16 v5, 0x73

    aput-char v5, v3, v4

    .line 231
    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 313
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 315
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 283
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 286
    :cond_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 289
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 8
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .line 57
    if-nez p4, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 62
    .local v0, "bias":Landroid/icu/util/TimeZone;
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v1

    .line 63
    move-object v2, p4

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneByCountryAndOffset(Ljava/lang/String;IZJLandroid/icu/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 62
    return-object v1
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 2
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 47
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 4
    .param p0, "millis"    # J

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 303
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    const-string v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 306
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 5
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .line 125
    if-nez p4, :cond_0

    if-lez p1, :cond_a

    .line 126
    :cond_0
    move v0, p3

    .line 127
    .local v0, "startPos":I
    const/16 v1, 0x3e7

    if-le p1, v1, :cond_3

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "tmp":I
    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 130
    rem-int/lit8 v2, p1, 0xa

    .line 131
    .local v2, "dig":I
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    div-int/lit8 p1, p1, 0xa

    .line 134
    .end local v2    # "dig":I
    goto :goto_0

    .line 135
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 136
    :goto_1
    if-ltz v1, :cond_2

    .line 137
    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p3

    .line 138
    add-int/lit8 p3, p3, 0x1

    .line 139
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 141
    .end local v1    # "tmp":I
    :cond_2
    goto :goto_2

    .line 142
    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x3

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x63

    if-le p1, v1, :cond_6

    .line 143
    :cond_5
    div-int/lit8 v1, p1, 0x64

    .line 144
    .local v1, "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 145
    add-int/lit8 p3, p3, 0x1

    .line 146
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 148
    .end local v1    # "dig":I
    :cond_6
    if-eqz p4, :cond_7

    const/4 v1, 0x2

    if-ge p5, v1, :cond_8

    :cond_7
    const/16 v1, 0x9

    if-gt p1, v1, :cond_8

    if-eq v0, p3, :cond_9

    .line 149
    :cond_8
    div-int/lit8 v1, p1, 0xa

    .line 150
    .restart local v1    # "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 151
    add-int/lit8 p3, p3, 0x1

    .line 152
    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    .line 154
    .end local v1    # "dig":I
    :cond_9
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 155
    add-int/lit8 p3, p3, 0x1

    .line 157
    :goto_2
    aput-char p2, p0, p3

    .line 158
    add-int/lit8 p3, p3, 0x1

    .line 160
    .end local v0    # "startPos":I
    :cond_a
    return p3
.end method
