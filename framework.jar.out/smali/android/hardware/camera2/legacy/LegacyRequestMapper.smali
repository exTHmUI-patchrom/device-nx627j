.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "LegacyRequestMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .locals 4
    .param p0, "location"    # Landroid/location/Location;

    .line 459
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 612
    packed-switch p0, :pswitch_data_0

    .line 626
    const/4 v0, 0x0

    return-object v0

    .line 623
    :pswitch_0
    const-string v0, "auto"

    return-object v0

    .line 620
    :pswitch_1
    const-string v0, "60hz"

    return-object v0

    .line 617
    :pswitch_2
    const-string v0, "50hz"

    return-object v0

    .line 614
    :pswitch_3
    const-string/jumbo v0, "off"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 632
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 633
    .local v0, "legacyFps":[I
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 634
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 635
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .line 639
    packed-switch p0, :pswitch_data_0

    .line 657
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertAwbModeToLegacy - unrecognized control.awbMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v0, "auto"

    return-object v0

    .line 655
    :pswitch_0
    const-string/jumbo v0, "shade"

    return-object v0

    .line 653
    :pswitch_1
    const-string/jumbo v0, "twilight"

    return-object v0

    .line 651
    :pswitch_2
    const-string v0, "cloudy-daylight"

    return-object v0

    .line 649
    :pswitch_3
    const-string v0, "daylight"

    return-object v0

    .line 647
    :pswitch_4
    const-string/jumbo v0, "warm-fluorescent"

    return-object v0

    .line 645
    :pswitch_5
    const-string v0, "fluorescent"

    return-object v0

    .line 643
    :pswitch_6
    const-string v0, "incandescent"

    return-object v0

    .line 641
    :pswitch_7
    const-string v0, "auto"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "meteringRegions"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "maxNumMeteringAreas"    # I
    .param p4, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 487
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-gtz p3, :cond_0

    goto/16 :goto_2

    .line 496
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v2, "meteringRectangleList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 498
    .local v5, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v6

    if-eqz v6, :cond_1

    .line 499
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v5    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 504
    const-string v3, "LegacyRequestMapper"

    const-string v4, "Only received metering rectangles with weight 0."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-array v0, v0, [Landroid/hardware/Camera$Area;

    sget-object v3, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 509
    :cond_3
    nop

    .line 510
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 511
    .local v0, "countMeteringAreas":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .local v3, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 514
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 516
    .local v4, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    nop

    .line 517
    invoke-static {p0, v4, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    move-result-object v5

    .line 518
    .local v5, "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    iget-object v6, v5, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v4    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v5    # "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 521
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 522
    const-string v1, "LegacyRequestMapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertMeteringRegionsToLegacy - Too many requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " regions, ignoring all beyond the first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_5
    return-object v3

    .line 488
    .end local v0    # "countMeteringAreas":I
    .end local v2    # "meteringRectangleList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    .end local v3    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_6
    :goto_2
    if-lez p3, :cond_7

    .line 489
    new-array v0, v0, [Landroid/hardware/Camera$Area;

    sget-object v2, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 491
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 19
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 60
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 61
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .line 62
    .local v3, "previewSize":Landroid/util/Size;
    iget-object v4, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 64
    .local v4, "params":Landroid/hardware/Camera$Parameters;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 71
    .local v5, "activeArray":Landroid/graphics/Rect;
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 72
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 71
    invoke-static {v5, v6, v3, v4}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v6

    .line 76
    .local v6, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    iget v7, v6, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 88
    :cond_0
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 90
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 88
    invoke-static {v2, v7, v9}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 92
    .local v7, "aberrationMode":I
    const/4 v9, 0x2

    if-eq v7, v8, :cond_1

    if-eq v7, v9, :cond_1

    .line 94
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v7    # "aberrationMode":I
    :cond_1
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 106
    .local v7, "antiBandingMode":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "legacyMode":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v10    # "legacyMode":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v10

    const-string v11, "auto"

    const-string/jumbo v12, "off"

    const-string v13, "50hz"

    const-string v14, "60hz"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 118
    .restart local v10    # "legacyMode":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_3

    .line 119
    invoke-virtual {v4, v10}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 130
    .end local v7    # "antiBandingMode":Ljava/lang/Integer;
    .end local v10    # "legacyMode":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 131
    .local v7, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v10}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 132
    const-string v10, "LegacyRequestMapper"

    const-string v11, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    .line 136
    .local v10, "maxNumMeteringAreas":I
    const-string v11, "AE"

    invoke-static {v5, v6, v7, v10, v11}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 141
    .local v11, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v10, :cond_5

    .line 142
    invoke-virtual {v4, v11}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 148
    .end local v7    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v10    # "maxNumMeteringAreas":I
    .end local v11    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_5
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 149
    .local v7, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v10

    .line 150
    .local v10, "maxNumFocusAreas":I
    const-string v11, "AF"

    invoke-static {v5, v6, v7, v10, v11}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 155
    .local v11, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v10, :cond_6

    .line 156
    invoke-virtual {v4, v11}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 162
    .end local v7    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v10    # "maxNumFocusAreas":I
    .end local v11    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_6
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 163
    .local v7, "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    if-eqz v7, :cond_a

    .line 164
    invoke-static {v7}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    move-result-object v11

    .line 166
    .local v11, "legacyFps":[I
    const/4 v12, 0x0

    .line 167
    .local v12, "rangeToApply":[I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 169
    .local v14, "range":[I
    aget v15, v14, v10

    int-to-double v9, v15

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v16

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    mul-int/lit16 v9, v9, 0x3e8

    .line 170
    .local v9, "intRangeLow":I
    aget v10, v14, v8

    move/from16 v18, v9

    int-to-double v8, v10

    .line 170
    .end local v9    # "intRangeLow":I
    .local v18, "intRangeLow":I
    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    mul-int/lit16 v8, v8, 0x3e8

    .line 171
    .local v8, "intRangeHigh":I
    const/4 v9, 0x0

    aget v10, v11, v9

    move/from16 v9, v18

    if-ne v10, v9, :cond_7

    .line 171
    .end local v18    # "intRangeLow":I
    .restart local v9    # "intRangeLow":I
    const/4 v10, 0x1

    aget v15, v11, v10

    if-ne v15, v8, :cond_7

    .line 172
    move-object v12, v14

    .line 173
    goto :goto_2

    .line 175
    .end local v8    # "intRangeHigh":I
    .end local v9    # "intRangeLow":I
    .end local v14    # "range":[I
    :cond_7
    nop

    .line 167
    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto :goto_1

    .line 176
    :cond_8
    :goto_2
    if-eqz v12, :cond_9

    .line 177
    const/4 v8, 0x0

    aget v9, v12, v8

    const/4 v10, 0x1

    aget v13, v12, v10

    invoke-virtual {v4, v9, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_3

    .line 180
    :cond_9
    const/4 v8, 0x0

    const-string v9, "LegacyRequestMapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported FPS range set ["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v11, v8

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v13, v11, v8

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v11    # "legacyFps":[I
    .end local v12    # "rangeToApply":[I
    :cond_a
    :goto_3
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 191
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 192
    .local v8, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 194
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 192
    invoke-static {v2, v9, v11}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 196
    .local v9, "compensation":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 197
    const-string v10, "LegacyRequestMapper"

    const-string v11, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v9, 0x0

    .line 203
    :cond_b
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 208
    .end local v8    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "compensation":I
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 209
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v11

    .line 210
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 208
    invoke-static {v2, v8, v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 212
    .local v8, "aeLock":Ljava/lang/Boolean;
    if-eqz v8, :cond_c

    .line 213
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 224
    .end local v8    # "aeLock":Ljava/lang/Boolean;
    :cond_c
    invoke-static {v2, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 228
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 229
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 228
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 230
    .local v8, "afMode":I
    nop

    .line 231
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v9

    .line 230
    invoke-static {v8, v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "focusMode":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 234
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 245
    .end local v8    # "afMode":I
    .end local v9    # "focusMode":Ljava/lang/String;
    :cond_d
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 246
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 247
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_e

    move v11, v9

    goto :goto_4

    :cond_e
    const/4 v11, 0x0

    .line 248
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 245
    invoke-static {v2, v8, v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 250
    .local v8, "awbMode":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 251
    .local v9, "whiteBalanceMode":Ljava/lang/String;
    if-eqz v8, :cond_f

    .line 252
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    move-result-object v9

    .line 253
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 264
    .end local v8    # "awbMode":Ljava/lang/Integer;
    .end local v9    # "whiteBalanceMode":Ljava/lang/String;
    :cond_f
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 265
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v11

    .line 266
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 264
    invoke-static {v2, v8, v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 268
    .local v8, "awbLock":Ljava/lang/Boolean;
    if-eqz v8, :cond_10

    .line 269
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 277
    .end local v8    # "awbLock":Ljava/lang/Boolean;
    :cond_10
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 279
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 277
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 281
    .local v8, "captureIntent":I
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v8

    .line 283
    const/4 v9, 0x3

    if-eq v8, v9, :cond_12

    const/4 v9, 0x4

    if-ne v8, v9, :cond_11

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 290
    .end local v8    # "captureIntent":I
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 291
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 292
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v11

    .line 293
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 290
    invoke-static {v2, v8, v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 295
    .local v8, "stabMode":Ljava/lang/Integer;
    if-eqz v8, :cond_14

    .line 296
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/4 v9, 0x1

    goto :goto_7

    :cond_13
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 302
    .end local v8    # "stabMode":Ljava/lang/Integer;
    :cond_14
    nop

    .line 303
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v8

    const-string v9, "infinity"

    invoke-static {v8, v9}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v8

    .line 305
    .local v8, "infinityFocusSupported":Z
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 306
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 305
    invoke-static {v2, v9, v11, v8, v12}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 308
    .local v9, "focusDistance":Ljava/lang/Float;
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v10, v11, v10

    if-eqz v10, :cond_16

    .line 309
    :cond_15
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", only 0.0f is supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v8    # "infinityFocusSupported":Z
    .end local v9    # "focusDistance":Ljava/lang/Float;
    :cond_16
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 320
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 321
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 320
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 323
    .local v8, "controlMode":I
    packed-switch v8, :pswitch_data_0

    .line 342
    const-string v9, "LegacyRequestMapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Control mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is unsupported, defaulting to AUTO"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v11, "auto"

    goto :goto_8

    .line 325
    :pswitch_0
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 326
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 325
    invoke-static {v2, v9, v11}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 327
    .local v9, "sceneMode":I
    nop

    .line 328
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, "legacySceneMode":Ljava/lang/String;
    if-eqz v10, :cond_17

    .line 330
    move-object v11, v10

    .line 330
    .local v11, "modeToSet":Ljava/lang/String;
    goto :goto_8

    .line 332
    .end local v11    # "modeToSet":Ljava/lang/String;
    :cond_17
    const-string v11, "auto"

    .line 333
    .restart local v11    # "modeToSet":Ljava/lang/String;
    const-string v12, "LegacyRequestMapper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping unknown requested scene mode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    goto :goto_8

    .line 338
    .end local v9    # "sceneMode":I
    .end local v10    # "legacySceneMode":Ljava/lang/String;
    .end local v11    # "modeToSet":Ljava/lang/String;
    :pswitch_1
    const-string v11, "auto"

    .line 339
    .restart local v11    # "modeToSet":Ljava/lang/String;
    nop

    .line 344
    :goto_8
    move-object v9, v11

    .line 347
    .end local v11    # "modeToSet":Ljava/lang/String;
    .local v9, "modeToSet":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 353
    .end local v8    # "controlMode":I
    .end local v9    # "modeToSet":Ljava/lang/String;
    :cond_18
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 354
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 355
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 354
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 356
    .local v8, "effectMode":I
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "legacyEffectMode":Ljava/lang/String;
    if-eqz v9, :cond_19

    .line 358
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_9

    .line 360
    :cond_19
    const-string/jumbo v10, "none"

    invoke-virtual {v4, v10}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 361
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping unknown requested effect mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v8    # "effectMode":I
    .end local v9    # "legacyEffectMode":Ljava/lang/String;
    :cond_1a
    :goto_9
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 373
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 372
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 374
    .local v8, "testPatternMode":I
    if-eqz v8, :cond_1b

    .line 375
    const-string v9, "LegacyRequestMapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; only OFF is supported"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v8    # "testPatternMode":I
    :cond_1b
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 387
    .local v8, "location":Landroid/location/Location;
    if-eqz v8, :cond_1d

    .line 388
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 389
    invoke-virtual {v8}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 390
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 391
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 392
    invoke-virtual {v8}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    goto :goto_a

    .line 395
    :cond_1c
    const-string v9, "LegacyRequestMapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incomplete GPS parameters provided in location "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 398
    :cond_1d
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 404
    .end local v8    # "location":Landroid/location/Location;
    :goto_a
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 405
    .local v8, "orientation":Ljava/lang/Integer;
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 406
    if-nez v8, :cond_1e

    const/4 v10, 0x0

    goto :goto_b

    :cond_1e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 405
    invoke-static {v2, v9, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 411
    .end local v8    # "orientation":Ljava/lang/Integer;
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 412
    const/16 v9, 0x55

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    .line 411
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    const/16 v10, 0xff

    and-int/2addr v8, v10

    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 417
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 418
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    .line 417
    invoke-static {v2, v8, v9}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    and-int/2addr v8, v10

    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 423
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v8

    .line 425
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v8, :cond_24

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_24

    .line 426
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    .line 427
    .local v9, "s":Landroid/util/Size;
    if-nez v9, :cond_20

    :cond_1f
    const/4 v10, 0x0

    goto :goto_c

    .line 428
    :cond_20
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    .line 427
    invoke-static {v8, v10, v11}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    move-result v10

    if-nez v10, :cond_1f

    const/4 v10, 0x1

    .line 429
    .local v10, "invalidSize":Z
    :goto_c
    if-eqz v10, :cond_21

    .line 430
    const-string v11, "LegacyRequestMapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid JPEG thumbnail size set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", skipping thumbnail..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_21
    if-eqz v9, :cond_23

    if-eqz v10, :cond_22

    goto :goto_d

    .line 436
    :cond_22
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 436
    .end local v8    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v9    # "s":Landroid/util/Size;
    .end local v10    # "invalidSize":Z
    goto :goto_e

    .line 434
    .restart local v8    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v9    # "s":Landroid/util/Size;
    .restart local v10    # "invalidSize":Z
    :cond_23
    :goto_d
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v11}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 446
    .end local v8    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v9    # "s":Landroid/util/Size;
    .end local v10    # "invalidSize":Z
    :cond_24
    :goto_e
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 448
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 446
    invoke-static {v2, v8, v10}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 450
    .local v8, "mode":I
    if-eq v8, v9, :cond_25

    const/4 v9, 0x2

    if-eq v8, v9, :cond_25

    .line 452
    const-string v9, "LegacyRequestMapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v8    # "mode":I
    :cond_25
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static filterSupportedCaptureIntent(I)I
    .locals 3
    .param p0, "captureIntent"    # I

    .line 463
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    const/4 p0, 0x1

    .line 473
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :pswitch_1
    goto :goto_1

    .line 476
    :goto_0
    const/4 p0, 0x1

    .line 477
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    .line 676
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "allowedValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 678
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_1

    .line 679
    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    const-string v1, "LegacyRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported; ignoring requested value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 685
    :cond_1
    return-object v0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .line 536
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 537
    .local v0, "flashMode":I
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v3}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 539
    .local v1, "aeMode":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 541
    .local v3, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 544
    .local v4, "flashModeSetting":Ljava/lang/String;
    const-string/jumbo v5, "off"

    invoke-static {v3, v5}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 545
    const-string/jumbo v4, "off"

    .line 553
    :cond_0
    const/4 v5, 0x2

    if-ne v1, v2, :cond_4

    .line 554
    if-ne v0, v5, :cond_2

    .line 555
    const-string/jumbo v2, "torch"

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    const-string/jumbo v4, "torch"

    goto :goto_0

    .line 558
    :cond_1
    const-string v2, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_2
    if-ne v0, v2, :cond_a

    .line 562
    const-string/jumbo v2, "on"

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    const-string/jumbo v4, "on"

    goto :goto_0

    .line 565
    :cond_3
    const-string v2, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 572
    const-string/jumbo v2, "on"

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 573
    const-string/jumbo v4, "on"

    goto :goto_0

    .line 575
    :cond_5
    const-string v2, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_6
    if-ne v1, v5, :cond_8

    .line 579
    const-string v2, "auto"

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 580
    const-string v4, "auto"

    goto :goto_0

    .line 582
    :cond_7
    const-string v2, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_8
    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 586
    const-string/jumbo v2, "red-eye"

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 587
    const-string/jumbo v4, "red-eye"

    goto :goto_0

    .line 589
    :cond_9
    const-string v2, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_a
    :goto_0
    if-eqz v4, :cond_b

    .line 597
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 606
    :cond_b
    return-void
.end method
