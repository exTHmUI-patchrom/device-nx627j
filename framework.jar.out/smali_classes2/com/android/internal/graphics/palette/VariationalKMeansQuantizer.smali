.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final mInitializations:I

.field private final mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final mMinClusterSqDistance:F

.field private mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "minClusterDistance"    # F

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    .line 61
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 4
    .param p1, "minClusterDistance"    # F
    .param p2, "initializations"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 64
    mul-float v0, p1, p1

    iput v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 66
    return-void
.end method

.method private getOptimalKMeans(I[[F)Ljava/util/List;
    .locals 8
    .param p1, "k"    # I
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "optimal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide v1, -0x10000000000001L

    .line 130
    .local v1, "optimalScore":D
    iget v3, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 131
    .local v3, "runs":I
    :goto_0
    if-lez v3, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v4

    .line 136
    .local v4, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v5

    .line 137
    .local v5, "score":D
    if-eqz v0, :cond_0

    cmpl-double v7, v5, v1

    if-lez v7, :cond_1

    .line 141
    :cond_0
    move-wide v1, v5

    .line 142
    move-object v0, v4

    .line 144
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 145
    .end local v4    # "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    .end local v5    # "score":D
    goto :goto_0

    .line 147
    :cond_2
    return-object v0
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

    .line 152
    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 24
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Lcom/android/internal/graphics/palette/Palette$Filter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 79
    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 80
    .local v3, "hsl":[F
    array-length v4, v1

    filled-new-array {v4, v2}, [I

    move-result-object v4

    const-class v5, F

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 81
    .local v4, "hslPixels":[[F
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v6, v7, :cond_0

    .line 82
    aget v7, v1, v6

    invoke-static {v7, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 84
    aget-object v7, v4, v6

    aget v11, v3, v5

    div-float/2addr v11, v8

    aput v11, v7, v5

    .line 85
    aget-object v7, v4, v6

    aget v8, v3, v10

    aput v8, v7, v10

    .line 86
    aget-object v7, v4, v6

    aget v8, v3, v9

    aput v8, v7, v9

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    .end local v6    # "i":I
    :cond_0
    move/from16 v6, p2

    invoke-direct {v0, v6, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v7

    .line 93
    .local v7, "optimalMeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    move v11, v5

    .local v11, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 94
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 95
    .local v12, "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v13

    .line 96
    .local v13, "currentCentroid":[F
    add-int/lit8 v14, v11, 0x1

    .local v14, "j":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 97
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 98
    .local v15, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v9

    .line 99
    .local v9, "compareToCentroid":[F
    invoke-static {v13, v9}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v17

    .line 101
    .local v17, "sqDistance":F
    iget v8, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    cmpg-float v8, v17, v8

    if-gez v8, :cond_2

    .line 102
    invoke-interface {v7, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    array-length v8, v13

    if-ge v5, v8, :cond_1

    .line 105
    aget v8, v13, v5

    move-object/from16 v18, v3

    float-to-double v2, v8

    .end local v3    # "hsl":[F
    .local v18, "hsl":[F
    aget v8, v9, v5

    aget v19, v13, v5

    sub-float v8, v8, v19

    move/from16 v20, v11

    float-to-double v10, v8

    .end local v11    # "i":I
    .local v20, "i":I
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v10, v10, v21

    add-double/2addr v2, v10

    double-to-float v2, v2

    aput v2, v13, v5

    .line 104
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v2, 0x3

    const/4 v10, 0x1

    goto :goto_3

    .line 107
    .end local v5    # "k":I
    .end local v18    # "hsl":[F
    .end local v20    # "i":I
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_1
    move-object/from16 v18, v3

    move/from16 v20, v11

    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .restart local v18    # "hsl":[F
    .restart local v20    # "i":I
    add-int/lit8 v14, v14, -0x1

    .end local v9    # "compareToCentroid":[F
    .end local v15    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v17    # "sqDistance":F
    goto :goto_4

    .line 96
    .end local v18    # "hsl":[F
    .end local v20    # "i":I
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v20, v11

    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .restart local v18    # "hsl":[F
    .restart local v20    # "i":I
    :goto_4
    const/4 v2, 0x1

    add-int/2addr v14, v2

    move v10, v2

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    goto :goto_2

    .line 93
    .end local v12    # "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v13    # "currentCentroid":[F
    .end local v14    # "j":I
    .end local v18    # "hsl":[F
    .end local v20    # "i":I
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_3
    move-object/from16 v18, v3

    move/from16 v20, v11

    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .restart local v18    # "hsl":[F
    .restart local v20    # "i":I
    add-int/lit8 v11, v20, 0x1

    .end local v20    # "i":I
    .restart local v11    # "i":I
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 113
    .end local v11    # "i":I
    .end local v18    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_4
    move-object/from16 v18, v3

    .end local v3    # "hsl":[F
    .restart local v18    # "hsl":[F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 114
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    .local v3, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 116
    goto :goto_5

    .line 118
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v5

    .line 119
    .local v5, "centroid":[F
    iget-object v8, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v9, Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/4 v10, 0x3

    new-array v11, v10, [F

    const/4 v12, 0x0

    aget v13, v5, v12

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v13, v14

    aput v13, v11, v12

    const/4 v13, 0x1

    aget v15, v5, v13

    aput v15, v11, v13

    const/4 v15, 0x2

    aget v16, v5, v15

    aput v16, v11, v15

    .line 123
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v11, v10}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>([FI)V

    .line 119
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v5    # "centroid":[F
    goto :goto_5

    .line 125
    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
