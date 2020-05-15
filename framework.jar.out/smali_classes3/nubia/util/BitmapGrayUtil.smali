.class public Lnubia/util/BitmapGrayUtil;
.super Ljava/lang/Object;
.source "BitmapGrayUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapGrayUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getBitmapColorCast(Landroid/graphics/Bitmap;II)I
.end method

.method private static native getBitmapGray(Landroid/graphics/Bitmap;)I
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 54
    const/4 v0, 0x1

    const/16 v1, 0x50

    const/16 v2, 0x1e

    invoke-static {p0, v0, v1, v2}, Lnubia/util/BitmapGrayUtil;->getColorCast(Landroid/graphics/Bitmap;III)I

    move-result v0

    return v0
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;I)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I

    .line 58
    const/16 v0, 0x50

    const/16 v1, 0x1e

    invoke-static {p0, p1, v0, v1}, Lnubia/util/BitmapGrayUtil;->getColorCast(Landroid/graphics/Bitmap;III)I

    move-result v0

    return v0
.end method

.method public static getColorCast(Landroid/graphics/Bitmap;III)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I
    .param p2, "SValue"    # I
    .param p3, "BValue"    # I

    .line 70
    const/4 v0, -0x1

    .line 71
    .local v0, "colorCast":I
    const/4 v1, 0x0

    .line 72
    .local v1, "bitmapSub":Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, p1

    .line 78
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, p1

    .line 80
    .local v5, "height":I
    if-le v3, v4, :cond_3

    if-gt v5, v4, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    if-ne p1, v4, :cond_2

    .line 87
    invoke-static {p0, p2, p3}, Lnubia/util/BitmapGrayUtil;->getBitmapColorCast(Landroid/graphics/Bitmap;II)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p0, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    invoke-static {v1, p2, p3}, Lnubia/util/BitmapGrayUtil;->getBitmapColorCast(Landroid/graphics/Bitmap;II)I

    move-result v0

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :goto_0
    return v0

    .line 82
    :cond_3
    :goto_1
    const-string v4, "BitmapGrayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getColorCast error width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v2

    .line 73
    .end local v3    # "width":I
    .end local v5    # "height":I
    :cond_4
    :goto_2
    const-string v3, "BitmapGrayUtil"

    const-string v4, "getColorCast error ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2
.end method

.method public static getGray(Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "gray":I
    const/4 v1, 0x0

    .line 33
    .local v1, "bitmapSub":Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, p1

    .line 39
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, p1

    .line 41
    .local v5, "height":I
    if-le v3, v4, :cond_2

    if-gt v5, v4, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p0, v3, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lnubia/util/BitmapGrayUtil;->getBitmapGray(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    return v0

    .line 43
    :cond_2
    :goto_0
    const-string v4, "BitmapGrayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapGrayUtil error width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v2

    .line 34
    .end local v3    # "width":I
    .end local v5    # "height":I
    :cond_3
    :goto_1
    const-string v3, "BitmapGrayUtil"

    const-string v4, "BitmapGrayUtil error ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v2
.end method
