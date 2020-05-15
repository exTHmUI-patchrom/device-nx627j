.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final COMPONENT_BLUE:I = -0x1

.field static final COMPONENT_GREEN:I = -0x2

.field static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final LOG_TIMINGS:Z = false

.field private static final QUANTIZE_WORD_MASK:I = 0x1f

.field private static final QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mColors:[I

.field mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

.field mHistogram:[I

.field mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 474
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    return-void
.end method

.method private static approximateToRgb888(I)I
    .locals 3
    .param p0, "color"    # I

    .line 501
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 495
    const/16 v0, 0x8

    const/4 v1, 0x5

    invoke-static {p0, v1, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 496
    invoke-static {p1, v1, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 497
    invoke-static {p2, v1, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 495
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 216
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 218
    .local v2, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v3

    .line 219
    .local v3, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-direct {p0, v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(Lcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v2    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .end local v3    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .locals 4
    .param p0, "a"    # [I
    .param p1, "dimension"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .line 425
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 440
    :pswitch_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_1

    .line 441
    aget v1, p0, v0

    .line 442
    .local v1, "color":I
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 443
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 444
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 440
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "i":I
    :pswitch_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p3, :cond_0

    .line 432
    aget v1, p0, v0

    .line 433
    .restart local v1    # "color":I
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 434
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 435
    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    .line 431
    .end local v1    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 428
    :pswitch_2
    nop

    .line 448
    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "currentWidth"    # I
    .param p2, "targetWidth"    # I

    .line 527
    if-le p2, p1, :cond_0

    .line 529
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    .local v0, "newValue":I
    goto :goto_0

    .line 532
    .end local v0    # "newValue":I
    :cond_0
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    .line 534
    .restart local v0    # "newValue":I
    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    return v1
.end method

.method private static quantizeFromRgb888(I)I
    .locals 5
    .param p0, "color"    # I

    .line 485
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 486
    .local v0, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 487
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 488
    .local v1, "b":I
    shl-int/lit8 v2, v0, 0xa

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method private quantizePixels(I)Ljava/util/List;
    .locals 4
    .param p1, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 173
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .locals 1
    .param p0, "color"    # I

    .line 522
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .locals 1
    .param p0, "color"    # I

    .line 515
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .locals 1
    .param p0, "color"    # I

    .line 508
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .locals 2
    .param p1, "color565"    # I

    .line 451
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    .line 452
    .local v0, "rgb":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v1

    return v1
.end method

.method private shouldIgnoreColor(I[F)Z
    .locals 3
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .line 461
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    array-length v1, v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Lcom/android/internal/graphics/palette/Palette$Filter;->isAllowed(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    const/4 v2, 0x1

    return v2

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldIgnoreColor(Lcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 2
    .param p1, "color"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 457
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 193
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 196
    .local v0, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 212
    .end local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    goto :goto_0

    .line 210
    .restart local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_0
    return-void

    .line 213
    .end local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_1
    return-void
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 11
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Lcom/android/internal/graphics/palette/Palette$Filter;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 93
    iput-object p3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    .line 95
    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 96
    .local v0, "hist":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 97
    aget v3, p1, v2

    invoke-static {v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v3

    .line 99
    .local v3, "quantizedColor":I
    aput v3, p1, v2

    .line 101
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 96
    .end local v3    # "quantizedColor":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 110
    .local v2, "distinctColorCount":I
    move v3, v2

    move v2, v1

    .local v2, "color":I
    .local v3, "distinctColorCount":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 111
    aget v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    aput v1, v0, v2

    .line 115
    :cond_1
    aget v4, v0, v2

    if-lez v4, :cond_2

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v2    # "color":I
    :cond_3
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 127
    .local v2, "colors":[I
    const/4 v4, 0x0

    .line 128
    .local v4, "distinctColorIndex":I
    move v5, v4

    move v4, v1

    .local v4, "color":I
    .local v5, "distinctColorIndex":I
    :goto_2
    array-length v6, v0

    if-ge v4, v6, :cond_5

    .line 129
    aget v6, v0, v4

    if-lez v6, :cond_4

    .line 130
    add-int/lit8 v6, v5, 0x1

    .local v6, "distinctColorIndex":I
    aput v4, v2, v5

    .line 128
    .end local v5    # "distinctColorIndex":I
    move v5, v6

    .end local v6    # "distinctColorIndex":I
    .restart local v5    # "distinctColorIndex":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 138
    .end local v4    # "color":I
    :cond_5
    if-gt v3, p2, :cond_6

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 141
    array-length v4, v2

    :goto_3
    if-ge v1, v4, :cond_7

    aget v6, v2, v1

    .line 142
    .local v6, "color":I
    iget-object v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v6}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v9

    aget v10, v0, v6

    invoke-direct {v8, v9, v10}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v6    # "color":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 151
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 158
    :cond_7
    return-void
.end method
