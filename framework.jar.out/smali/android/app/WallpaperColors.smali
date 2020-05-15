.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "WallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BRIGHT_IMAGE_MEAN_LUMINANCE:F = 0.75f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final DARK_PIXEL_LUMINANCE:F = 0.45f

.field private static final DARK_THEME_MEAN_LUMINANCE:F = 0.25f

.field public static final HINT_FROM_BITMAP:I = 0x4

.field public static final HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final MAX_BITMAP_SIZE:I = 0x70

.field private static final MAX_DARK_AREA:F = 0.05f

.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private mColorHints:I

.field private final mMainColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .locals 1
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .locals 2
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;
    .param p4, "colorHints"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-eqz p1, :cond_3

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 239
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    if-eqz p2, :cond_0

    .line 241
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    if-eqz p3, :cond_2

    .line 244
    if-eqz p2, :cond_1

    .line 248
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    :goto_0
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 252
    return-void

    .line 235
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary color should never be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "colorInt":I
    invoke-static {v2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v3

    .line 98
    .local v3, "color":Landroid/graphics/Color;
    iget-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "colorInt":I
    .end local v3    # "color":Landroid/graphics/Color;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 101
    return-void
.end method

.method private static calculateDarkHints(Landroid/graphics/Bitmap;)I
    .locals 14
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .line 365
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 366
    return v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 370
    .local v1, "pixels":[I
    const-wide/16 v10, 0x0

    .line 371
    .local v10, "totalLuminance":D
    array-length v2, v1

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v12, v2

    .line 372
    .local v12, "maxDarkPixels":I
    const/4 v13, 0x0

    .line 373
    .local v13, "darkPixels":I
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 373
    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 378
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 379
    .local v2, "tmpHsl":[F
    nop

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 380
    aget v3, v1, v0

    invoke-static {v3, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 381
    const/4 v3, 0x2

    aget v3, v2, v3

    .line 382
    .local v3, "luminance":F
    aget v4, v1, v0

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 385
    .local v4, "alpha":I
    const v5, 0x3ee66666    # 0.45f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    if-eqz v4, :cond_1

    .line 386
    add-int/lit8 v13, v13, 0x1

    .line 388
    :cond_1
    float-to-double v5, v3

    add-double/2addr v10, v5

    .line 379
    .end local v3    # "luminance":F
    .end local v4    # "alpha":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 392
    .local v0, "hints":I
    array-length v3, v1

    int-to-double v3, v3

    div-double v3, v10, v3

    .line 393
    .local v3, "meanLuminance":D
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    if-ge v13, v12, :cond_3

    .line 394
    or-int/lit8 v0, v0, 0x1

    .line 396
    :cond_3
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v3, v5

    if-gez v5, :cond_4

    .line 397
    or-int/lit8 v0, v0, 0x2

    .line 400
    :cond_4
    return v0
.end method

.method private static calculateOptimalSize(II)Landroid/util/Size;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 406
    mul-int v0, p0, p1

    .line 407
    .local v0, "requestedArea":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 408
    .local v1, "scale":D
    const/16 v3, 0x3100

    if-le v0, v3, :cond_0

    .line 409
    const-wide v3, 0x40c8800000000000L    # 12544.0

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 411
    :cond_0
    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int v3, v3

    .line 412
    .local v3, "newWidth":I
    int-to-double v4, p1

    mul-double/2addr v4, v1

    double-to-int v4, v4

    .line 415
    .local v4, "newHeight":I
    if-nez v3, :cond_1

    .line 416
    const/4 v3, 0x1

    .line 418
    :cond_1
    if-nez v4, :cond_2

    .line 419
    const/4 v4, 0x1

    .line 422
    :cond_2
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v5
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 147
    if-eqz p0, :cond_3

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 152
    .local v0, "bitmapArea":I
    const/4 v1, 0x0

    .line 153
    .local v1, "shouldRecycle":Z
    const/16 v2, 0x3100

    if-le v0, v2, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v3

    .line 156
    .local v3, "optimalSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 157
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 156
    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 160
    .end local v3    # "optimalSize":Landroid/util/Size;
    :cond_0
    nop

    .line 161
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct {v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    .line 162
    invoke-virtual {v3, v4}, Lcom/android/internal/graphics/palette/Palette$Builder;->setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    const/4 v4, 0x5

    .line 163
    invoke-virtual {v3, v4}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lcom/android/internal/graphics/palette/Palette$Builder;->clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    .line 169
    .local v2, "palette":Lcom/android/internal/graphics/palette/Palette;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v3, "swatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    .line 171
    .local v4, "minColorArea":F
    new-instance v5, Landroid/app/-$$Lambda$WallpaperColors$8R5kfKKLfHjpw_QXmD1mWOKwJxc;

    invoke-direct {v5, v4}, Landroid/app/-$$Lambda$WallpaperColors$8R5kfKKLfHjpw_QXmD1mWOKwJxc;-><init>(F)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 172
    sget-object v5, Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;->INSTANCE:Landroid/app/-$$Lambda$WallpaperColors$MQFGJ9EZ9CDeGbIhMufJKqru3IE;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 174
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 175
    .local v5, "swatchesSize":I
    const/4 v6, 0x0

    .local v6, "primary":Landroid/graphics/Color;
    const/4 v7, 0x0

    .local v7, "secondary":Landroid/graphics/Color;
    const/4 v8, 0x0

    .line 178
    .local v8, "tertiary":Landroid/graphics/Color;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 179
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v10}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v10

    .line 180
    .local v10, "color":Landroid/graphics/Color;
    packed-switch v9, :pswitch_data_0

    .line 192
    goto :goto_2

    .line 188
    :pswitch_0
    move-object v8, v10

    .line 189
    goto :goto_1

    .line 185
    :pswitch_1
    move-object v7, v10

    .line 186
    goto :goto_1

    .line 182
    :pswitch_2
    move-object v6, v10

    .line 183
    nop

    .line 178
    .end local v10    # "color":Landroid/graphics/Color;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 196
    .end local v9    # "i":I
    :cond_1
    :goto_2
    invoke-static {p0}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 198
    .local v9, "hints":I
    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_2
    new-instance v10, Landroid/app/WallpaperColors;

    const/4 v11, 0x4

    or-int/2addr v11, v9

    invoke-direct {v10, v6, v7, v8, v11}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    return-object v10

    .line 148
    .end local v0    # "bitmapArea":I
    .end local v1    # "shouldRecycle":Z
    .end local v2    # "palette":Lcom/android/internal/graphics/palette/Palette;
    .end local v3    # "swatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    .end local v4    # "minColorArea":F
    .end local v5    # "swatchesSize":I
    .end local v6    # "primary":Landroid/graphics/Color;
    .end local v7    # "secondary":Landroid/graphics/Color;
    .end local v8    # "tertiary":Landroid/graphics/Color;
    .end local v9    # "hints":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 111
    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 116
    .local v0, "initialBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 117
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 120
    .local v2, "height":I
    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    .line 121
    :cond_0
    const/16 v1, 0x70

    .line 122
    const/16 v2, 0x70

    .line 125
    :cond_1
    invoke-static {v1, v2}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v3

    .line 126
    .local v3, "optimalSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 128
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v5, "bmpCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v6

    .line 133
    .local v6, "colors":Landroid/app/WallpaperColors;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 136
    return-object v6

    .line 112
    .end local v0    # "initialBounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "optimalSize":Landroid/util/Size;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bmpCanvas":Landroid/graphics/Canvas;
    .end local v6    # "colors":Landroid/app/WallpaperColors;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$fromBitmap$0(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 1
    .param p0, "minColorArea"    # F
    .param p1, "s"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$fromBitmap$1(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .locals 2
    .param p0, "a"    # Lcom/android/internal/graphics/palette/Palette$Swatch;
    .param p1, "b"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 324
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 329
    .local v1, "other":Landroid/app/WallpaperColors;
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    iget v3, v1, Landroid/app/WallpaperColors;->mColorHints:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 325
    .end local v1    # "other":Landroid/app/WallpaperColors;
    :cond_2
    :goto_0
    return v0
.end method

.method public getColorHints()I
    .locals 1

    .line 346
    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public getMainColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/graphics/Color;
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public getSecondaryColor()Landroid/graphics/Color;
    .locals 2

    .line 300
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_0
    return-object v0
.end method

.method public getTertiaryColor()Landroid/graphics/Color;
    .locals 2

    .line 309
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 335
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v1, v0

    return v1
.end method

.method public setColorHints(I)V
    .locals 0
    .param p1, "colorHints"    # I

    .line 355
    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v0, "colors":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 429
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WallpaperColors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 273
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 275
    .local v1, "count":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Color;

    .line 278
    .local v3, "color":Landroid/graphics/Color;
    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .end local v3    # "color":Landroid/graphics/Color;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return-void
.end method
