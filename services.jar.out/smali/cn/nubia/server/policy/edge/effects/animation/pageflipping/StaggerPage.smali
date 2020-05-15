.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
.super Ljava/lang/Object;
.source "StaggerPage.java"


# static fields
.field private static final TRIANGLE_STAGGER:I = 0x6

.field private static final TRIANGLE_STAGGER_SHADOW:I = 0x6


# instance fields
.field private mCbb:Ljava/nio/ByteBuffer;

.field private mFactor:F

.field private mIsleft:Z

.field private final mOffset:[F

.field private mRotation:I

.field private mShadowAlpha:F

.field private mStaggerAlpha:F

.field private mTextureIdStagger:I

.field private mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mVbb:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    .line 30
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    .line 31
    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    .line 32
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    .line 33
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    aput v1, v2, v0

    .line 34
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 35
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 36
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    .line 37
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    .line 38
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 4

    .line 44
    const/4 v0, 0x6

    new-array v1, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-array v2, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 52
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 53
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_1
    const/16 v0, 0xd8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    const/16 v0, 0x90

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method

.method private initLeft(FFFF[FF)V
    .locals 35
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    move-object/from16 v0, p0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "n":I
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float v15, p3, v2

    .line 97
    .end local p3    # "offsetX":F
    .local v15, "offsetX":F
    const/4 v2, 0x0

    move v9, v1

    .end local v1    # "n":I
    .local v2, "i":I
    .local v9, "n":I
    :goto_0
    move v10, v2

    .end local v2    # "i":I
    .local v10, "i":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    if-ge v10, v1, :cond_0

    .line 98
    aget v1, p5, v9

    mul-float v11, v15, v1

    .line 99
    .local v11, "x0":F
    const/4 v12, 0x0

    .line 100
    .local v12, "y0":F
    aget v1, p5, v9

    mul-float v32, v15, v1

    .line 101
    .local v32, "x1":F
    move/from16 v21, p2

    .line 102
    .local v21, "y1":F
    mul-float v1, p1, p4

    aget v2, p5, v9

    mul-float/2addr v2, v15

    add-float v33, v1, v2

    .line 103
    .local v33, "x2":F
    const/16 v34, 0x0

    .line 105
    .local v34, "y2":F
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v16, v1, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, p6

    move/from16 v20, v32

    move/from16 v22, p6

    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v25, p6

    invoke-virtual/range {v16 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 106
    const/4 v13, 0x0

    .line 107
    .local v13, "x0Ex":F
    const/4 v14, 0x0

    .line 108
    .local v14, "y0Ex":F
    const/16 v16, 0x0

    .line 109
    .local v16, "x1Ex":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 110
    .local v17, "y1Ex":F
    move/from16 v6, p4

    .line 111
    .local v6, "x2Ex":F
    const/16 v18, 0x0

    .line 113
    .local v18, "y2Ex":F
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v10

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 115
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v10

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 117
    add-int/lit8 v1, v10, 0x1

    .line 118
    .end local v10    # "i":I
    .local v1, "i":I
    move/from16 v24, p2

    .line 119
    .end local v12    # "y0":F
    .local v24, "y0":F
    mul-float v3, p1, p4

    add-int/lit8 v4, v9, 0x1

    .local v4, "n":I
    aget v5, p5, v9

    .end local v9    # "n":I
    mul-float/2addr v5, v15

    add-float/2addr v3, v5

    .line 120
    .end local v11    # "x0":F
    .local v3, "x0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v22, v5, v1

    move/from16 v23, v3

    move/from16 v26, v32

    move/from16 v27, v21

    move/from16 v28, p6

    move/from16 v29, v33

    move/from16 v30, v34

    move/from16 v31, p6

    invoke-virtual/range {v22 .. v31}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 122
    move/from16 v8, p4

    .line 123
    .end local v13    # "x0Ex":F
    .local v8, "x0Ex":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 125
    .end local v14    # "y0Ex":F
    .local v5, "y0Ex":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v7, v7, v1

    iget v14, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move v9, v5

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v6

    move/from16 v13, v18

    invoke-virtual/range {v7 .. v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 127
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v7, v7, v1

    invoke-virtual {v7, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 97
    .end local v3    # "x0":F
    .end local v5    # "y0Ex":F
    .end local v6    # "x2Ex":F
    .end local v8    # "x0Ex":F
    .end local v16    # "x1Ex":F
    .end local v17    # "y1Ex":F
    .end local v18    # "y2Ex":F
    .end local v21    # "y1":F
    .end local v24    # "y0":F
    .end local v32    # "x1":F
    .end local v33    # "x2":F
    .end local v34    # "y2":F
    add-int/2addr v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v9, v4

    goto/16 :goto_0

    .line 130
    .end local v2    # "i":I
    .end local v4    # "n":I
    .restart local v9    # "n":I
    :cond_0
    return-void
.end method

.method private initRight(FFFF[FF)V
    .locals 45
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    move-object/from16 v0, p0

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "n":I
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float v9, p3, v2

    .line 137
    .end local p3    # "offsetX":F
    .local v9, "offsetX":F
    const/4 v2, 0x0

    .end local v1    # "n":I
    .local v2, "i":I
    .local v10, "n":I
    :goto_0
    move v10, v1

    move v11, v2

    .end local v2    # "i":I
    .local v11, "i":I
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v1, v1

    if-ge v11, v1, :cond_0

    .line 138
    mul-float v1, p1, p4

    aget v2, p5, v10

    mul-float/2addr v2, v9

    sub-float v22, v1, v2

    .line 139
    .local v22, "x0":F
    const/16 v23, 0x0

    .line 140
    .local v23, "y0":F
    mul-float v1, p1, p4

    aget v2, p5, v10

    mul-float/2addr v2, v9

    sub-float v34, v1, v2

    .line 141
    .local v34, "x1":F
    move/from16 v17, p2

    .line 142
    .local v17, "y1":F
    aget v1, p5, v10

    mul-float/2addr v1, v9

    sub-float v35, p1, v1

    .line 143
    .local v35, "x2":F
    const/16 v36, 0x0

    .line 145
    .local v36, "y2":F
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v12, v1, v11

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, p6

    move/from16 v16, v34

    move/from16 v18, p6

    move/from16 v19, v35

    move/from16 v20, v36

    move/from16 v21, p6

    invoke-virtual/range {v12 .. v21}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 146
    move/from16 v2, p4

    .line 147
    .local v2, "x0Ex":F
    const/4 v12, 0x0

    .line 148
    .local v12, "y0Ex":F
    move/from16 v4, p4

    .line 149
    .local v4, "x1Ex":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 150
    .local v13, "y1Ex":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 151
    .local v14, "x2Ex":F
    const/4 v15, 0x0

    .line 153
    .local v15, "y2Ex":F
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v11

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move v3, v12

    move v5, v13

    move v6, v14

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 155
    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v11

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 157
    add-int/lit8 v11, v11, 0x1

    .line 158
    move/from16 v26, p2

    .line 159
    .end local v23    # "y0":F
    .local v26, "y0":F
    add-int/lit8 v1, v10, 0x1

    .restart local v1    # "n":I
    aget v5, p5, v10

    .end local v10    # "n":I
    mul-float/2addr v5, v9

    sub-float v5, p1, v5

    .line 160
    .end local v22    # "x0":F
    .local v5, "x0":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v24, v6, v11

    move/from16 v25, v5

    move/from16 v27, p6

    move/from16 v28, v34

    move/from16 v29, v17

    move/from16 v30, p6

    move/from16 v31, v35

    move/from16 v32, v36

    move/from16 v33, p6

    invoke-virtual/range {v24 .. v33}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 162
    const/high16 v2, 0x3f800000    # 1.0f

    .line 163
    const/high16 v6, 0x3f800000    # 1.0f

    .line 165
    .end local v12    # "y0Ex":F
    .local v6, "y0Ex":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v37, v7, v11

    iget v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v38, v2

    move/from16 v39, v6

    move/from16 v40, v4

    move/from16 v41, v13

    move/from16 v42, v14

    move/from16 v43, v15

    move/from16 v44, v7

    invoke-virtual/range {v37 .. v44}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 167
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v7, v7, v11

    invoke-virtual {v7, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 137
    .end local v2    # "x0Ex":F
    .end local v4    # "x1Ex":F
    .end local v5    # "x0":F
    .end local v6    # "y0Ex":F
    .end local v13    # "y1Ex":F
    .end local v14    # "x2Ex":F
    .end local v15    # "y2Ex":F
    .end local v17    # "y1":F
    .end local v26    # "y0":F
    .end local v34    # "x1":F
    .end local v35    # "x2":F
    .end local v36    # "y2":F
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 170
    .end local v1    # "n":I
    .end local v2    # "i":I
    .restart local v10    # "n":I
    :cond_0
    return-void
.end method

.method private initShaodwLeft(FFFF[FF)V
    .locals 38
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    move-object/from16 v0, p0

    .line 174
    const/high16 v1, 0x41a00000    # 20.0f

    .line 175
    .local v1, "shadowWidth":F
    const/4 v2, 0x0

    .line 176
    .local v2, "n":I
    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float v3, v3, p3

    .line 178
    .end local p3    # "offsetX":F
    .local v3, "offsetX":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 179
    aget v5, p5, v2

    mul-float/2addr v5, v3

    sub-float/2addr v5, v1

    .line 180
    .local v5, "x0":F
    const/16 v16, 0x0

    .line 181
    .local v16, "y0":F
    aget v6, p5, v2

    mul-float/2addr v6, v3

    sub-float v27, v6, v1

    .line 182
    .local v27, "x1":F
    move/from16 v11, p2

    .line 183
    .local v11, "y1":F
    aget v6, p5, v2

    mul-float v28, v3, v6

    .line 184
    .local v28, "x2":F
    const/16 v29, 0x0

    .line 186
    .local v29, "y2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v6, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v12, p6, v7

    move v7, v5

    move/from16 v8, v16

    move/from16 v9, p6

    move/from16 v10, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v15, p6

    invoke-virtual/range {v6 .. v15}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, "x0Ex":F
    const v7, 0x3e4ccccd    # 0.2f

    .line 190
    .local v7, "y0Ex":F
    const/4 v8, 0x0

    .line 191
    .local v8, "x1Ex":F
    const v9, 0x3f4ccccd    # 0.8f

    .line 192
    .local v9, "y1Ex":F
    const v10, 0x3dcccccd    # 0.1f

    .line 193
    .local v10, "x2Ex":F
    const v12, 0x3e4ccccd    # 0.2f

    .line 195
    .local v12, "y2Ex":F
    iget-object v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v17, v13, v4

    iget v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-virtual/range {v17 .. v24}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 197
    iget-object v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v13, v13, v4

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 199
    add-int/lit8 v4, v4, 0x1

    .line 200
    add-int/lit8 v13, v2, 0x1

    .local v13, "n":I
    aget v2, p5, v2

    .end local v2    # "n":I
    mul-float/2addr v2, v3

    .line 201
    .end local v5    # "x0":F
    .local v2, "x0":F
    move/from16 v19, p2

    .line 203
    .end local v16    # "y0":F
    .local v19, "y0":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v17, v5, v4

    move/from16 v18, v2

    move/from16 v20, p6

    move/from16 v21, v27

    move/from16 v22, v11

    move/from16 v23, p6

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, p6

    invoke-virtual/range {v17 .. v26}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 205
    const v5, 0x3dcccccd    # 0.1f

    .line 206
    .end local v6    # "x0Ex":F
    .local v5, "x0Ex":F
    const v6, 0x3f4ccccd    # 0.8f

    .line 208
    .end local v7    # "y0Ex":F
    .local v6, "y0Ex":F
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v30, v7, v4

    iget v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v12

    move/from16 v37, v7

    invoke-virtual/range {v30 .. v37}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 210
    iget-object v7, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v7, v7, v4

    invoke-virtual {v7, v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 178
    .end local v2    # "x0":F
    .end local v5    # "x0Ex":F
    .end local v6    # "y0Ex":F
    .end local v8    # "x1Ex":F
    .end local v9    # "y1Ex":F
    .end local v10    # "x2Ex":F
    .end local v11    # "y1":F
    .end local v12    # "y2Ex":F
    .end local v19    # "y0":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "y2":F
    add-int/2addr v4, v14

    move v2, v13

    goto/16 :goto_0

    .line 213
    .end local v4    # "i":I
    .end local v13    # "n":I
    .local v2, "n":I
    :cond_0
    return-void
.end method

.method private initShaodwRight(FFFF[FF)V
    .locals 36
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "offsetX"    # F
    .param p4, "xExWidth"    # F
    .param p5, "offSetXFactor"    # [F
    .param p6, "z"    # F

    move-object/from16 v0, p0

    .line 217
    const/high16 v12, 0x41a00000    # 20.0f

    .line 218
    .local v12, "shadowWidth":F
    const/4 v2, 0x0

    .line 219
    .local v2, "n":I
    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    mul-float v13, p3, v3

    .line 221
    .end local p3    # "offsetX":F
    .local v13, "offsetX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 222
    aget v4, p5, v2

    mul-float/2addr v4, v13

    sub-float v4, p1, v4

    .line 223
    .local v4, "x0":F
    const/4 v5, 0x0

    .line 224
    .local v5, "y0":F
    aget v6, p5, v2

    mul-float/2addr v6, v13

    sub-float v24, p1, v6

    .line 225
    .local v24, "x1":F
    move/from16 v19, p2

    .line 226
    .local v19, "y1":F
    add-float v25, v4, v12

    .line 227
    .local v25, "x2":F
    const/16 v26, 0x0

    .line 229
    .local v26, "y2":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v14, v6, v3

    const/high16 v6, 0x40000000    # 2.0f

    sub-float v17, p6, v6

    sub-float v20, p6, v6

    sub-float v23, p6, v6

    move v15, v4

    move/from16 v16, v5

    move/from16 v18, v24

    move/from16 v21, v25

    move/from16 v22, v26

    invoke-virtual/range {v14 .. v23}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 231
    const v14, 0x3f666666    # 0.9f

    .line 232
    .local v14, "x0Ex":F
    const v15, 0x3e4ccccd    # 0.2f

    .line 233
    .local v15, "y0Ex":F
    const v16, 0x3f666666    # 0.9f

    .line 234
    .local v16, "x1Ex":F
    const v17, 0x3f4ccccd    # 0.8f

    .line 235
    .local v17, "y1Ex":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 236
    .local v18, "x2Ex":F
    const v20, 0x3e4ccccd    # 0.2f

    .line 238
    .local v20, "y2Ex":F
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v27, v6, v3

    iget v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v28, v14

    move/from16 v29, v15

    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v18

    move/from16 v33, v20

    move/from16 v34, v6

    invoke-virtual/range {v27 .. v34}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 240
    iget-object v6, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v6, v6, v3

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 242
    add-int/lit8 v21, v3, 0x1

    .line 243
    .end local v3    # "i":I
    .local v21, "i":I
    add-int/lit8 v22, v2, 0x1

    .local v22, "n":I
    aget v2, p5, v2

    .end local v2    # "n":I
    mul-float/2addr v2, v13

    sub-float v2, p1, v2

    add-float v23, v2, v12

    .line 244
    .end local v4    # "x0":F
    .local v23, "x0":F
    move/from16 v4, p2

    .line 246
    .end local v5    # "y0":F
    .local v4, "y0":F
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v21

    move/from16 v3, v23

    move/from16 v5, p6

    move/from16 v6, v24

    move/from16 v7, v19

    move/from16 v8, p6

    move/from16 v9, v25

    move/from16 v10, v26

    move v1, v11

    move/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 247
    const/high16 v2, 0x3f800000    # 1.0f

    .line 248
    .end local v14    # "x0Ex":F
    .local v2, "x0Ex":F
    const v3, 0x3f4ccccd    # 0.8f

    .line 250
    .end local v15    # "y0Ex":F
    .local v3, "y0Ex":F
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v27, v5, v21

    iget v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v34, v5

    invoke-virtual/range {v27 .. v34}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 252
    iget-object v5, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v5, v5, v21

    invoke-virtual {v5, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 221
    .end local v2    # "x0Ex":F
    .end local v3    # "y0Ex":F
    .end local v4    # "y0":F
    .end local v16    # "x1Ex":F
    .end local v17    # "y1Ex":F
    .end local v18    # "x2Ex":F
    .end local v19    # "y1":F
    .end local v20    # "y2Ex":F
    .end local v23    # "x0":F
    .end local v24    # "x1":F
    .end local v25    # "x2":F
    .end local v26    # "y2":F
    add-int/lit8 v3, v21, 0x1

    .end local v21    # "i":I
    .local v3, "i":I
    move/from16 v2, v22

    goto/16 :goto_0

    .line 255
    .end local v3    # "i":I
    .end local v22    # "n":I
    .local v2, "n":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 12
    .param p1, "shaderProgram"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 284
    const/4 v0, 0x0

    .line 288
    .local v0, "n":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    if-nez v1, :cond_0

    .line 289
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 294
    .local v1, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 296
    .local v9, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    .local v0, "i":I
    .local v11, "n":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 297
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 299
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStagger:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 300
    add-int/lit8 v11, v11, 0x1

    .line 296
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    if-gtz v11, :cond_3

    .line 308
    return-void

    .line 311
    :cond_3
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 312
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 313
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    .line 312
    invoke-static {v2, v3, v10, v4, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 314
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 315
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 317
    iget v3, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 319
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 320
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 321
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 322
    const/16 v2, 0xde1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 323
    const/4 v2, 0x4

    mul-int/lit8 v3, v11, 0x3

    invoke-static {v2, v10, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 324
    return-void
.end method

.method public onDrawFrameShadow(ILcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 13
    .param p1, "textureId"    # I
    .param p2, "programNormal"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 327
    const/4 v0, 0x0

    .line 331
    .local v0, "n":I
    if-nez p1, :cond_0

    .line 332
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 337
    .local v1, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 339
    .local v9, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    .local v0, "i":I
    .local v11, "n":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    array-length v2, v2

    const/4 v12, 0x1

    if-ge v0, v2, :cond_2

    .line 340
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v12, v2, :cond_1

    .line 341
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 342
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTriangleStaggerShadow:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 343
    add-int/lit8 v11, v11, 0x1

    .line 339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    if-gtz v11, :cond_3

    .line 351
    return-void

    .line 354
    :cond_3
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 355
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 356
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v3

    .line 355
    invoke-static {v2, v12, v10, v3, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 357
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 358
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 360
    iget v3, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 362
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 363
    iget v2, p2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 364
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 365
    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 366
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 367
    const/16 v3, 0x303

    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 368
    const/4 v3, 0x4

    mul-int/lit8 v4, v11, 0x3

    invoke-static {v3, v10, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 369
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 370
    return-void
.end method

.method public onProcess(FF)V
    .locals 16
    .param p1, "width"    # F
    .param p2, "height"    # F

    move-object/from16 v13, p0

    .line 258
    iget-object v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x0

    aget v14, v0, v1

    .line 259
    .local v14, "offsetX":F
    iget-boolean v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const v0, 0x3f733333    # 0.95f

    goto :goto_0

    .line 260
    .local v4, "xExWidth":F
    :goto_1
    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .line 261
    .local v5, "offSetXFactor":[F
    iget-object v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aget v15, v0, v1

    .line 263
    .local v15, "z":F
    iget-boolean v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_1

    .line 264
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initLeft(FFFF[FF)V

    goto :goto_2

    .line 266
    :cond_1
    move-object v6, v13

    move/from16 v7, p1

    move/from16 v8, p2

    move v9, v14

    move v10, v4

    move-object v11, v5

    move v12, v15

    invoke-direct/range {v6 .. v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initRight(FFFF[FF)V

    .line 268
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public onProcessShadow(FF)V
    .locals 16
    .param p1, "width"    # F
    .param p2, "height"    # F

    move-object/from16 v13, p0

    .line 271
    iget-boolean v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const v0, 0x3f733333    # 0.95f

    goto :goto_0

    .line 272
    .local v4, "xExWidth":F
    :goto_1
    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .line 273
    .local v5, "offSetXFactor":[F
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float v14, v0, v1

    .line 274
    .local v14, "offsetX":F
    iget-object v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v15, v0, v1

    .line 276
    .local v15, "z":F
    iget-boolean v0, v13, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    if-eqz v0, :cond_1

    .line 277
    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initShaodwLeft(FFFF[FF)V

    goto :goto_2

    .line 279
    :cond_1
    move-object v6, v13

    move/from16 v7, p1

    move/from16 v8, p2

    move v9, v14

    move v10, v4

    move-object v11, v5

    move v12, v15

    invoke-direct/range {v6 .. v12}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->initShaodwRight(FFFF[FF)V

    .line 281
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .line 81
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mFactor:F

    .line 82
    return-void
.end method

.method public setIsLeft(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .line 63
    iput-boolean p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mIsleft:Z

    .line 64
    return-void
.end method

.method public setOffset(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 71
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 72
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 73
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mOffset:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 74
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 67
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mRotation:I

    .line 68
    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 89
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mShadowAlpha:F

    .line 90
    return-void
.end method

.method public setStaggerAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 85
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mStaggerAlpha:F

    .line 86
    return-void
.end method

.method public setTextureIdStagger(I)V
    .locals 0
    .param p1, "textureId"    # I

    .line 77
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->mTextureIdStagger:I

    .line 78
    return-void
.end method
