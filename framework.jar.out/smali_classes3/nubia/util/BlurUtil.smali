.class public Lnubia/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field public static final BLUR_RADIUS_100:I = 0x5a

.field public static final BLUR_RADIUS_25:I = 0x5a

.field public static final BLUR_RADIUS_DEFAULT:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BlurUtil"

.field private static final mSurpportBlurRadius:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    .line 27
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void

    :array_0
    .array-data 4
        0x5a
        0xa
        0x5a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # I

    .line 143
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 144
    .local v0, "wallpaperManager":Landroid/app/WallpaperManager;
    const/16 v1, 0x5a

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/WallpaperManager;->clipBlurWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static doArcBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcBmp"    # Landroid/graphics/Bitmap;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 156
    .local v1, "bmpWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 157
    .local v2, "bmpHeight":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 159
    const v4, 0x424242

    .line 160
    .local v4, "color":I
    const v5, 0x424242

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x306002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 164
    .local v5, "arcHeight":F
    mul-int v6, v1, v1

    int-to-float v6, v6

    const/high16 v7, 0x3e000000    # 0.125f

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v6, v5

    .line 165
    .local v6, "radius":F
    int-to-float v7, v1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 166
    .local v7, "cx":F
    int-to-float v8, v2

    add-float/2addr v8, v6

    sub-float/2addr v8, v5

    .line 167
    .local v8, "cy":F
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {v3, v7, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    return-object p1
.end method

.method public static doBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 136
    int-to-float v0, p2

    invoke-static {p1, v0}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "raidus"    # F

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "radius"    # F
    .param p3, "color"    # I

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 114
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v4, v4

    .line 115
    .local v4, "height":I
    div-float/2addr p2, p1

    .line 117
    if-le v2, v3, :cond_2

    if-gt v4, v3, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0, v2, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    invoke-static {v0, p2, p3}, Lnubia/util/BlurUtil;->getBlurEffect(Landroid/graphics/Bitmap;FI)V

    .line 125
    return-object v0

    .line 119
    :cond_2
    :goto_0
    const-string v3, "BlurUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GaussianBlurEffect error width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v1

    .line 109
    .end local v2    # "width":I
    .end local v4    # "height":I
    :cond_3
    :goto_1
    const-string v2, "BlurUtil"

    const-string v3, "doBlur ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v1
.end method

.method public static doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "color"    # I

    .line 90
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 91
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 92
    sget-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {p0, v0, v2, p2}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native getBlurEffect(Landroid/graphics/Bitmap;FI)V
.end method

.method private static getInnerRadiusByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .line 70
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 71
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 72
    sget-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    int-to-float v0, v0

    return v0

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    const/16 v0, 0x5a

    invoke-static {v0}, Lnubia/util/BlurUtil;->getInnerRadiusByBlurRadius(I)F

    move-result v0

    return v0
.end method

.method public static getInnerScaleByBlurRadius(I)F
    .locals 3
    .param p0, "radius"    # I

    .line 60
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 61
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 62
    sget-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    return v0

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    const/16 v0, 0x5a

    invoke-static {v0}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v0

    return v0
.end method

.method private static getSurpportBlurRadius()[I
    .locals 5

    .line 36
    sget-object v0, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v0, v0

    .line 37
    .local v0, "length":I
    new-array v1, v0, [I

    .line 39
    .local v1, "radiusArray":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 40
    sget-object v4, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    aput v4, v1, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private static isSurpportBlurRadius(I)Z
    .locals 3
    .param p0, "radius"    # I

    .line 47
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 48
    sget-object v2, Lnubia/util/BlurUtil;->mSurpportBlurRadius:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p0, v2, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
