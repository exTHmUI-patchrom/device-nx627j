.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final TAG:Ljava/lang/String; = "DngCreator"

.field private static final TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 475
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 481
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 677
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 678
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 12
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "metadata"    # Landroid/hardware/camera2/CaptureResult;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const-string v0, "UTC"

    .line 478
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 89
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 98
    .local v2, "timeOffset":J
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    .local v4, "timestampSource":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_0

    .line 105
    :cond_0
    if-nez v4, :cond_1

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v0, v5

    goto :goto_0

    .line 111
    :cond_1
    const-string v5, "DngCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensor timestamp source is unexpected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v2, v0, v5

    .line 116
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 117
    .local v5, "timestamp":Ljava/lang/Long;
    move-wide v6, v0

    .line 118
    .local v6, "captureTime":J
    if-eqz v5, :cond_2

    .line 119
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    add-long v6, v8, v2

    .line 124
    :cond_2
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy:MM:dd HH:mm:ss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 126
    .local v8, "dateTimeStampFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "formattedCaptureTime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    invoke-direct {p0, v10, v11, v9}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 133
    return-void

    .line 90
    .end local v0    # "currentTime":J
    .end local v2    # "timeOffset":J
    .end local v4    # "timestampSource":I
    .end local v5    # "timestamp":Ljava/lang/Long;
    .end local v6    # "captureTime":J
    .end local v8    # "dateTimeStampFormat":Ljava/text/DateFormat;
    .end local v9    # "formattedCaptureTime":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to DngCreator constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static colorToRgb(II[B)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .line 541
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 542
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 543
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 545
    return-void
.end method

.method private static convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 15
    .param p0, "argbBitmap"    # Landroid/graphics/Bitmap;

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 612
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 613
    .local v9, "height":I
    const/4 v0, 0x3

    mul-int v1, v0, v8

    mul-int/2addr v1, v9

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 615
    .local v10, "buf":Ljava/nio/ByteBuffer;
    new-array v11, v8, [I

    .line 616
    .local v11, "pixelRow":[I
    mul-int/2addr v0, v8

    new-array v12, v0, [B

    .line 617
    .local v12, "finalRow":[B
    const/4 v13, 0x0

    move v0, v13

    .local v0, "i":I
    :goto_0
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v9, :cond_1

    .line 618
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v5, v14

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 620
    move v0, v13

    .local v0, "j":I
    :goto_1
    if-ge v0, v8, :cond_0

    .line 621
    aget v1, v11, v0

    mul-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2, v12}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    .end local v0    # "j":I
    :cond_0
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 617
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 627
    return-object v10
.end method

.method private static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 29
    .param p0, "yuvImage"    # Landroid/media/Image;

    .line 552
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 553
    .local v0, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 554
    .local v1, "height":I
    const/4 v2, 0x3

    mul-int v3, v2, v0

    mul-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 556
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 557
    .local v4, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 558
    .local v6, "uPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    .line 560
    .local v8, "vPlane":Landroid/media/Image$Plane;
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 561
    .local v10, "yBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 562
    .local v11, "uBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 564
    .local v12, "vBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 565
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 566
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 568
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 569
    .local v13, "yRowStride":I
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 570
    .local v14, "vRowStride":I
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    .line 572
    .local v15, "uRowStride":I
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    .line 573
    .local v16, "yPixStride":I
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    .line 574
    .local v17, "vPixStride":I
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    .line 576
    .local v18, "uPixStride":I
    new-array v9, v2, [B

    fill-array-data v9, :array_0

    .line 577
    .local v9, "yuvPixel":[B
    add-int/lit8 v20, v0, -0x1

    mul-int v20, v20, v16

    add-int/lit8 v5, v20, 0x1

    new-array v5, v5, [B

    .line 578
    .local v5, "yFullRow":[B
    div-int/lit8 v20, v0, 0x2

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v18

    add-int/lit8 v2, v20, 0x1

    new-array v2, v2, [B

    .line 579
    .local v2, "uFullRow":[B
    div-int/lit8 v20, v0, 0x2

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v17

    move-object/from16 v23, v4

    add-int/lit8 v4, v20, 0x1

    .end local v4    # "yPlane":Landroid/media/Image$Plane;
    .local v23, "yPlane":Landroid/media/Image$Plane;
    new-array v4, v4, [B

    .line 580
    .local v4, "vFullRow":[B
    const/16 v20, 0x3

    mul-int v7, v20, v0

    new-array v7, v7, [B

    .line 581
    .local v7, "finalRow":[B
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v25, v20

    .end local v20    # "i":I
    .local v25, "i":I
    move-object/from16 v26, v6

    move/from16 v6, v25

    if-ge v6, v1, :cond_1

    .line 582
    .end local v25    # "i":I
    .local v6, "i":I
    .local v26, "uPlane":Landroid/media/Image$Plane;
    div-int/lit8 v25, v6, 0x2

    .line 583
    .local v25, "halfH":I
    move/from16 v27, v1

    mul-int v1, v13, v6

    .end local v1    # "height":I
    .local v27, "height":I
    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 585
    mul-int v1, v15, v25

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 587
    mul-int v1, v14, v25

    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 589
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 590
    div-int/lit8 v20, v1, 0x2

    .line 591
    .local v20, "halfW":I
    mul-int v22, v16, v1

    aget-byte v22, v5, v22

    const/16 v21, 0x0

    aput-byte v22, v9, v21

    .line 592
    mul-int v22, v18, v20

    aget-byte v22, v2, v22

    const/16 v24, 0x1

    aput-byte v22, v9, v24

    .line 593
    mul-int v22, v17, v20

    aget-byte v22, v4, v22

    const/16 v19, 0x2

    aput-byte v22, v9, v19

    .line 594
    move/from16 v28, v0

    mul-int/lit8 v0, v1, 0x3

    .end local v0    # "width":I
    .local v28, "width":I
    invoke-static {v9, v0, v7}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    .line 589
    .end local v20    # "halfW":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v28

    goto :goto_1

    .line 596
    .end local v1    # "j":I
    .end local v28    # "width":I
    .restart local v0    # "width":I
    :cond_0
    move/from16 v28, v0

    const/16 v19, 0x2

    const/16 v21, 0x0

    const/16 v24, 0x1

    .end local v0    # "width":I
    .restart local v28    # "width":I
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 581
    .end local v25    # "halfH":I
    add-int/lit8 v20, v6, 0x1

    .end local v6    # "i":I
    .local v20, "i":I
    move-object/from16 v6, v26

    move/from16 v1, v27

    goto :goto_0

    .line 599
    .end local v20    # "i":I
    .end local v27    # "height":I
    .end local v28    # "width":I
    .restart local v0    # "width":I
    .local v1, "height":I
    :cond_1
    move/from16 v28, v0

    move/from16 v27, v1

    .end local v0    # "width":I
    .end local v1    # "height":I
    .restart local v27    # "height":I
    .restart local v28    # "width":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 600
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 601
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 602
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 603
    return-object v3

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeDestroy()V
.end method

.method private synchronized native nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native nativeSetOrientation(I)V
.end method

.method private synchronized native nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static toExifLatLong(D)[I
    .locals 7
    .param p0, "value"    # D

    .line 635
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 636
    double-to-int v0, p0

    .line 637
    .local v0, "degrees":I
    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v3

    .line 638
    .end local p0    # "value":D
    .local v1, "value":D
    double-to-int p0, v1

    .line 639
    .local p0, "minutes":I
    int-to-double v3, p0

    sub-double v3, v1, v3

    const-wide v5, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v3, v5

    .line 640
    .end local v1    # "value":D
    .local v3, "value":D
    double-to-int p1, v3

    .line 641
    .local p1, "seconds":I
    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v5, 0x2

    aput p0, v1, v5

    const/4 v5, 0x3

    aput v2, v1, v5

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    const/16 v5, 0x64

    aput v5, v1, v2

    return-object v1
.end method

.method private writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "dngOutput"    # Ljava/io/OutputStream;
    .param p5, "pixelStride"    # I
    .param p6, "rowStride"    # I
    .param p7, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p6

    .line 495
    if-lez v10, :cond_2

    if-lez v11, :cond_2

    .line 499
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v13, v0

    .line 500
    .local v13, "capacity":J
    int-to-long v0, v12

    int-to-long v2, v11

    mul-long/2addr v0, v2

    add-long v7, v0, p7

    .line 501
    .local v7, "totalSize":J
    cmp-long v0, v13, v7

    if-ltz v0, :cond_1

    .line 505
    mul-int v9, p5, v10

    .line 506
    .local v9, "minRowStride":I
    if-gt v9, v12, :cond_0

    .line 510
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 511
    nop

    .line 512
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v16

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v2, v10

    move v3, v11

    move-object/from16 v4, p3

    move v5, v12

    move/from16 v6, p5

    move-wide v10, v7

    move-wide/from16 v7, p7

    .end local v7    # "totalSize":J
    .local v10, "totalSize":J
    move v15, v9

    move/from16 v9, v16

    .end local v9    # "minRowStride":I
    .local v15, "minRowStride":I
    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 514
    return-void

    .line 507
    .end local v10    # "totalSize":J
    .end local v15    # "minRowStride":I
    .restart local v7    # "totalSize":J
    .restart local v9    # "minRowStride":I
    :cond_0
    move-wide v10, v7

    move v15, v9

    .end local v7    # "totalSize":J
    .end local v9    # "minRowStride":I
    .restart local v10    # "totalSize":J
    .restart local v15    # "minRowStride":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image pixel stride, row byte width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is too large, expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    .end local v10    # "totalSize":J
    .end local v15    # "minRowStride":I
    .restart local v7    # "totalSize":J
    :cond_1
    move-wide v10, v7

    .end local v7    # "totalSize":J
    .restart local v10    # "totalSize":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is too small (must be larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    .end local v10    # "totalSize":J
    .end local v13    # "capacity":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image with invalid width, height: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") passed to write"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static yuvToRgb([BI[B)V
    .locals 11
    .param p0, "yuvData"    # [B
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .line 520
    const/16 v0, 0xff

    .line 522
    .local v0, "COLOR_MAX":I
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    .line 523
    .local v1, "y":F
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    .line 524
    .local v2, "cb":F
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    .line 527
    .local v3, "cr":F
    const/high16 v4, 0x43000000    # 128.0f

    sub-float v5, v3, v4

    const v6, 0x3fb374bc    # 1.402f

    mul-float/2addr v6, v5

    add-float/2addr v6, v1

    .line 528
    .local v6, "r":F
    sub-float v5, v2, v4

    const v7, 0x3eb0331e    # 0.34414f

    mul-float/2addr v7, v5

    sub-float v5, v1, v7

    sub-float v7, v3, v4

    const v8, 0x3f36d1e1    # 0.71414f

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    .line 529
    .local v5, "g":F
    sub-float v4, v2, v4

    const v7, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v7, v4

    add-float/2addr v7, v1

    .line 532
    .local v7, "b":F
    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, p1

    .line 533
    add-int/lit8 v8, p1, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, p2, v8

    .line 534
    add-int/lit8 v8, p1, 0x2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v8

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 451
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    .line 452
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 462
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 299
    if-eqz p1, :cond_0

    .line 302
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 303
    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null description passed to setDescription."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 17
    .param p1, "location"    # Landroid/location/Location;

    move-object/from16 v7, p0

    .line 266
    if-eqz p1, :cond_2

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 270
    .local v8, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 271
    .local v10, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    .line 273
    .local v12, "time":J
    invoke-static {v8, v9}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v14

    .line 274
    .local v14, "latTag":[I
    invoke-static {v10, v11}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v15

    .line 275
    .local v15, "longTag":[I
    const-wide/16 v0, 0x0

    cmpl-double v2, v8, v0

    if-ltz v2, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    .line 276
    .local v2, "latRef":Ljava/lang/String;
    :goto_0
    cmpl-double v0, v10, v0

    if-ltz v0, :cond_1

    const-string v0, "E"

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_1
    const-string v0, "W"

    goto :goto_1

    .line 278
    .local v4, "longRef":Ljava/lang/String;
    :goto_2
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 279
    .local v16, "dateTag":Ljava/lang/String;
    iget-object v0, v7, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    const/4 v0, 0x6

    new-array v6, v0, [I

    const/4 v0, 0x0

    iget-object v1, v7, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v0, v6, v0

    const/4 v1, 0x2

    iget-object v3, v7, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    .line 281
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v6, v1

    const/4 v1, 0x3

    aput v0, v6, v1

    const/4 v1, 0x4

    iget-object v3, v7, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    .line 282
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v6, v1

    const/4 v1, 0x5

    aput v0, v6, v1

    .line 283
    .local v6, "timeTag":[I
    move-object v0, v7

    move-object v1, v14

    move-object v3, v15

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 284
    return-object v7

    .line 267
    .end local v2    # "latRef":Ljava/lang/String;
    .end local v4    # "longRef":Ljava/lang/String;
    .end local v6    # "timeTag":[I
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v12    # "time":J
    .end local v14    # "latTag":[I
    .end local v15    # "longTag":[I
    .end local v16    # "dateTag":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null location passed to setLocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .locals 3
    .param p1, "orientation"    # I

    .line 158
    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/16 p1, 0x9

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 169
    return-object p0

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid EXIF orientation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .locals 6
    .param p1, "pixels"    # Landroid/graphics/Bitmap;

    .line 188
    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 193
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 195
    .local v1, "height":I
    const/16 v2, 0x100

    if-gt v0, v2, :cond_0

    if-gt v1, v2, :cond_0

    .line 201
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 202
    .local v2, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 204
    return-object p0

    .line 196
    .end local v2    # "rgbBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail dimensions width,height ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") too large, dimensions must be smaller than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to setThumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .locals 7
    .param p1, "pixels"    # Landroid/media/Image;

    .line 224
    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 229
    .local v0, "format":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 234
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 236
    .local v2, "height":I
    const/16 v3, 0x100

    if-gt v1, v3, :cond_0

    if-gt v2, v3, :cond_0

    .line 242
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 243
    .local v3, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v3, v1, v2}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 245
    return-object p0

    .line 237
    .end local v3    # "rgbBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumbnail dimensions width,height ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") too large, dimensions must be smaller than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Image format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "format":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument to setThumbnail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .locals 11
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    if-eqz p1, :cond_3

    .line 394
    if-eqz p2, :cond_2

    .line 396
    if-eqz p3, :cond_1

    .line 398
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 402
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 403
    .local v9, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 405
    .local v10, "height":I
    const/4 v5, 0x2

    mul-int/lit8 v6, v9, 0x2

    move-object v0, p0

    move v1, v9

    move v2, v10

    move-object v3, p3

    move-object v4, p1

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 407
    return-void

    .line 399
    .end local v9    # "width":I
    .end local v10    # "height":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative offset passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null pixels passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null size passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 13
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "pixels"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    if-eqz p1, :cond_3

    .line 430
    if-eqz p2, :cond_2

    .line 434
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 435
    .local v0, "format":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 439
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 440
    .local v1, "planes":[Landroid/media/Image$Plane;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 444
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 445
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v6

    aget-object v4, v1, v2

    .line 446
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    const-wide/16 v11, 0x0

    .line 445
    move-object v4, p0

    move-object v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 447
    return-void

    .line 441
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Image with no planes passed to writeImage"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    .end local v1    # "planes":[Landroid/media/Image$Plane;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported image format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    .end local v0    # "format":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null pixels to writeImage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null dngOutput to writeImage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .locals 9
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/io/InputStream;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    if-eqz p1, :cond_4

    .line 339
    if-eqz p2, :cond_3

    .line 341
    if-eqz p3, :cond_2

    .line 343
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 347
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 348
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 349
    .local v8, "height":I
    if-lez v0, :cond_0

    if-lez v8, :cond_0

    .line 353
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, v0

    move v5, v8

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 354
    return-void

    .line 350
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size with invalid width, height: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") passed to writeInputStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    .end local v0    # "width":I
    .end local v8    # "height":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative offset passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null pixels passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null size passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null dngOutput passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
