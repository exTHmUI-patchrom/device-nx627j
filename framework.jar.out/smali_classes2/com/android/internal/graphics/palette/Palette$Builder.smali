.class public final Lcom/android/internal/graphics/palette/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

.field private mRegion:Landroid/graphics/Rect;

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    .line 609
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 610
    const/16 v0, 0x3100

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 622
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 630
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-void

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    .line 609
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 610
    const/16 v0, 0x3100

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 643
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    sget-object v1, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 649
    return-void

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of Swatches is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 900
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 901
    .local v8, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 902
    .local v9, "bitmapHeight":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 903
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 905
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 907
    return-object v10

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 912
    .local v0, "regionWidth":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 915
    .local v1, "regionHeight":I
    mul-int v2, v0, v1

    new-array v2, v2, [I

    .line 916
    .local v2, "subsetPixels":[I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 917
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    mul-int/2addr v4, v8

    iget-object v5, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    mul-int v5, v3, v0

    invoke-static {v10, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 920
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 928
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 930
    .local v0, "scaleRatio":D
    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    if-lez v2, :cond_1

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 932
    .local v2, "bitmapArea":I
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    if-le v2, v3, :cond_0

    .line 933
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 935
    .end local v2    # "bitmapArea":I
    :cond_0
    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    if-lez v2, :cond_2

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 937
    .local v2, "maxDimension":I
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    if-le v2, v3, :cond_2

    .line 938
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double v0, v3, v5

    .line 942
    .end local v2    # "maxDimension":I
    :cond_2
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 944
    return-object p1

    .line 947
    :cond_3
    nop

    .line 948
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 949
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    .line 947
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addFilter(Lcom/android/internal/graphics/palette/Palette$Filter;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1
    .param p1, "filter"    # Lcom/android/internal/graphics/palette/Palette$Filter;

    .line 724
    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    return-object p0
.end method

.method public addTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1
    .param p1, "target"    # Lcom/android/internal/graphics/palette/Target;

    .line 782
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_0
    return-object p0
.end method

.method public clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 712
    return-object p0
.end method

.method public clearRegion()Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 772
    return-object p0
.end method

.method public clearTargets()Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 797
    :cond_0
    return-object p0
.end method

.method public generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 5
    .param p1, "listener"    # Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .line 877
    if-eqz p1, :cond_0

    .line 881
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder$1;-><init>(Lcom/android/internal/graphics/palette/Palette$Builder;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    .line 896
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/graphics/palette/Palette$Builder$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 881
    return-object v0

    .line 878
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generate()Lcom/android/internal/graphics/palette/Palette;
    .locals 8

    .line 805
    const/4 v0, 0x0

    .line 811
    .local v0, "logger":Landroid/util/TimingLogger;
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 815
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/internal/graphics/palette/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 817
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 818
    const-string v2, "Processed Bitmap"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 822
    .local v2, "region":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_1

    if-eqz v2, :cond_1

    .line 825
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 826
    .local v3, "scale":D
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 827
    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 828
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 829
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 828
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 830
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 830
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 835
    .end local v3    # "scale":D
    :cond_1
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    if-nez v3, :cond_2

    .line 836
    new-instance v3, Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;-><init>()V

    iput-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 838
    :cond_2
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-direct {p0, v1}, Lcom/android/internal/graphics/palette/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 839
    iget-object v6, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 840
    :cond_3
    iget-object v6, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/internal/graphics/palette/Palette$Filter;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/graphics/palette/Palette$Filter;

    .line 838
    :goto_0
    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/graphics/palette/Quantizer;->quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V

    .line 843
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_4

    .line 844
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    :cond_4
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-interface {v3}, Lcom/android/internal/graphics/palette/Quantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v3

    .line 849
    .local v3, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    if-eqz v0, :cond_5

    .line 850
    const-string v4, "Color quantization completed"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 852
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "region":Landroid/graphics/Rect;
    :cond_5
    goto :goto_1

    .line 854
    .end local v3    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    :cond_6
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v3    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    :goto_1
    move-object v1, v3

    .line 858
    .end local v3    # "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    .local v1, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    new-instance v2, Lcom/android/internal/graphics/palette/Palette;

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v2, v1, v3}, Lcom/android/internal/graphics/palette/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 860
    .local v2, "p":Lcom/android/internal/graphics/palette/Palette;
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette;->generate()V

    .line 862
    if-eqz v0, :cond_7

    .line 863
    const-string v3, "Created Palette"

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 867
    :cond_7
    return-object v2
.end method

.method public maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 0
    .param p1, "colors"    # I

    .line 661
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mMaxColors:I

    .line 662
    return-object p0
.end method

.method public resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1
    .param p1, "area"    # I

    .line 700
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 702
    return-object p0
.end method

.method public resizeBitmapSize(I)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1
    .param p1, "maxDimension"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mResizeArea:I

    .line 682
    return-object p0
.end method

.method public setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 0
    .param p1, "quantizer"    # Lcom/android/internal/graphics/palette/Quantizer;

    .line 738
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    .line 739
    return-object p0
.end method

.method public setRegion(IIII)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 753
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 758
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 759
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_2
    :goto_0
    return-object p0
.end method
