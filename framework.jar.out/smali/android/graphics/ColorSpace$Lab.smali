.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field private static final D:F = 0.20689656f


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1838
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    .line 1839
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/ColorSpace$1;

    .line 1831
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1898
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 14
    .param p1, "v"    # [F

    .line 1878
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v2

    aget v2, v2, v0

    div-float/2addr v1, v2

    .line 1879
    .local v1, "X":F
    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v4

    aget v4, v4, v2

    div-float/2addr v3, v4

    .line 1880
    .local v3, "Y":F
    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v6

    aget v6, v6, v4

    div-float/2addr v5, v6

    .line 1882
    .local v5, "Z":F
    const v6, 0x3c111aa7

    cmpl-float v7, v1, v6

    const v8, 0x3e0d3dcb

    const v9, 0x40f92f68

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v7, :cond_0

    float-to-double v12, v1

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v7, v12

    goto :goto_0

    :cond_0
    mul-float v7, v9, v1

    add-float/2addr v7, v8

    .line 1883
    .local v7, "fx":F
    :goto_0
    cmpl-float v12, v3, v6

    if-lez v12, :cond_1

    float-to-double v12, v3

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    goto :goto_1

    :cond_1
    mul-float v12, v9, v3

    add-float/2addr v12, v8

    .line 1884
    .local v12, "fy":F
    :goto_1
    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    float-to-double v8, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    goto :goto_2

    :cond_2
    mul-float/2addr v9, v5

    add-float v6, v9, v8

    .line 1886
    .local v6, "fz":F
    :goto_2
    const/high16 v8, 0x42e80000    # 116.0f

    mul-float/2addr v8, v12

    const/high16 v9, 0x41800000    # 16.0f

    sub-float/2addr v8, v9

    .line 1887
    .local v8, "L":F
    const/high16 v9, 0x43fa0000    # 500.0f

    sub-float v10, v7, v12

    mul-float/2addr v9, v10

    .line 1888
    .local v9, "a":F
    const/high16 v10, 0x43480000    # 200.0f

    sub-float v11, v12, v6

    mul-float/2addr v10, v11

    .line 1890
    .local v10, "b":F
    const/4 v11, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v8, v11, v13}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v11

    aput v11, p1, v0

    .line 1891
    const/high16 v0, 0x43000000    # 128.0f

    const/high16 v11, -0x3d000000    # -128.0f

    invoke-static {v9, v11, v0}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v13

    aput v13, p1, v2

    .line 1892
    invoke-static {v10, v11, v0}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v0

    aput v0, p1, v4

    .line 1894
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1853
    if-nez p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43000000    # 128.0f

    :goto_0
    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1848
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d000000    # -128.0f

    :goto_0
    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1843
    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 11
    .param p1, "v"    # [F

    .line 1858
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 1859
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, 0x43000000    # 128.0f

    const/high16 v4, -0x3d000000    # -128.0f

    invoke-static {v2, v4, v3}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 1860
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v4, v3}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 1862
    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 1863
    .local v3, "fy":F
    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 1864
    .local v4, "fx":F
    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 1865
    .local v5, "fz":F
    const v6, 0x3e53dcb1

    cmpl-float v7, v4, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_0

    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    goto :goto_0

    :cond_0
    sub-float v7, v4, v8

    mul-float/2addr v7, v9

    .line 1866
    .local v7, "X":F
    :goto_0
    cmpl-float v10, v3, v6

    if-lez v10, :cond_1

    mul-float v10, v3, v3

    mul-float/2addr v10, v3

    goto :goto_1

    :cond_1
    sub-float v10, v3, v8

    mul-float/2addr v10, v9

    .line 1867
    .local v10, "Y":F
    :goto_1
    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    mul-float v6, v5, v5

    mul-float/2addr v6, v5

    goto :goto_2

    :cond_2
    sub-float v6, v5, v8

    mul-float/2addr v6, v9

    .line 1869
    .local v6, "Z":F
    :goto_2
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v8

    aget v8, v8, v0

    mul-float/2addr v8, v7

    aput v8, p1, v0

    .line 1870
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float/2addr v0, v10

    aput v0, p1, v1

    .line 1871
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v6

    aput v0, p1, v2

    .line 1873
    return-object p1
.end method
