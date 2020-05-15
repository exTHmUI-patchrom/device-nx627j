.class public Lnubia/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# static fields
.field private static final sAlphaShift:I = 0x18

.field private static sCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sDensities:[I

.field private static sDensity:I = 0x0

.field private static sExcludeAll:Ljava/lang/Boolean; = null

.field private static sExcludes:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I = 0x0

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconWidth:I = 0x0

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPathPrefix:Ljava/lang/String; = "/data/theme/customized_icons/"

.field private static final sRGBMask:I = 0xffffff

.field private static final sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    const/4 v0, 0x0

    sput v0, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 50
    sput v0, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 51
    sput v0, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 59
    sget-object v1, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 60
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-static {v1}, Lnubia/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v1

    sput-object v1, Lnubia/content/res/IconCustomizer;->sDensities:[I

    .line 62
    const/16 v1, 0x48

    invoke-static {v1}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v2

    sput v2, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 63
    invoke-static {v1}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v1

    sput v1, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    sput-object v1, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 67
    sget-object v1, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    .line 71
    const-string v1, "sys.ui.app-icon-background"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 73
    sget-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.browser"

    const-string v2, "cn.nubia.browser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "cn.nubia.collaborationapplication"

    const-string v2, "cn.nubia.neostore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .line 87
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    monitor-enter v0

    .line 88
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    .line 89
    sget-object v1, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string p0, "/data/theme/customized_icons/"

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/theme/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme/customized_icons/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "iconsFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, "icons":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 109
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "icons":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 126
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 127
    .local v11, "height":I
    mul-int v0, v10, v11

    new-array v12, v0, [I

    .line 128
    .local v12, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v3, v10

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    invoke-static {v10, v11, v12}, Lnubia/content/res/IconCustomizer;->cutEdge(II[I)V

    .line 133
    sget v0, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    sget v1, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 135
    .local v13, "customBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v14, v0

    .line 137
    .local v14, "canvas":Landroid/graphics/Canvas;
    const-string v0, "icon_background.png"

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 138
    .local v15, "background":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v15, :cond_0

    .line 139
    invoke-virtual {v14, v15, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    :cond_0
    const-string v0, "icon_pattern.png"

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 143
    .local v7, "pattern":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 144
    invoke-virtual {v14, v7, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    :cond_1
    const/4 v2, 0x0

    sget v0, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    sub-int/2addr v0, v10

    div-int/lit8 v4, v0, 0x2

    sget v0, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    sub-int/2addr v0, v11

    div-int/lit8 v5, v0, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v14

    move-object v1, v12

    move v3, v10

    move v6, v10

    move-object/from16 v18, v7

    move v7, v11

    .end local v7    # "pattern":Landroid/graphics/Bitmap;
    .local v18, "pattern":Landroid/graphics/Bitmap;
    move/from16 v8, v16

    move/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v17

    .end local v10    # "width":I
    .local v19, "width":I
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 150
    const-string v0, "icon_border.png"

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "border":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    :cond_2
    return-object v13
.end method

.method private static cutEdge(II[I)V
    .locals 12
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixels"    # [I

    .line 168
    const-string v0, "icon_mask.png"

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "iconMask":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 171
    .local v9, "iconMaskWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 173
    .local v10, "iconMaskHeight":I
    if-lt v9, p0, :cond_0

    if-lt v10, p1, :cond_0

    .line 174
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 175
    .local v11, "iconMaskPixels":[I
    const/4 v3, 0x0

    sub-int v1, v9, p0

    div-int/lit8 v5, v1, 0x2

    sub-int v1, v10, p1

    div-int/lit8 v6, v1, 0x2

    move-object v1, v0

    move-object v2, v11

    move v4, p0

    move v7, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 178
    mul-int v1, p0, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 179
    aget v2, p2, v1

    const v3, 0xffffff

    aget v4, p2, v1

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v11, v1

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    and-int/2addr v2, v3

    aput v2, p2, v1

    .line 178
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    .end local v9    # "iconMaskWidth":I
    .end local v10    # "iconMaskHeight":I
    .end local v11    # "iconMaskPixels":[I
    :cond_0
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "finalWidth"    # I
    .param p2, "finalHeight"    # I

    .line 197
    sget-object v0, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 198
    move v1, p1

    .line 199
    .local v1, "desiredWidth":I
    move v2, p2

    .line 200
    .local v2, "desiredHeight":I
    :try_start_0
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_0

    .line 201
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/PaintDrawable;

    .line 202
    .local v3, "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    sget v4, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 203
    sget v4, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 204
    .end local v3    # "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    goto :goto_0

    :cond_0
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 205
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    .local v3, "localBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_1

    .line 207
    sget-object v4, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 208
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 212
    .end local v3    # "localBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 213
    .local v3, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 214
    .local v4, "originalHeight":I
    if-lez v3, :cond_4

    if-lez v4, :cond_4

    .line 215
    if-ne v1, v3, :cond_2

    if-eq v2, v4, :cond_4

    .line 218
    :cond_2
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 219
    .local v5, "ratio":F
    if-le v3, v4, :cond_3

    .line 222
    int-to-float v6, v1

    div-float/2addr v6, v5

    float-to-int v2, v6

    goto :goto_1

    .line 227
    :cond_3
    int-to-float v6, v2

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 232
    .end local v5    # "ratio":F
    :cond_4
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 234
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    sub-int v6, p1, v1

    div-int/lit8 v6, v6, 0x2

    .line 236
    .local v6, "left":I
    sub-int v7, p2, v2

    div-int/lit8 v7, v7, 0x2

    .line 237
    .local v7, "top":I
    sget-object v8, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    add-int v8, v6, v1

    add-int v9, v7, v2

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    sget-object v8, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    sget-object v8, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 242
    monitor-exit v0

    return-object v5

    .line 243
    .end local v1    # "desiredWidth":I
    .end local v2    # "desiredHeight":I
    .end local v3    # "originalWidth":I
    .end local v4    # "originalHeight":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "left":I
    .end local v7    # "top":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 247
    const-string v0, "icon_edge.png"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "edge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 250
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    .line 251
    .local v1, "edgeWidth":I
    sget v2, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v2

    .local v2, "edgeHeight":I
    goto :goto_0

    .line 253
    .end local v1    # "edgeWidth":I
    .end local v2    # "edgeHeight":I
    :cond_0
    sget v1, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 254
    .restart local v1    # "edgeWidth":I
    sget v2, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 256
    .restart local v2    # "edgeHeight":I
    :goto_0
    invoke-static {p0, v1, v2}, Lnubia/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lnubia/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lnubia/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 261
    sget v0, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    sget v1, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    invoke-static {p0, v0, v1}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    .line 269
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 270
    .local v1, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    .line 273
    :cond_0
    if-nez v0, :cond_1

    .line 274
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    sget-object v2, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_1
    invoke-static {v0, p1, p2}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCustomizedIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageItemName"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "icon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const-string v3, "com.android.settings"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    new-array v3, v2, [Ljava/lang/Object;

    .line 285
    .local v3, "objects":[Ljava/lang/Object;
    aput-object p0, v3, v1

    .line 286
    const-string v4, "%s.png"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    .end local v3    # "objects":[Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    .local v2, "objects":[Ljava/lang/Object;
    aput-object p1, v2, v1

    .line 293
    const-string v1, "%s.png"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    .end local v2    # "objects":[Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 298
    sget-object v1, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, "mapValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .end local v1    # "mapValue":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageItemName"    # Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 316
    new-array v1, v1, [Ljava/lang/Object;

    .line 317
    .local v1, "objects":[Ljava/lang/Object;
    aput-object p0, v1, v0

    .line 318
    const-string v0, "%s.png"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    .end local v1    # "objects":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    new-array v1, v1, [Ljava/lang/Object;

    .line 321
    .restart local v1    # "objects":[Ljava/lang/Object;
    aput-object p1, v1, v0

    .line 322
    const-string v0, "%s.png"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    .end local v1    # "objects":[Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 325
    .local v2, "objects":[Ljava/lang/Object;
    aput-object p0, v2, v0

    .line 326
    aput-object p1, v2, v1

    .line 327
    const-string v0, "%s#%s.png"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lnubia/content/res/IconCustomizer;->sDensities:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 341
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v2

    sget-object v3, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lnubia/content/res/IconCustomizer;->sDensities:[I

    aget v5, v5, v1

    .line 343
    invoke-static {v5}, Lnubia/util/DisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v2, v3, v4}, Lnubia/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    nop

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    sget-object v2, Lnubia/content/res/IconCustomizer;->sDensities:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 349
    nop

    .line 351
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 353
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    sget-object v2, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, p0}, Lnubia/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_2

    .line 356
    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 359
    :cond_2
    return-object v0
.end method

.method public static isIconFileExist()Z
    .locals 2

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme/current/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "iconPathFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/theme/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 374
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v3, 0x1b4

    const/4 v4, -0x1

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 375
    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v5

    .line 380
    :goto_0
    if-nez v2, :cond_0

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 382
    .local v5, "parent":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 383
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ed

    invoke-static {v6, v7, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 385
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    .line 386
    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    goto :goto_1

    .line 387
    :catch_1
    move-exception v3

    .line 389
    .local v3, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 392
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "parent":Ljava/io/File;
    :cond_0
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 394
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 395
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 398
    goto :goto_2

    .line 396
    :catch_2
    move-exception v3

    .line 399
    :goto_2
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 402
    sget v0, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    sget v1, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    invoke-static {p0, v0, v1}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "customizedIconWidth"    # I
    .param p2, "customizedIconHeight"    # I

    .line 407
    if-eqz p0, :cond_2

    .line 408
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 410
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 414
    sget v0, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 416
    :cond_1
    return-object p0

    .line 418
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 422
    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 423
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0
.end method

.method private static scalePixel(I)I
    .locals 3
    .param p0, "pixel"    # I

    .line 430
    sget v0, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 431
    .local v0, "density":I
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_0

    .line 434
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v0, v1, 0x60

    goto :goto_0

    .line 435
    :cond_0
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_1

    .line 438
    sget v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    mul-int/lit16 v1, v1, 0xb4

    div-int/lit16 v0, v1, 0x90

    .line 440
    :cond_1
    :goto_0
    mul-int v1, p0, v0

    div-int/lit16 v1, v1, 0xf0

    return v1
.end method
