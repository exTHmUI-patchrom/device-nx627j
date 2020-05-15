.class public Landroid/hardware/camera2/legacy/ParameterUtils;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;,
        Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;,
        Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:D = 0.05000000074505806

.field public static final CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

.field private static final DEBUG:Z = false

.field public static final NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

.field public static final NORMALIZED_RECTANGLE_MAX:I = 0x3e8

.field public static final NORMALIZED_RECTANGLE_MIN:I = -0x3e8

.field public static final RECTANGLE_EMPTY:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "ParameterUtils"

.field private static final ZOOM_RATIO_MULTIPLIER:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    const/16 v2, -0x3e8

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static containsSize(Ljava/util/List;II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)Z"
        }
    .end annotation

    .line 273
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizeList must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 275
    .local v1, "s":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, p2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, p1, :cond_0

    .line 276
    const/4 v0, 0x1

    return v0

    .line 278
    .end local v1    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 1
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;

    .line 895
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v0

    return-object v0
.end method

.method private static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 11
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;
    .param p3, "usePreviewCrop"    # Z

    .line 958
    iget-object v0, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    .line 959
    .local v0, "previewCrop":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    .line 961
    .local v1, "reportedCrop":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v4

    .line 963
    .local v2, "scaleW":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 970
    .local v5, "scaleH":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 973
    .local v3, "transform":Landroid/graphics/Matrix;
    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 976
    invoke-virtual {v3, v2, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 979
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 981
    if-eqz p3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 984
    .local v4, "cropToIntersectAgainst":Landroid/graphics/Rect;
    :goto_0
    iget-object v6, p2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 987
    .local v6, "reportedMetering":Landroid/graphics/Rect;
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 988
    sget-object v7, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 991
    :cond_1
    iget v7, p2, Landroid/hardware/Camera$Area;->weight:I

    .line 992
    .local v7, "weight":I
    if-gez v7, :cond_2

    .line 993
    const-string v8, "ParameterUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertCameraAreaToMeteringRectangle - rectangle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-static {p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has too small weight, clip to 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 993
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v7, 0x0

    .line 999
    :cond_2
    new-instance v8, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    iget v9, p2, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct {v8, v6, v9}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v8
.end method

.method private static convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 6
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "usePreviewCrop"    # Z

    .line 944
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 945
    .local v0, "pointedRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/hardware/Camera$Area;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 947
    .local v1, "pointedArea":Landroid/hardware/Camera$Area;
    nop

    .line 948
    invoke-static {p0, p1, v1, p3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v2

    .line 951
    .local v2, "adjustedRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, v2, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v2, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 953
    .local v3, "transformedPoint":Landroid/graphics/Point;
    return-object v3
.end method

.method public static convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;
    .locals 8
    .param p0, "face"    # Landroid/hardware/Camera$Face;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    .line 914
    const-string v0, "face must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v0, Landroid/hardware/Camera$Area;

    iget-object v1, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 920
    .local v0, "fakeArea":Landroid/hardware/Camera$Area;
    nop

    .line 921
    invoke-static {p1, p2, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v1

    .line 923
    .local v1, "faceRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v3, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .local v3, "leftEye":Landroid/graphics/Point;
    iget-object v4, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .local v4, "rightEye":Landroid/graphics/Point;
    iget-object v5, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 924
    .local v5, "mouth":Landroid/graphics/Point;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget v6, v3, Landroid/graphics/Point;->x:I

    const/16 v7, -0x7d0

    if-eq v6, v7, :cond_0

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Point;->y:I

    if-eq v6, v7, :cond_0

    .line 927
    invoke-static {p1, p2, v3, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v3

    .line 929
    invoke-static {p1, p2, v3, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v4

    .line 931
    invoke-static {p1, p2, v3, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v5

    .line 934
    iget v2, p0, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;

    move-result-object v2

    .local v2, "api2Face":Landroid/hardware/camera2/params/Face;
    goto :goto_0

    .line 936
    .end local v2    # "api2Face":Landroid/hardware/camera2/params/Face;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace()Landroid/hardware/camera2/params/Face;

    move-result-object v2

    .line 939
    .restart local v2    # "api2Face":Landroid/hardware/camera2/params/Face;
    :goto_0
    return-object v2
.end method

.method public static convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .locals 11
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "meteringRect"    # Landroid/hardware/camera2/params/MeteringRectangle;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    .line 802
    iget-object v0, p2, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    .line 804
    .local v0, "previewCrop":Landroid/graphics/Rect;
    nop

    .line 805
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float v1, v2, v1

    .line 806
    .local v1, "scaleW":F
    nop

    .line 807
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 809
    .local v2, "scaleH":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 812
    .local v3, "transform":Landroid/graphics/Matrix;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 814
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 816
    const/high16 v4, -0x3b860000    # -1000.0f

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 822
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 828
    .local v4, "normalizedRegionUnbounded":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 831
    .local v5, "normalizedIntersected":Landroid/graphics/Rect;
    sget-object v6, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 832
    const-string v6, "ParameterUtils"

    const-string v8, "convertMeteringRectangleToLegacy - metering rectangle too small, no metering will be done"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget-object v6, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 836
    new-instance v6, Landroid/hardware/Camera$Area;

    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-direct {v6, v8, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .local v6, "meteringArea":Landroid/hardware/Camera$Area;
    goto :goto_0

    .line 839
    .end local v6    # "meteringArea":Landroid/hardware/Camera$Area;
    :cond_0
    new-instance v6, Landroid/hardware/Camera$Area;

    .line 840
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v8

    invoke-direct {v6, v5, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 846
    .restart local v6    # "meteringArea":Landroid/hardware/Camera$Area;
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 847
    .local v8, "previewMetering":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 848
    sget-object v9, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 858
    :cond_1
    new-instance v9, Landroid/hardware/Camera$Area;

    .line 859
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v10

    invoke-direct {v9, v4, v10}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 860
    .local v9, "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    invoke-static {p0, p2, v9, v7}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v7

    .line 862
    .local v7, "reportedMeteringRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v7, v7, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    .line 875
    .end local v9    # "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    .local v7, "reportedMetering":Landroid/graphics/Rect;
    new-instance v9, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    invoke-direct {v9, v6, v8, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;-><init>(Landroid/hardware/Camera$Area;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v9
.end method

.method public static convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .locals 9
    .param p0, "activeArraySize"    # Landroid/graphics/Rect;
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .line 751
    new-instance v1, Landroid/graphics/Rect;

    .line 753
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 755
    .local v1, "activeArraySizeOnly":Landroid/graphics/Rect;
    move-object v0, p1

    .line 757
    .local v0, "userCropRegion":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 758
    move-object v0, v1

    .line 765
    .end local v0    # "userCropRegion":Landroid/graphics/Rect;
    .local v6, "userCropRegion":Landroid/graphics/Rect;
    :cond_0
    move-object v6, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 766
    .local v7, "reportedCropRegion":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 767
    .local v8, "previewCropRegion":Landroid/graphics/Rect;
    move-object v0, p3

    move-object v2, p2

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Landroid/hardware/camera2/legacy/ParameterUtils;->getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 778
    .local v0, "zoomIdx":I
    new-instance v2, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    invoke-direct {v2, v0, v8, v7}, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method public static convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;
    .locals 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .line 237
    const-string/jumbo v0, "size must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static convertSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 246
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizeList must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 250
    .local v2, "s":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/util/Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "s":Landroid/hardware/Camera$Size;
    goto :goto_0

    .line 252
    :cond_0
    return-object v0
.end method

.method public static convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 259
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizeList must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Size;

    .line 262
    .local v0, "array":[Landroid/util/Size;
    const/4 v1, 0x0

    .line 263
    .local v1, "ctr":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 264
    .local v3, "s":Landroid/hardware/Camera$Size;
    add-int/lit8 v4, v1, 0x1

    .line 264
    .local v4, "ctr":I
    new-instance v5, Landroid/util/Size;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    aput-object v5, v0, v1

    .line 265
    .end local v1    # "ctr":I
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    nop

    .line 263
    move v1, v4

    goto :goto_0

    .line 266
    .end local v4    # "ctr":I
    .restart local v1    # "ctr":I
    :cond_0
    return-object v0
.end method

.method private static getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 9
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 650
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v0, "activeArray must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string/jumbo v0, "streamSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-static {p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 659
    .local v0, "unzoomedStreamCrop":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 664
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 665
    .local v1, "zoomCropRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 666
    .local v2, "scaleMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 668
    .local v3, "scaledRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 669
    .local v5, "zoom":I
    const/high16 v6, 0x42c80000    # 100.0f

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 672
    .local v6, "shrinkRatio":F
    invoke-static {v0, v3}, Landroid/hardware/camera2/utils/ParamsUtils;->convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 674
    nop

    .line 676
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 677
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 674
    invoke-virtual {v2, v6, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 679
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 681
    invoke-static {v3}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v7

    .line 684
    .local v7, "intRect":Landroid/graphics/Rect;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v5    # "zoom":I
    .end local v6    # "shrinkRatio":F
    .end local v7    # "intRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 687
    :cond_1
    return-object v1
.end method

.method public static getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 623
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v0, "activeArray must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v0, "previewSize must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 593
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v0, "activeArray must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p1}, Landroid/hardware/camera2/utils/ParamsUtils;->createSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 19
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .param p3, "cropRegion"    # Landroid/graphics/Rect;
    .param p4, "reportedCropRegion"    # Landroid/graphics/Rect;
    .param p5, "previewCropRegion"    # Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 378
    move-object/from16 v2, p5

    const-string/jumbo v3, "params must not be null"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v3, "activeArray must not be null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v3, "streamSize must not be null"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v3, "reportedCropRegion must not be null"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v3, "previewCropRegion must not be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v6, p3

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 389
    .local v3, "actualCrop":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 390
    const-string v7, "ParameterUtils"

    const-string v8, "getClosestAvailableZoomCrop - Crop region out of range; setting to active array size"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    :cond_0
    invoke-static/range {p1 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v7

    .line 398
    .local v7, "previewCrop":Landroid/graphics/Rect;
    nop

    .line 399
    invoke-static {v7, v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 412
    .local v8, "cropRegionAsPreview":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 413
    .local v9, "bestReportedCropRegion":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 414
    .local v10, "bestPreviewCropRegion":Landroid/graphics/Rect;
    const/4 v11, -0x1

    .line 416
    .local v11, "bestZoomIndex":I
    nop

    .line 417
    invoke-static/range {p0 .. p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v12

    .line 418
    .local v12, "availableReportedCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    nop

    .line 419
    invoke-static/range {p0 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    move-result-object v13

    .line 430
    .local v13, "availablePreviewCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 434
    move-object v15, v10

    move-object v10, v9

    const/4 v9, 0x0

    .line 434
    .local v9, "i":I
    .local v10, "bestReportedCropRegion":Landroid/graphics/Rect;
    .local v15, "bestPreviewCropRegion":Landroid/graphics/Rect;
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, -0x1

    if-ge v9, v14, :cond_3

    .line 435
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 436
    .local v14, "currentPreviewCropRegion":Landroid/graphics/Rect;
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 439
    .local v16, "currentReportedCropRegion":Landroid/graphics/Rect;
    if-ne v11, v0, :cond_1

    .line 440
    const/16 v17, 0x1

    .line 445
    .local v17, "isBest":Z
    move-object/from16 v18, v3

    move/from16 v0, v17

    goto :goto_1

    .line 441
    .end local v17    # "isBest":Z
    :cond_1
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    move-object/from16 v18, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 441
    .end local v3    # "actualCrop":Landroid/graphics/Rect;
    .local v18, "actualCrop":Landroid/graphics/Rect;
    if-lt v0, v3, :cond_2

    .line 442
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 443
    const/4 v0, 0x1

    .line 443
    .local v0, "isBest":Z
    goto :goto_1

    .line 445
    .end local v0    # "isBest":Z
    :cond_2
    const/4 v0, 0x0

    .line 451
    .restart local v0    # "isBest":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 452
    move-object v15, v14

    .line 453
    move-object/from16 v10, v16

    .line 454
    move v11, v9

    .line 434
    .end local v0    # "isBest":Z
    .end local v14    # "currentPreviewCropRegion":Landroid/graphics/Rect;
    .end local v16    # "currentReportedCropRegion":Landroid/graphics/Rect;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v18

    move-object/from16 v0, p1

    goto :goto_0

    .line 460
    .end local v9    # "i":I
    .end local v18    # "actualCrop":Landroid/graphics/Rect;
    .restart local v3    # "actualCrop":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v18, v3

    .line 460
    .end local v3    # "actualCrop":Landroid/graphics/Rect;
    .restart local v18    # "actualCrop":Landroid/graphics/Rect;
    :cond_4
    const/4 v0, -0x1

    if-eq v11, v0, :cond_5

    .line 466
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 467
    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 469
    return v11

    .line 462
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Should\'ve found at least one valid zoom index"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 431
    .end local v15    # "bestPreviewCropRegion":Landroid/graphics/Rect;
    .end local v18    # "actualCrop":Landroid/graphics/Rect;
    .restart local v3    # "actualCrop":Landroid/graphics/Rect;
    .local v9, "bestReportedCropRegion":Landroid/graphics/Rect;
    .local v10, "bestPreviewCropRegion":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v18, v3

    .line 431
    .end local v3    # "actualCrop":Landroid/graphics/Rect;
    .restart local v18    # "actualCrop":Landroid/graphics/Rect;
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "available reported/preview crop region size mismatch"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 286
    const-string/jumbo v0, "params must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public static getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 700
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 701
    return v1

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 705
    .local v0, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 706
    .local v2, "zoom":I
    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v3, v1

    .line 708
    .local v3, "zoomRatio":F
    return v3
.end method

.method private static getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "previewSize"    # Landroid/util/Size;

    .line 493
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 499
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 500
    .local v0, "aspectRatioArray":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 503
    .local v2, "aspectRatioPreview":F
    sub-float v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 505
    .local v1, "cropH":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 505
    .local v3, "cropW":F
    :goto_0
    goto :goto_1

    .line 506
    .end local v1    # "cropH":F
    .end local v3    # "cropW":F
    :cond_0
    cmpg-float v1, v2, v0

    if-gez v1, :cond_1

    .line 508
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 509
    .restart local v1    # "cropH":F
    mul-float v3, v1, v2

    goto :goto_0

    .line 512
    .end local v1    # "cropH":F
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v3, v1

    .line 513
    .restart local v3    # "cropW":F
    div-float v1, v3, v2

    .line 516
    .restart local v1    # "cropH":F
    :goto_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 517
    .local v4, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 520
    .local v5, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 521
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 523
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 526
    invoke-static {v5}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 496
    .end local v0    # "aspectRatioArray":F
    .end local v1    # "cropH":F
    .end local v2    # "aspectRatioPreview":F
    .end local v3    # "cropW":F
    .end local v4    # "translateMatrix":Landroid/graphics/Matrix;
    .end local v5    # "cropRect":Landroid/graphics/RectF;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "previewSize must not be taller than activeArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "previewSize must not be wider than activeArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getZoomRatio(Landroid/util/Size;Landroid/util/Size;)Landroid/util/SizeF;
    .locals 3
    .param p0, "activeArraySize"    # Landroid/util/Size;
    .param p1, "cropSize"    # Landroid/util/Size;

    .line 724
    const-string v0, "activeArraySize must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v0, "cropSize must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string v1, "cropSize.width must be positive"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 727
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "cropSize.height must be positive"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 729
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 730
    .local v0, "zoomRatioWidth":F
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 732
    .local v2, "zoomRatioHeight":F
    new-instance v1, Landroid/util/SizeF;

    invoke-direct {v1, v0, v2}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method private static shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "reference"    # Landroid/graphics/Rect;
    .param p1, "shrinkTarget"    # Landroid/graphics/Rect;

    .line 543
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 544
    .local v0, "aspectRatioReference":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 547
    .local v2, "aspectRatioShrinkTarget":F
    cmpg-float v1, v2, v0

    if-gez v1, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 550
    .local v1, "cropH":F
    mul-float v3, v1, v2

    .local v3, "cropW":F
    goto :goto_0

    .line 553
    .end local v1    # "cropH":F
    .end local v3    # "cropW":F
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v3, v1

    .line 554
    .restart local v3    # "cropW":F
    div-float v1, v3, v2

    .line 557
    .restart local v1    # "cropH":F
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 558
    .local v4, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 561
    .local v5, "shrunkRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v1, v7

    .line 562
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 561
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 564
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 566
    invoke-static {v5}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6
.end method

.method public static stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;
    .locals 4
    .param p0, "area"    # Landroid/hardware/Camera$Area;

    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 302
    .local v1, "r":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    const-string v2, "(["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stringFromAreaList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 320
    .local p0, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 323
    const/4 v1, 0x0

    return-object v1

    .line 326
    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Area;

    .line 328
    .local v3, "area":Landroid/hardware/Camera$Area;
    if-nez v3, :cond_1

    .line 329
    const-string/jumbo v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    :cond_1
    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    .line 335
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 339
    .end local v3    # "area":Landroid/hardware/Camera$Area;
    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
