.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(DDDDD)V
    .locals 15
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "g"    # D

    .line 2084
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 2085
    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 17
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "e"    # D
    .param p11, "f"    # D
    .param p13, "g"    # D

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 2102
    move-wide/from16 v7, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2104
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2105
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2106
    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2112
    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-ltz v11, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->ulp(F)F

    move-result v12

    add-float/2addr v11, v12

    float-to-double v11, v11

    cmpg-double v11, v5, v11

    if-gtz v11, :cond_9

    .line 2117
    cmpl-double v11, v5, v9

    if-nez v11, :cond_1

    cmpl-double v11, v1, v9

    if-eqz v11, :cond_0

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_0

    goto :goto_0

    .line 2118
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2122
    :cond_1
    :goto_0
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v5, v11

    if-ltz v11, :cond_3

    cmpl-double v11, v3, v9

    if-eqz v11, :cond_2

    goto :goto_1

    .line 2123
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2127
    :cond_3
    :goto_1
    cmpl-double v11, v1, v9

    if-eqz v11, :cond_4

    cmpl-double v11, v7, v9

    if-nez v11, :cond_5

    :cond_4
    cmpl-double v11, v3, v9

    if-eqz v11, :cond_8

    .line 2132
    :cond_5
    cmpg-double v11, v3, v9

    if-ltz v11, :cond_7

    .line 2136
    cmpg-double v11, v1, v9

    if-ltz v11, :cond_6

    cmpg-double v9, v7, v9

    if-ltz v9, :cond_6

    .line 2141
    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    .line 2142
    move-wide/from16 v9, p3

    iput-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 2143
    iput-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 2144
    iput-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 2145
    move-wide/from16 v11, p9

    iput-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    .line 2146
    move-wide/from16 v13, p11

    iput-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    .line 2147
    iput-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    .line 2148
    return-void

    .line 2137
    :cond_6
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v0, "The transfer function must be positive or increasing"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2133
    :cond_7
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "The transfer function must be increasing"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_8
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v15, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_9
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2107
    :cond_a
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2154
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2156
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2158
    .local v2, "that":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 2159
    :cond_2
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 2160
    :cond_3
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 2161
    :cond_4
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v1

    .line 2162
    :cond_5
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v1

    .line 2163
    :cond_6
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v1

    .line 2164
    :cond_7
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0

    .line 2154
    .end local v2    # "that":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    :cond_9
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    .line 2171
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2172
    .local v0, "temp":J
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v3, v0

    long-to-int v3, v3

    .line 2173
    .local v3, "result":I
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2174
    const/16 v4, 0x1f

    mul-int v5, v4, v3

    ushr-long v6, v0, v2

    xor-long/2addr v6, v0

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 2175
    .end local v3    # "result":I
    .local v5, "result":I
    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2176
    mul-int v3, v4, v5

    ushr-long v6, v0, v2

    xor-long/2addr v6, v0

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 2177
    .end local v5    # "result":I
    .restart local v3    # "result":I
    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2178
    mul-int v5, v4, v3

    ushr-long v6, v0, v2

    xor-long/2addr v6, v0

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 2179
    .end local v3    # "result":I
    .restart local v5    # "result":I
    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2180
    mul-int v3, v4, v5

    ushr-long v6, v0, v2

    xor-long/2addr v6, v0

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 2181
    .end local v5    # "result":I
    .restart local v3    # "result":I
    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2182
    mul-int v5, v4, v3

    ushr-long v6, v0, v2

    xor-long/2addr v6, v0

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 2183
    .end local v3    # "result":I
    .restart local v5    # "result":I
    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2184
    mul-int/2addr v4, v5

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    add-int/2addr v4, v2

    .line 2185
    .end local v5    # "result":I
    .local v4, "result":I
    return v4
.end method
