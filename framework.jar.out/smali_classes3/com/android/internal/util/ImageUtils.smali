.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ALPHA_TOLERANCE:I = 0x32

.field private static final COMPACT_BITMAP_SIZE:I = 0x40

.field private static final TOLERANCE:I = 0x14


# instance fields
.field private mTempBuffer:[I

.field private mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 129
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 130
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 133
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 135
    .local v2, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v2, p2, :cond_1

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 137
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    if-lez v2, :cond_3

    if-gtz v1, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    int-to-float v0, p1

    int-to-float v3, v1

    div-float/2addr v0, v3

    int-to-float v3, p2

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 147
    .local v0, "ratio":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 148
    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 149
    .local v3, "scaledWidth":I
    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 150
    .local v4, "scaledHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 153
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    return-object v5

    .line 140
    .end local v0    # "ratio":F
    .end local v3    # "scaledWidth":I
    .end local v4    # "scaledHeight":I
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private ensureBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 99
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    .line 101
    :cond_1
    return-void
.end method

.method public static isGrayscale(I)Z
    .locals 7
    .param p0, "color"    # I

    .line 110
    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 111
    .local v0, "alpha":I
    const/4 v2, 0x1

    const/16 v3, 0x32

    if-ge v0, v3, :cond_0

    .line 112
    return v2

    .line 115
    :cond_0
    shr-int/lit8 v3, p0, 0x10

    and-int/2addr v3, v1

    .line 116
    .local v3, "r":I
    shr-int/lit8 v4, p0, 0x8

    and-int/2addr v4, v1

    .line 117
    .local v4, "g":I
    and-int/2addr v1, p0

    .line 119
    .local v1, "b":I
    sub-int v5, v3, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    sub-int v5, v3, v1

    .line 120
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_1

    sub-int v5, v4, v1

    .line 121
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 119
    :goto_0
    return v2
.end method


# virtual methods
.method public isGrayscale(Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 60
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 63
    .local v1, "width":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x40

    if-gt v0, v4, :cond_0

    if-le v1, v4, :cond_2

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 65
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 68
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    .line 69
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 73
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v6, v1

    const/high16 v7, 0x42800000    # 64.0f

    div-float v6, v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 77
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 79
    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 80
    move v0, v4

    move v1, v4

    .line 83
    :cond_2
    mul-int v12, v0, v1

    .line 84
    .local v12, "size":I
    invoke-direct {p0, v12}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    .line 85
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v7, v1

    move v10, v1

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_4

    .line 87
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    aget v5, v5, v4

    invoke-static {v5}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    return v2

    .line 86
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "i":I
    :cond_4
    return v3
.end method
