.class public abstract Landroid/graphics/ImageDecoder$Source;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Source"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ImageDecoder$1;

    .line 191
    invoke-direct {p0}, Landroid/graphics/ImageDecoder$Source;-><init>()V

    return-void
.end method


# virtual methods
.method final computeDstDensity()I
    .locals 2

    .line 203
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    return v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method abstract createImageDecoder()Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getDensity()I
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method
