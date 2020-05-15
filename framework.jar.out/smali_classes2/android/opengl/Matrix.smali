.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final sTemp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/Matrix;->sTemp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 12
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .line 326
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_4

    .line 329
    cmpl-float v0, p5, p4

    if-eqz v0, :cond_3

    .line 332
    cmpl-float v0, p6, p7

    if-eqz v0, :cond_2

    .line 335
    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_1

    .line 338
    cmpg-float v1, p7, v0

    if-lez v1, :cond_0

    .line 341
    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 342
    .local v1, "r_width":F
    sub-float v3, p5, p4

    div-float v3, v2, v3

    .line 343
    .local v3, "r_height":F
    sub-float v4, p6, p7

    div-float/2addr v2, v4

    .line 344
    .local v2, "r_depth":F
    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 345
    .local v4, "x":F
    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    .line 346
    .local v6, "y":F
    add-float v7, p3, p2

    mul-float/2addr v7, v1

    .line 347
    .local v7, "A":F
    add-float v8, p5, p4

    mul-float/2addr v8, v3

    .line 348
    .local v8, "B":F
    add-float v9, p7, p6

    mul-float/2addr v9, v2

    .line 349
    .local v9, "C":F
    mul-float v10, p7, p6

    mul-float/2addr v10, v2

    mul-float/2addr v5, v10

    .line 350
    .local v5, "D":F
    add-int/lit8 v10, p1, 0x0

    aput v4, p0, v10

    .line 351
    add-int/lit8 v10, p1, 0x5

    aput v6, p0, v10

    .line 352
    add-int/lit8 v10, p1, 0x8

    aput v7, p0, v10

    .line 353
    add-int/lit8 v10, p1, 0x9

    aput v8, p0, v10

    .line 354
    add-int/lit8 v10, p1, 0xa

    aput v9, p0, v10

    .line 355
    add-int/lit8 v10, p1, 0xe

    aput v5, p0, v10

    .line 356
    add-int/lit8 v10, p1, 0xb

    const/high16 v11, -0x40800000    # -1.0f

    aput v11, p0, v10

    .line 357
    add-int/lit8 v10, p1, 0x1

    aput v0, p0, v10

    .line 358
    add-int/lit8 v10, p1, 0x2

    aput v0, p0, v10

    .line 359
    add-int/lit8 v10, p1, 0x3

    aput v0, p0, v10

    .line 360
    add-int/lit8 v10, p1, 0x4

    aput v0, p0, v10

    .line 361
    add-int/lit8 v10, p1, 0x6

    aput v0, p0, v10

    .line 362
    add-int/lit8 v10, p1, 0x7

    aput v0, p0, v10

    .line 363
    add-int/lit8 v10, p1, 0xc

    aput v0, p0, v10

    .line 364
    add-int/lit8 v10, p1, 0xd

    aput v0, p0, v10

    .line 365
    add-int/lit8 v10, p1, 0xf

    aput v0, p0, v10

    .line 366
    return-void

    .line 339
    .end local v1    # "r_width":F
    .end local v2    # "r_depth":F
    .end local v3    # "r_height":F
    .end local v4    # "x":F
    .end local v5    # "D":F
    .end local v6    # "y":F
    .end local v7    # "A":F
    .end local v8    # "B":F
    .end local v9    # "C":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "far <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near <= 0.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "top == bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invertM([FI[FI)Z
    .locals 61
    .param p0, "mInv"    # [F
    .param p1, "mInvOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    .line 140
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    .line 141
    .local v0, "src0":F
    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    .line 142
    .local v1, "src4":F
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    .line 143
    .local v2, "src8":F
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    .line 145
    .local v3, "src12":F
    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    .line 146
    .local v4, "src1":F
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    .line 147
    .local v5, "src5":F
    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    .line 148
    .local v6, "src9":F
    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    .line 150
    .local v7, "src13":F
    add-int/lit8 v8, p3, 0x8

    aget v8, p2, v8

    .line 151
    .local v8, "src2":F
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    .line 152
    .local v9, "src6":F
    add-int/lit8 v10, p3, 0xa

    aget v10, p2, v10

    .line 153
    .local v10, "src10":F
    add-int/lit8 v11, p3, 0xb

    aget v11, p2, v11

    .line 155
    .local v11, "src14":F
    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    .line 156
    .local v12, "src3":F
    add-int/lit8 v13, p3, 0xd

    aget v13, p2, v13

    .line 157
    .local v13, "src7":F
    add-int/lit8 v14, p3, 0xe

    aget v14, p2, v14

    .line 158
    .local v14, "src11":F
    add-int/lit8 v15, p3, 0xf

    aget v15, p2, v15

    .line 161
    .local v15, "src15":F
    mul-float v16, v10, v15

    .line 162
    .local v16, "atmp0":F
    mul-float v17, v14, v11

    .line 163
    .local v17, "atmp1":F
    mul-float v18, v6, v15

    .line 164
    .local v18, "atmp2":F
    mul-float v19, v14, v7

    .line 165
    .local v19, "atmp3":F
    mul-float v20, v6, v11

    .line 166
    .local v20, "atmp4":F
    mul-float v21, v10, v7

    .line 167
    .local v21, "atmp5":F
    mul-float v22, v2, v15

    .line 168
    .local v22, "atmp6":F
    mul-float v23, v14, v3

    .line 169
    .local v23, "atmp7":F
    mul-float v24, v2, v11

    .line 170
    .local v24, "atmp8":F
    mul-float v25, v10, v3

    .line 171
    .local v25, "atmp9":F
    mul-float v26, v2, v7

    .line 172
    .local v26, "atmp10":F
    mul-float v27, v6, v3

    .line 175
    .local v27, "atmp11":F
    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    .line 177
    .local v28, "dst0":F
    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    .line 179
    .local v29, "dst1":F
    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    .line 181
    .local v30, "dst2":F
    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    .line 183
    .local v31, "dst3":F
    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    .line 185
    .local v32, "dst4":F
    mul-float v33, v16, v0

    mul-float v34, v23, v8

    add-float v33, v33, v34

    mul-float v34, v24, v12

    add-float v33, v33, v34

    mul-float v34, v17, v0

    mul-float v35, v22, v8

    add-float v34, v34, v35

    mul-float v35, v25, v12

    add-float v34, v34, v35

    sub-float v33, v33, v34

    .line 187
    .local v33, "dst5":F
    mul-float v34, v19, v0

    mul-float v35, v22, v4

    add-float v34, v34, v35

    mul-float v35, v27, v12

    add-float v34, v34, v35

    mul-float v35, v18, v0

    mul-float v36, v23, v4

    add-float v35, v35, v36

    mul-float v36, v26, v12

    add-float v35, v35, v36

    sub-float v34, v34, v35

    .line 189
    .local v34, "dst6":F
    mul-float v35, v20, v0

    mul-float v36, v25, v4

    add-float v35, v35, v36

    mul-float v36, v26, v8

    add-float v35, v35, v36

    mul-float v36, v21, v0

    mul-float v37, v24, v4

    add-float v36, v36, v37

    mul-float v37, v27, v8

    add-float v36, v36, v37

    sub-float v35, v35, v36

    .line 193
    .local v35, "dst7":F
    mul-float v36, v8, v13

    .line 194
    .local v36, "btmp0":F
    mul-float v37, v12, v9

    .line 195
    .local v37, "btmp1":F
    mul-float v38, v4, v13

    .line 196
    .local v38, "btmp2":F
    mul-float v39, v12, v5

    .line 197
    .local v39, "btmp3":F
    mul-float v40, v4, v9

    .line 198
    .local v40, "btmp4":F
    mul-float v41, v8, v5

    .line 199
    .local v41, "btmp5":F
    mul-float v42, v0, v13

    .line 200
    .local v42, "btmp6":F
    mul-float v43, v12, v1

    .line 201
    .local v43, "btmp7":F
    mul-float v44, v0, v9

    .line 202
    .local v44, "btmp8":F
    mul-float v45, v8, v1

    .line 203
    .local v45, "btmp9":F
    mul-float v46, v0, v5

    .line 204
    .local v46, "btmp10":F
    mul-float v47, v4, v1

    .line 207
    .local v47, "btmp11":F
    mul-float v48, v36, v7

    mul-float v49, v39, v11

    add-float v48, v48, v49

    mul-float v49, v40, v15

    add-float v48, v48, v49

    mul-float v49, v37, v7

    mul-float v50, v38, v11

    add-float v49, v49, v50

    mul-float v50, v41, v15

    add-float v49, v49, v50

    sub-float v48, v48, v49

    .line 209
    .local v48, "dst8":F
    mul-float v49, v37, v3

    mul-float v50, v42, v11

    add-float v49, v49, v50

    mul-float v50, v45, v15

    add-float v49, v49, v50

    mul-float v50, v36, v3

    mul-float v51, v43, v11

    add-float v50, v50, v51

    mul-float v51, v44, v15

    add-float v50, v50, v51

    sub-float v49, v49, v50

    .line 211
    .local v49, "dst9":F
    mul-float v50, v38, v3

    mul-float v51, v43, v7

    add-float v50, v50, v51

    mul-float v51, v46, v15

    add-float v50, v50, v51

    mul-float v51, v39, v3

    mul-float v52, v42, v7

    add-float v51, v51, v52

    mul-float v52, v47, v15

    add-float v51, v51, v52

    sub-float v50, v50, v51

    .line 213
    .local v50, "dst10":F
    mul-float v51, v41, v3

    mul-float v52, v44, v7

    add-float v51, v51, v52

    mul-float v52, v47, v11

    add-float v51, v51, v52

    mul-float v52, v40, v3

    mul-float v53, v45, v7

    add-float v52, v52, v53

    mul-float v53, v46, v11

    add-float v52, v52, v53

    sub-float v51, v51, v52

    .line 215
    .local v51, "dst11":F
    mul-float v52, v38, v10

    mul-float v53, v41, v14

    add-float v52, v52, v53

    mul-float v53, v37, v6

    add-float v52, v52, v53

    mul-float v53, v40, v14

    mul-float v54, v36, v6

    add-float v53, v53, v54

    mul-float v54, v39, v10

    add-float v53, v53, v54

    sub-float v52, v52, v53

    .line 217
    .local v52, "dst12":F
    mul-float v53, v44, v14

    mul-float v54, v36, v2

    add-float v53, v53, v54

    mul-float v54, v43, v10

    add-float v53, v53, v54

    mul-float v54, v42, v10

    mul-float v55, v45, v14

    add-float v54, v54, v55

    mul-float v55, v37, v2

    add-float v54, v54, v55

    sub-float v53, v53, v54

    .line 219
    .local v53, "dst13":F
    mul-float v54, v42, v6

    mul-float v55, v47, v14

    add-float v54, v54, v55

    mul-float v55, v39, v2

    add-float v54, v54, v55

    mul-float v55, v46, v14

    mul-float v56, v38, v2

    add-float v55, v55, v56

    mul-float v56, v43, v6

    add-float v55, v55, v56

    sub-float v54, v54, v55

    .line 221
    .local v54, "dst14":F
    mul-float v55, v46, v10

    mul-float v56, v40, v2

    add-float v55, v55, v56

    mul-float v56, v45, v6

    add-float v55, v55, v56

    mul-float v56, v44, v6

    mul-float v57, v47, v10

    add-float v56, v56, v57

    mul-float v57, v41, v2

    add-float v56, v56, v57

    sub-float v55, v55, v56

    .line 225
    .local v55, "dst15":F
    mul-float v56, v0, v28

    mul-float v57, v4, v29

    add-float v56, v56, v57

    mul-float v57, v8, v30

    add-float v56, v56, v57

    mul-float v57, v12, v31

    add-float v56, v56, v57

    .line 228
    .local v56, "det":F
    const/16 v57, 0x0

    cmpl-float v57, v56, v57

    if-nez v57, :cond_0

    .line 229
    const/16 v57, 0x0

    return v57

    .line 233
    :cond_0
    const/high16 v57, 0x3f800000    # 1.0f

    div-float v57, v57, v56

    .line 234
    .local v57, "invdet":F
    mul-float v58, v28, v57

    aput v58, p0, p1

    .line 235
    const/16 v58, 0x1

    add-int v59, v58, p1

    mul-float v60, v29, v57

    aput v60, p0, v59

    .line 236
    const/16 v59, 0x2

    add-int v59, v59, p1

    mul-float v60, v30, v57

    aput v60, p0, v59

    .line 237
    const/16 v59, 0x3

    add-int v59, v59, p1

    mul-float v60, v31, v57

    aput v60, p0, v59

    .line 239
    const/16 v59, 0x4

    add-int v59, v59, p1

    mul-float v60, v32, v57

    aput v60, p0, v59

    .line 240
    const/16 v59, 0x5

    add-int v59, v59, p1

    mul-float v60, v33, v57

    aput v60, p0, v59

    .line 241
    const/16 v59, 0x6

    add-int v59, v59, p1

    mul-float v60, v34, v57

    aput v60, p0, v59

    .line 242
    const/16 v59, 0x7

    add-int v59, v59, p1

    mul-float v60, v35, v57

    aput v60, p0, v59

    .line 244
    const/16 v59, 0x8

    add-int v59, v59, p1

    mul-float v60, v48, v57

    aput v60, p0, v59

    .line 245
    const/16 v59, 0x9

    add-int v59, v59, p1

    mul-float v60, v49, v57

    aput v60, p0, v59

    .line 246
    const/16 v59, 0xa

    add-int v59, v59, p1

    mul-float v60, v50, v57

    aput v60, p0, v59

    .line 247
    const/16 v59, 0xb

    add-int v59, v59, p1

    mul-float v60, v51, v57

    aput v60, p0, v59

    .line 249
    const/16 v59, 0xc

    add-int v59, v59, p1

    mul-float v60, v52, v57

    aput v60, p0, v59

    .line 250
    const/16 v59, 0xd

    add-int v59, v59, p1

    mul-float v60, v53, v57

    aput v60, p0, v59

    .line 251
    const/16 v59, 0xe

    add-int v59, v59, p1

    mul-float v60, v54, v57

    aput v60, p0, v59

    .line 252
    const/16 v59, 0xf

    add-int v59, v59, p1

    mul-float v60, v55, v57

    aput v60, p0, v59

    .line 254
    return v58
.end method

.method public static length(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .line 415
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 11
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F
    .param p6, "near"    # F
    .param p7, "far"    # F

    .line 272
    cmpl-float v1, p2, p3

    if-eqz v1, :cond_2

    .line 275
    cmpl-float v1, p4, p5

    if-eqz v1, :cond_1

    .line 278
    cmpl-float v1, p6, p7

    if-eqz v1, :cond_0

    .line 282
    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 283
    .local v1, "r_width":F
    sub-float v3, p5, p4

    div-float v3, v2, v3

    .line 284
    .local v3, "r_height":F
    sub-float v4, p7, p6

    div-float v4, v2, v4

    .line 285
    .local v4, "r_depth":F
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v5, v1

    .line 286
    .local v6, "x":F
    mul-float/2addr v5, v3

    .line 287
    .local v5, "y":F
    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v7, v4

    .line 288
    .local v7, "z":F
    add-float v8, p3, p2

    neg-float v8, v8

    mul-float/2addr v8, v1

    .line 289
    .local v8, "tx":F
    add-float v2, p5, p4

    neg-float v2, v2

    mul-float/2addr v2, v3

    .line 290
    .local v2, "ty":F
    add-float v0, p7, p6

    neg-float v0, v0

    mul-float/2addr v0, v4

    .line 291
    .local v0, "tz":F
    add-int/lit8 v10, p1, 0x0

    aput v6, p0, v10

    .line 292
    add-int/lit8 v10, p1, 0x5

    aput v5, p0, v10

    .line 293
    add-int/lit8 v10, p1, 0xa

    aput v7, p0, v10

    .line 294
    add-int/lit8 v10, p1, 0xc

    aput v8, p0, v10

    .line 295
    add-int/lit8 v10, p1, 0xd

    aput v2, p0, v10

    .line 296
    add-int/lit8 v10, p1, 0xe

    aput v0, p0, v10

    .line 297
    add-int/lit8 v10, p1, 0xf

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, p0, v10

    .line 298
    add-int/lit8 v9, p1, 0x1

    const/4 v10, 0x0

    aput v10, p0, v9

    .line 299
    add-int/lit8 v9, p1, 0x2

    aput v10, p0, v9

    .line 300
    add-int/lit8 v9, p1, 0x3

    aput v10, p0, v9

    .line 301
    add-int/lit8 v9, p1, 0x4

    aput v10, p0, v9

    .line 302
    add-int/lit8 v9, p1, 0x6

    aput v10, p0, v9

    .line 303
    add-int/lit8 v9, p1, 0x7

    aput v10, p0, v9

    .line 304
    add-int/lit8 v9, p1, 0x8

    aput v10, p0, v9

    .line 305
    add-int/lit8 v9, p1, 0x9

    aput v10, p0, v9

    .line 306
    add-int/lit8 v9, p1, 0xb

    aput v10, p0, v9

    .line 307
    return-void

    .line 279
    .end local v0    # "tz":F
    .end local v1    # "r_width":F
    .end local v2    # "ty":F
    .end local v3    # "r_height":F
    .end local v4    # "r_depth":F
    .end local v5    # "y":F
    .end local v6    # "x":F
    .end local v7    # "z":F
    .end local v8    # "tx":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "near == far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bottom == top"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left == right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static perspectiveM([FIFFFF)V
    .locals 5
    .param p0, "m"    # [F
    .param p1, "offset"    # I
    .param p2, "fovy"    # F
    .param p3, "aspect"    # F
    .param p4, "zNear"    # F
    .param p5, "zFar"    # F

    .line 382
    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 383
    .local v0, "f":F
    sub-float v2, p4, p5

    div-float/2addr v1, v2

    .line 385
    .local v1, "rangeReciprocal":F
    add-int/lit8 v2, p1, 0x0

    div-float v3, v0, p3

    aput v3, p0, v2

    .line 386
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 387
    add-int/lit8 v2, p1, 0x2

    aput v3, p0, v2

    .line 388
    add-int/lit8 v2, p1, 0x3

    aput v3, p0, v2

    .line 390
    add-int/lit8 v2, p1, 0x4

    aput v3, p0, v2

    .line 391
    add-int/lit8 v2, p1, 0x5

    aput v0, p0, v2

    .line 392
    add-int/lit8 v2, p1, 0x6

    aput v3, p0, v2

    .line 393
    add-int/lit8 v2, p1, 0x7

    aput v3, p0, v2

    .line 395
    add-int/lit8 v2, p1, 0x8

    aput v3, p0, v2

    .line 396
    add-int/lit8 v2, p1, 0x9

    aput v3, p0, v2

    .line 397
    add-int/lit8 v2, p1, 0xa

    add-float v4, p5, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    .line 398
    add-int/lit8 v2, p1, 0xb

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, p0, v2

    .line 400
    add-int/lit8 v2, p1, 0xc

    aput v3, p0, v2

    .line 401
    add-int/lit8 v2, p1, 0xd

    aput v3, p0, v2

    .line 402
    add-int/lit8 v2, p1, 0xe

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p5

    mul-float/2addr v4, p4

    mul-float/2addr v4, v1

    aput v4, p0, v2

    .line 403
    add-int/lit8 v2, p1, 0xf

    aput v3, p0, v2

    .line 404
    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 9
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 559
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v0

    .line 560
    :try_start_0
    sget-object v1, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v2, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 561
    sget-object v3, Landroid/opengl/Matrix;->sTemp:[F

    const/16 v4, 0x10

    sget-object v7, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v8, 0x0

    move-object v5, p0

    move v6, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 562
    sget-object v1, Landroid/opengl/Matrix;->sTemp:[F

    const/16 v2, 0x10

    invoke-static {v1, v2, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 10
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "a"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "z"    # F

    .line 540
    sget-object v1, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v1

    .line 541
    :try_start_0
    sget-object v2, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v3, 0x0

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 542
    sget-object v8, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 543
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static scaleM([FIFFF)V
    .locals 4
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 471
    add-int v2, p1, v0

    .line 472
    .local v2, "mi":I
    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    .line 473
    add-int/2addr v1, v2

    aget v3, p0, v1

    mul-float/2addr v3, p3

    aput v3, p0, v1

    .line 474
    const/16 v1, 0x8

    add-int/2addr v1, v2

    aget v3, p0, v1

    mul-float/2addr v3, p4

    aput v3, p0, v1

    .line 470
    .end local v2    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 5
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 450
    add-int v2, p1, v0

    .line 451
    .local v2, "smi":I
    add-int v3, p3, v0

    .line 452
    .local v3, "mi":I
    aget v4, p2, v3

    mul-float/2addr v4, p4

    aput v4, p0, v2

    .line 453
    add-int v4, v1, v2

    add-int/2addr v1, v3

    aget v1, p2, v1

    mul-float/2addr v1, p5

    aput v1, p0, v4

    .line 454
    const/16 v1, 0x8

    add-int v4, v1, v2

    add-int/2addr v1, v3

    aget v1, p2, v1

    mul-float/2addr v1, p6

    aput v1, p0, v4

    .line 455
    const/16 v1, 0xc

    add-int v4, v1, v2

    add-int/2addr v1, v3

    aget v1, p2, v1

    aput v1, p0, v4

    .line 449
    .end local v2    # "smi":I
    .end local v3    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4
    .param p0, "sm"    # [F
    .param p1, "smOffset"    # I

    .line 425
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 426
    add-int v2, p1, v1

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 429
    add-int v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v1

    .line 428
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 431
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 20
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "eyeX"    # F
    .param p3, "eyeY"    # F
    .param p4, "eyeZ"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F
    .param p7, "centerZ"    # F
    .param p8, "upX"    # F
    .param p9, "upY"    # F
    .param p10, "upZ"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 705
    sub-float v8, p5, v2

    .line 706
    .local v8, "fx":F
    sub-float v9, p6, v3

    .line 707
    .local v9, "fy":F
    sub-float v10, p7, v4

    .line 710
    .local v10, "fz":F
    invoke-static {v8, v9, v10}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    .line 711
    .local v11, "rlf":F
    mul-float/2addr v8, v11

    .line 712
    mul-float/2addr v9, v11

    .line 713
    mul-float/2addr v10, v11

    .line 716
    mul-float v13, v9, p10

    mul-float v14, v10, p9

    sub-float v12, v13, v14

    .line 717
    .local v12, "sx":F
    mul-float v13, v10, p8

    mul-float v14, v8, p10

    sub-float v7, v13, v14

    .line 718
    .local v7, "sy":F
    mul-float v13, v8, p9

    mul-float v14, v9, p8

    sub-float v5, v13, v14

    .line 721
    .local v5, "sz":F
    invoke-static {v12, v7, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v13, v14, v13

    .line 722
    .local v13, "rls":F
    mul-float/2addr v12, v13

    .line 723
    mul-float/2addr v7, v13

    .line 724
    mul-float/2addr v5, v13

    .line 727
    mul-float v14, v7, v10

    mul-float v15, v5, v9

    sub-float/2addr v14, v15

    .line 728
    .local v14, "ux":F
    mul-float v15, v5, v8

    mul-float v16, v12, v10

    sub-float v15, v15, v16

    .line 729
    .local v15, "uy":F
    mul-float v16, v12, v9

    mul-float v17, v7, v8

    sub-float v16, v16, v17

    .line 731
    .local v16, "uz":F
    add-int/lit8 v17, v1, 0x0

    aput v12, v0, v17

    .line 732
    add-int/lit8 v17, v1, 0x1

    aput v14, v0, v17

    .line 733
    add-int/lit8 v17, v1, 0x2

    neg-float v6, v8

    aput v6, v0, v17

    .line 734
    add-int/lit8 v6, v1, 0x3

    const/16 v17, 0x0

    aput v17, v0, v6

    .line 736
    add-int/lit8 v6, v1, 0x4

    aput v7, v0, v6

    .line 737
    add-int/lit8 v6, v1, 0x5

    aput v15, v0, v6

    .line 738
    add-int/lit8 v6, v1, 0x6

    move/from16 v18, v7

    neg-float v7, v9

    .end local v7    # "sy":F
    .local v18, "sy":F
    aput v7, v0, v6

    .line 739
    add-int/lit8 v6, v1, 0x7

    aput v17, v0, v6

    .line 741
    add-int/lit8 v6, v1, 0x8

    aput v5, v0, v6

    .line 742
    add-int/lit8 v6, v1, 0x9

    aput v16, v0, v6

    .line 743
    add-int/lit8 v6, v1, 0xa

    neg-float v7, v10

    aput v7, v0, v6

    .line 744
    add-int/lit8 v6, v1, 0xb

    aput v17, v0, v6

    .line 746
    add-int/lit8 v6, v1, 0xc

    aput v17, v0, v6

    .line 747
    add-int/lit8 v6, v1, 0xd

    aput v17, v0, v6

    .line 748
    add-int/lit8 v6, v1, 0xe

    aput v17, v0, v6

    .line 749
    add-int/lit8 v6, v1, 0xf

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v0, v6

    .line 751
    neg-float v6, v2

    neg-float v7, v3

    neg-float v2, v4

    invoke-static {v0, v1, v6, v7, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 752
    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 15
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 648
    const v0, 0x3c8efa35

    mul-float v1, p2, v0

    .line 649
    .end local p2    # "x":F
    .local v1, "x":F
    mul-float v2, p3, v0

    .line 650
    .end local p3    # "y":F
    .local v2, "y":F
    mul-float v0, v0, p4

    .line 651
    .end local p4    # "z":F
    .local v0, "z":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 652
    .local v3, "cx":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 653
    .local v4, "sx":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 654
    .local v5, "cy":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 655
    .local v6, "sy":F
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 656
    .local v7, "cz":F
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 657
    .local v8, "sz":F
    mul-float v9, v3, v6

    .line 658
    .local v9, "cxsy":F
    mul-float v10, v4, v6

    .line 660
    .local v10, "sxsy":F
    add-int/lit8 v11, p1, 0x0

    mul-float v12, v5, v7

    aput v12, p0, v11

    .line 661
    add-int/lit8 v11, p1, 0x1

    neg-float v12, v5

    mul-float/2addr v12, v8

    aput v12, p0, v11

    .line 662
    add-int/lit8 v11, p1, 0x2

    aput v6, p0, v11

    .line 663
    add-int/lit8 v11, p1, 0x3

    const/4 v12, 0x0

    aput v12, p0, v11

    .line 665
    add-int/lit8 v11, p1, 0x4

    mul-float v13, v9, v7

    mul-float v14, v3, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 666
    add-int/lit8 v11, p1, 0x5

    neg-float v13, v9

    mul-float/2addr v13, v8

    mul-float v14, v3, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 667
    add-int/lit8 v11, p1, 0x6

    neg-float v13, v4

    mul-float/2addr v13, v5

    aput v13, p0, v11

    .line 668
    add-int/lit8 v11, p1, 0x7

    aput v12, p0, v11

    .line 670
    add-int/lit8 v11, p1, 0x8

    neg-float v13, v10

    mul-float/2addr v13, v7

    mul-float v14, v4, v8

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 671
    add-int/lit8 v11, p1, 0x9

    mul-float v13, v10, v8

    mul-float v14, v4, v7

    add-float/2addr v13, v14

    aput v13, p0, v11

    .line 672
    add-int/lit8 v11, p1, 0xa

    mul-float v13, v3, v5

    aput v13, p0, v11

    .line 673
    add-int/lit8 v11, p1, 0xb

    aput v12, p0, v11

    .line 675
    add-int/lit8 v11, p1, 0xc

    aput v12, p0, v11

    .line 676
    add-int/lit8 v11, p1, 0xd

    aput v12, p0, v11

    .line 677
    add-int/lit8 v11, p1, 0xe

    aput v12, p0, v11

    .line 678
    add-int/lit8 v11, p1, 0xf

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, p0, v11

    .line 679
    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 16
    .param p0, "rm"    # [F
    .param p1, "rmOffset"    # I
    .param p2, "a"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 582
    add-int/lit8 v3, p1, 0x3

    const/4 v4, 0x0

    aput v4, p0, v3

    .line 583
    add-int/lit8 v3, p1, 0x7

    aput v4, p0, v3

    .line 584
    add-int/lit8 v3, p1, 0xb

    aput v4, p0, v3

    .line 585
    add-int/lit8 v3, p1, 0xc

    aput v4, p0, v3

    .line 586
    add-int/lit8 v3, p1, 0xd

    aput v4, p0, v3

    .line 587
    add-int/lit8 v3, p1, 0xe

    aput v4, p0, v3

    .line 588
    add-int/lit8 v3, p1, 0xf

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p0, v3

    .line 589
    const v3, 0x3c8efa35

    mul-float v3, v3, p2

    .line 590
    .end local p2    # "a":F
    .local v3, "a":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 591
    .local v6, "s":F
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 592
    .local v7, "c":F
    cmpl-float v8, v5, p3

    if-nez v8, :cond_0

    cmpl-float v8, v4, p4

    if-nez v8, :cond_0

    cmpl-float v8, v4, p5

    if-nez v8, :cond_0

    .line 593
    add-int/lit8 v8, p1, 0x5

    aput v7, p0, v8

    add-int/lit8 v8, p1, 0xa

    aput v7, p0, v8

    .line 594
    add-int/lit8 v8, p1, 0x6

    aput v6, p0, v8

    add-int/lit8 v8, p1, 0x9

    neg-float v9, v6

    aput v9, p0, v8

    .line 595
    add-int/lit8 v8, p1, 0x1

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x2

    aput v4, p0, v8

    .line 596
    add-int/lit8 v8, p1, 0x4

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x8

    aput v4, p0, v8

    .line 597
    add-int/lit8 v4, p1, 0x0

    aput v5, p0, v4

    goto :goto_0

    .line 598
    :cond_0
    cmpl-float v8, v4, p3

    if-nez v8, :cond_1

    cmpl-float v8, v5, p4

    if-nez v8, :cond_1

    cmpl-float v8, v4, p5

    if-nez v8, :cond_1

    .line 599
    add-int/lit8 v8, p1, 0x0

    aput v7, p0, v8

    add-int/lit8 v8, p1, 0xa

    aput v7, p0, v8

    .line 600
    add-int/lit8 v8, p1, 0x8

    aput v6, p0, v8

    add-int/lit8 v8, p1, 0x2

    neg-float v9, v6

    aput v9, p0, v8

    .line 601
    add-int/lit8 v8, p1, 0x1

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x4

    aput v4, p0, v8

    .line 602
    add-int/lit8 v8, p1, 0x6

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x9

    aput v4, p0, v8

    .line 603
    add-int/lit8 v4, p1, 0x5

    aput v5, p0, v4

    goto :goto_0

    .line 604
    :cond_1
    cmpl-float v8, v4, p3

    if-nez v8, :cond_2

    cmpl-float v8, v4, p4

    if-nez v8, :cond_2

    cmpl-float v8, v5, p5

    if-nez v8, :cond_2

    .line 605
    add-int/lit8 v8, p1, 0x0

    aput v7, p0, v8

    add-int/lit8 v8, p1, 0x5

    aput v7, p0, v8

    .line 606
    add-int/lit8 v8, p1, 0x1

    aput v6, p0, v8

    add-int/lit8 v8, p1, 0x4

    neg-float v9, v6

    aput v9, p0, v8

    .line 607
    add-int/lit8 v8, p1, 0x2

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x6

    aput v4, p0, v8

    .line 608
    add-int/lit8 v8, p1, 0x8

    aput v4, p0, v8

    add-int/lit8 v8, p1, 0x9

    aput v4, p0, v8

    .line 609
    add-int/lit8 v4, p1, 0xa

    aput v5, p0, v4

    .line 635
    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_2

    .line 611
    :cond_2
    invoke-static/range {p3 .. p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    .line 612
    .local v4, "len":F
    cmpl-float v8, v5, v4

    if-eqz v8, :cond_3

    .line 613
    div-float v8, v5, v4

    .line 614
    .local v8, "recipLen":F
    mul-float v0, p3, v8

    .line 615
    .end local p3    # "x":F
    .local v0, "x":F
    mul-float v1, p4, v8

    .line 616
    .end local p4    # "y":F
    .local v1, "y":F
    mul-float v2, p5, v8

    .end local v8    # "recipLen":F
    .end local p5    # "z":F
    .local v2, "z":F
    goto :goto_1

    .line 618
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "z":F
    .restart local p3    # "x":F
    .restart local p4    # "y":F
    .restart local p5    # "z":F
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    .end local p3    # "x":F
    .end local p4    # "y":F
    .end local p5    # "z":F
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    .restart local v2    # "z":F
    :goto_1
    sub-float/2addr v5, v7

    .line 619
    .local v5, "nc":F
    mul-float v8, v0, v1

    .line 620
    .local v8, "xy":F
    mul-float v9, v1, v2

    .line 621
    .local v9, "yz":F
    mul-float v10, v2, v0

    .line 622
    .local v10, "zx":F
    mul-float v11, v0, v6

    .line 623
    .local v11, "xs":F
    mul-float v12, v1, v6

    .line 624
    .local v12, "ys":F
    mul-float v13, v2, v6

    .line 625
    .local v13, "zs":F
    add-int/lit8 v14, p1, 0x0

    mul-float v15, v0, v0

    mul-float/2addr v15, v5

    add-float/2addr v15, v7

    aput v15, p0, v14

    .line 626
    add-int/lit8 v14, p1, 0x4

    mul-float v15, v8, v5

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 627
    add-int/lit8 v14, p1, 0x8

    mul-float v15, v10, v5

    add-float/2addr v15, v12

    aput v15, p0, v14

    .line 628
    add-int/lit8 v14, p1, 0x1

    mul-float v15, v8, v5

    add-float/2addr v15, v13

    aput v15, p0, v14

    .line 629
    add-int/lit8 v14, p1, 0x5

    mul-float v15, v1, v1

    mul-float/2addr v15, v5

    add-float/2addr v15, v7

    aput v15, p0, v14

    .line 630
    add-int/lit8 v14, p1, 0x9

    mul-float v15, v9, v5

    sub-float/2addr v15, v11

    aput v15, p0, v14

    .line 631
    add-int/lit8 v14, p1, 0x2

    mul-float v15, v10, v5

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 632
    add-int/lit8 v14, p1, 0x6

    mul-float v15, v9, v5

    add-float/2addr v15, v11

    aput v15, p0, v14

    .line 633
    add-int/lit8 v14, p1, 0xa

    mul-float v15, v2, v2

    mul-float/2addr v15, v5

    add-float/2addr v15, v7

    aput v15, p0, v14

    .line 635
    .end local v4    # "len":F
    .end local v5    # "nc":F
    .end local v8    # "xy":F
    .end local v9    # "yz":F
    .end local v10    # "zx":F
    .end local v11    # "xs":F
    .end local v12    # "ys":F
    .end local v13    # "zs":F
    :goto_2
    return-void
.end method

.method public static translateM([FIFFF)V
    .locals 6
    .param p0, "m"    # [F
    .param p1, "mOffset"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 518
    add-int v2, p1, v0

    .line 519
    .local v2, "mi":I
    const/16 v3, 0xc

    add-int/2addr v3, v2

    aget v4, p0, v3

    aget v5, p0, v2

    mul-float/2addr v5, p2

    add-int/2addr v1, v2

    aget v1, p0, v1

    mul-float/2addr v1, p3

    add-float/2addr v5, v1

    const/16 v1, 0x8

    add-int/2addr v1, v2

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, p0, v3

    .line 517
    .end local v2    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 7
    .param p0, "tm"    # [F
    .param p1, "tmOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .line 494
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 495
    add-int v2, p1, v1

    add-int v3, p3, v1

    aget v3, p2, v3

    aput v3, p0, v2

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 498
    add-int v3, p1, v0

    .line 499
    .local v3, "tmi":I
    add-int v4, p3, v0

    .line 500
    .local v4, "mi":I
    add-int v5, v2, v3

    aget v6, p2, v4

    mul-float/2addr v6, p4

    add-int/2addr v1, v4

    aget v1, p2, v1

    mul-float/2addr v1, p5

    add-float/2addr v6, v1

    const/16 v1, 0x8

    add-int/2addr v1, v4

    aget v1, p2, v1

    mul-float/2addr v1, p6

    add-float/2addr v6, v1

    add-int v1, v2, v4

    aget v1, p2, v1

    add-float/2addr v6, v1

    aput v6, p0, v5

    .line 497
    .end local v3    # "tmi":I
    .end local v4    # "mi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4
    .param p0, "mTrans"    # [F
    .param p1, "mTransOffset"    # I
    .param p2, "m"    # [F
    .param p3, "mOffset"    # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 115
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 116
    .local v1, "mBase":I
    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    .line 117
    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    .line 118
    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    .line 119
    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x3

    aget v3, p2, v3

    aput v3, p0, v2

    .line 114
    .end local v1    # "mBase":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
