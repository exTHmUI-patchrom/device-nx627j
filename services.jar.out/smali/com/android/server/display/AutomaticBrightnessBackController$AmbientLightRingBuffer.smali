.class final Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessBackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessBackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(JI)V
    .locals 2
    .param p1, "lightSensorRate"    # J
    .param p3, "ambientLightHorizon"    # I

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    int-to-float v0, p3

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    long-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    .line 1283
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1284
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1285
    return-void
.end method

.method private offsetOf(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1383
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1386
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 1387
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_0

    .line 1388
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr p1, v0

    .line 1390
    :cond_0
    return p1

    .line 1384
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    .line 1360
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mEnd:I

    .line 1361
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    .line 1362
    return-void
.end method

.method public getLux(I)F
    .locals 2
    .param p1, "index"    # I

    .line 1288
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .line 1292
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public prune(J)V
    .locals 4
    .param p1, "horizon"    # J

    .line 1326
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_0

    .line 1327
    return-void

    .line 1330
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1331
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr v0, v1

    .line 1332
    .local v0, "next":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v2, :cond_1

    .line 1333
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v0, v2

    .line 1335
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    .line 1343
    goto :goto_1

    .line 1345
    :cond_2
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    .line 1346
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    .line 1347
    .end local v0    # "next":I
    goto :goto_0

    .line 1349
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    aget-wide v0, v0, v1

    cmp-long v0, v0, p1

    if-gez v0, :cond_4

    .line 1350
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    aput-wide p1, v0, v1

    .line 1352
    :cond_4
    return-void
.end method

.method public push(JF)V
    .locals 8
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 1296
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mEnd:I

    .line 1297
    .local v0, "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1298
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    mul-int/lit8 v1, v1, 0x2

    .line 1300
    .local v1, "newSize":I
    new-array v2, v1, [F

    .line 1301
    .local v2, "newRingLux":[F
    new-array v4, v1, [J

    .line 1302
    .local v4, "newRingTime":[J
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v5, v6

    .line 1303
    .local v5, "length":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v7, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1304
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v7, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    if-eqz v6, :cond_0

    .line 1306
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v3, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1307
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1309
    :cond_0
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1310
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1312
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    .line 1313
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    .line 1314
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mStart:I

    .line 1316
    .end local v1    # "newSize":I
    .end local v2    # "newRingLux":[F
    .end local v4    # "newRingTime":[J
    .end local v5    # "length":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v1, v0

    .line 1317
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v1, v0

    .line 1318
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mEnd:I

    .line 1319
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mEnd:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v1, v2, :cond_2

    .line 1320
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mEnd:I

    .line 1322
    :cond_2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    .line 1323
    return-void
.end method

.method public size()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1367
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1368
    const/4 v1, 0x0

    .line 1368
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v2, :cond_2

    .line 1369
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->mCount:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1370
    .local v2, "next":J
    :goto_1
    if-eqz v1, :cond_1

    .line 1371
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1373
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1374
    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1375
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1376
    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1368
    .end local v2    # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1379
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
