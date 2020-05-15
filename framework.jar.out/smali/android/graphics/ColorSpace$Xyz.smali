.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1787
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    .line 1788
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/ColorSpace$1;

    .line 1785
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(F)F
    .locals 3
    .param p0, "x"    # F

    .line 1822
    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 2
    .param p1, "v"    # [F

    .line 1815
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1816
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1817
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1818
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1802
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1797
    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1792
    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 2
    .param p1, "v"    # [F

    .line 1807
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1808
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1809
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1810
    return-object p1
.end method
