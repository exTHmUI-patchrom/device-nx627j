.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# static fields
.field private static final DIST_ICON:I = 0x14

.field private static final OFFSET_ICON:I = 0x3c

.field private static final SIZE_ICON:I = 0x32

.field private static final TRIANGLE_ICON:I = 0x2


# instance fields
.field private mAlpha:F

.field private mCbb:Ljava/nio/ByteBuffer;

.field private mDensity:F

.field private mFactor:F

.field private final mIsLeft:Z

.field private final mIsUpIcon:Z

.field private mScreenHeight:I

.field private mTextureId:I

.field private mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mVbb:Ljava/nio/ByteBuffer;

.field private final mY:F


# direct methods
.method public constructor <init>(FZFZ)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "isLeft"    # Z
    .param p3, "density"    # F
    .param p4, "isUpIcon"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    .line 31
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    .line 32
    iput-boolean p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsLeft:Z

    .line 33
    iput-boolean p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 4

    .line 38
    const/16 v0, 0x48

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    .line 41
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    const/4 v0, 0x2

    new-array v1, v0, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 45
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v3, v2, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private isNeedDraw()Z
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 13
    .param p1, "shaderProgram"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .line 103
    const/4 v0, 0x0

    .line 107
    .local v0, "n":I
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->isNeedDraw()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 112
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 113
    .local v1, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 115
    .local v9, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    .local v0, "i":I
    .local v11, "n":I
    :goto_0
    const/4 v2, 0x2

    const/4 v12, 0x1

    if-ge v0, v2, :cond_2

    .line 116
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v12, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 118
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 119
    add-int/lit8 v11, v11, 0x1

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    if-gtz v11, :cond_3

    .line 126
    return-void

    .line 129
    :cond_3
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 130
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    .line 131
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v3

    .line 130
    invoke-static {v2, v12, v10, v3, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 132
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mAlpha:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 133
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 135
    iget v3, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 140
    const/16 v2, 0xde1

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 141
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 142
    const/16 v3, 0x303

    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 143
    const/4 v3, 0x4

    mul-int/lit8 v4, v11, 0x3

    invoke-static {v3, v10, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 144
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 145
    return-void

    .line 108
    .end local v1    # "mVertexBuffer":Ljava/nio/FloatBuffer;
    .end local v9    # "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    .end local v11    # "n":I
    .local v0, "n":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onProcess(III)V
    .locals 35
    .param p1, "rotation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    move-object/from16 v0, p0

    .line 50
    const/4 v1, 0x0

    .line 57
    .local v1, "i":I
    const/high16 v21, -0x3c600000    # -320.0f

    .line 58
    .local v21, "z":F
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v2

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mFactor:F

    mul-float v22, v3, v2

    .line 60
    .local v22, "offsetY":F
    move/from16 v15, p3

    iput v15, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    .line 62
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->isNeedDraw()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 66
    :cond_0
    iget-boolean v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsLeft:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v12, 0x42480000    # 50.0f

    if-eqz v2, :cond_1

    .line 67
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v3, v2

    .line 69
    .local v3, "x0":F
    move/from16 v14, p2

    goto :goto_0

    .end local v3    # "x0":F
    :cond_1
    move/from16 v14, p2

    int-to-float v2, v14

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v4, v12

    sub-float/2addr v2, v4

    iget v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v3, v4

    sub-float v3, v2, v3

    .restart local v3    # "x0":F
    :goto_0
    move v13, v3

    .line 72
    .end local v3    # "x0":F
    .local v13, "x0":F
    iget-boolean v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-eqz v2, :cond_2

    .line 73
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    iget v3, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v3, v12

    sub-float/2addr v2, v3

    add-float v2, v2, v22

    .local v2, "y0":F
    goto :goto_1

    .line 75
    .end local v2    # "y0":F
    :cond_2
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    add-float v2, v2, v22

    .restart local v2    # "y0":F
    :goto_1
    move/from16 v16, v2

    .line 78
    .end local v2    # "y0":F
    .local v16, "y0":F
    move v6, v13

    .line 79
    .local v6, "x1":F
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v2, v12

    add-float v23, v16, v2

    .line 80
    .local v23, "y1":F
    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v2, v12

    add-float v24, v13, v2

    .line 81
    .local v24, "x2":F
    move/from16 v10, v16

    .line 82
    .local v10, "y2":F
    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v1

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, v21

    move/from16 v7, v23

    move/from16 v8, v21

    move/from16 v9, v24

    move/from16 v11, v21

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "x0Ex":F
    const/4 v3, 0x0

    .line 85
    .local v3, "y0Ex":F
    const/4 v4, 0x0

    .line 86
    .local v4, "x1Ex":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 87
    .local v5, "y1Ex":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 88
    .local v7, "x2Ex":F
    const/4 v8, 0x0

    .line 89
    .local v8, "y2Ex":F
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v25, v9, v1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, p1

    invoke-virtual/range {v25 .. v32}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 90
    iget-object v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v9, v9, v1

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 92
    add-int/2addr v1, v11

    .line 93
    iget v9, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v13

    .line 94
    .end local v13    # "x0":F
    .local v9, "x0":F
    iget v13, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mDensity:F

    mul-float/2addr v12, v13

    add-float v33, v16, v12

    .line 95
    .end local v16    # "y0":F
    .local v33, "y0":F
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v12, v12, v1

    move v13, v11

    move-object v11, v12

    move v12, v9

    move/from16 v34, v2

    move v2, v13

    move/from16 v13, v33

    .end local v2    # "x0Ex":F
    .local v34, "x0Ex":F
    move/from16 v14, v21

    move/from16 v15, v24

    move/from16 v17, v21

    move/from16 v18, v6

    move/from16 v19, v23

    move/from16 v20, v21

    invoke-virtual/range {v11 .. v20}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 96
    const/high16 v11, 0x3f800000    # 1.0f

    .line 97
    .end local v34    # "x0Ex":F
    .local v11, "x0Ex":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 98
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v25, v12, v1

    move/from16 v26, v11

    move/from16 v27, v3

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v4

    move/from16 v31, v5

    invoke-virtual/range {v25 .. v32}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 99
    iget-object v12, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v12, v12, v1

    invoke-virtual {v12, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 100
    return-void

    .line 63
    .end local v3    # "y0Ex":F
    .end local v4    # "x1Ex":F
    .end local v5    # "y1Ex":F
    .end local v6    # "x1":F
    .end local v7    # "x2Ex":F
    .end local v8    # "y2Ex":F
    .end local v9    # "x0":F
    .end local v10    # "y2":F
    .end local v11    # "x0Ex":F
    .end local v23    # "y1":F
    .end local v24    # "x2":F
    .end local v33    # "y0":F
    :cond_3
    :goto_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 152
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mAlpha:F

    .line 153
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .line 148
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mFactor:F

    .line 149
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .line 161
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    .line 162
    return-void
.end method
