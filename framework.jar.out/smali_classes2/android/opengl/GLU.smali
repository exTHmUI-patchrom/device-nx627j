.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 244
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .line 36
    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 50
    :pswitch_0
    const-string/jumbo v0, "out of memory"

    return-object v0

    .line 48
    :pswitch_1
    const-string/jumbo v0, "stack underflow"

    return-object v0

    .line 46
    :pswitch_2
    const-string/jumbo v0, "stack overflow"

    return-object v0

    .line 44
    :pswitch_3
    const-string v0, "invalid operation"

    return-object v0

    .line 42
    :pswitch_4
    const-string v0, "invalid value"

    return-object v0

    .line 40
    :pswitch_5
    const-string v0, "invalid enum"

    return-object v0

    .line 38
    :cond_0
    const-string/jumbo v0, "no error"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 13
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "eyeX"    # F
    .param p2, "eyeY"    # F
    .param p3, "eyeZ"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "upX"    # F
    .param p8, "upY"    # F
    .param p9, "upZ"    # F

    .line 75
    sget-object v12, Landroid/opengl/GLU;->sScratch:[F

    .line 76
    .local v12, "scratch":[F
    monitor-enter v12

    .line 77
    const/4 v2, 0x0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    const/4 v0, 0x0

    move-object v1, p0

    :try_start_1
    invoke-interface {v1, v12, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 80
    monitor-exit v12

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F

    .line 94
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 95
    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 11
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "zNear"    # F
    .param p4, "zFar"    # F

    .line 113
    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    .line 114
    .local v0, "top":F
    neg-float v8, v0

    .line 115
    .local v8, "bottom":F
    mul-float v9, v8, p2

    .line 116
    .local v9, "left":F
    mul-float v10, v0, p2

    .line 117
    .local v10, "right":F
    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v8

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 118
    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 12
    .param p0, "objX"    # F
    .param p1, "objY"    # F
    .param p2, "objZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "win"    # [F
    .param p10, "winOffset"    # I

    .line 150
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 151
    .local v7, "scratch":[F
    monitor-enter v7

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "M_OFFSET":I
    const/16 v8, 0x10

    .line 154
    .local v8, "V_OFFSET":I
    const/16 v9, 0x14

    .line 155
    .local v9, "V2_OFFSET":I
    const/4 v2, 0x0

    move-object v1, v7

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p3

    move/from16 v6, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 158
    const/16 v1, 0x10

    aput p0, v7, v1

    .line 159
    const/16 v1, 0x11

    aput p1, v7, v1

    .line 160
    const/16 v1, 0x12

    aput p2, v7, v1

    .line 161
    const/16 v1, 0x13

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v1

    .line 163
    const/16 v2, 0x14

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v1, v7

    move-object v3, v7

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 166
    const/16 v1, 0x17

    aget v1, v7, v1

    .line 167
    .local v1, "w":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 168
    const/4 v2, 0x0

    monitor-exit v7

    return v2

    .line 171
    :cond_0
    div-float v2, v10, v1

    .line 173
    .local v2, "rw":F
    aget v3, p7, p8

    int-to-float v3, v3

    add-int/lit8 v4, p8, 0x2

    aget v4, p7, v4

    int-to-float v4, v4

    const/16 v5, 0x14

    aget v5, v7, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v10

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p9, p10

    .line 177
    add-int/lit8 v3, p10, 0x1

    add-int/lit8 v4, p8, 0x1

    aget v4, p7, v4

    int-to-float v4, v4

    add-int/lit8 v6, p8, 0x3

    aget v6, p7, v6

    int-to-float v6, v6

    const/16 v11, 0x15

    aget v11, v7, v11

    mul-float/2addr v11, v2

    add-float/2addr v11, v10

    mul-float/2addr v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, p9, v3

    .line 180
    add-int/lit8 v3, p10, 0x2

    const/16 v4, 0x16

    aget v4, v7, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v10

    mul-float/2addr v4, v5

    aput v4, p9, v3

    .line 181
    .end local v0    # "M_OFFSET":I
    .end local v1    # "w":F
    .end local v2    # "rw":F
    .end local v8    # "V_OFFSET":I
    .end local v9    # "V2_OFFSET":I
    monitor-exit v7

    .line 183
    const/4 v0, 0x1

    return v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 12
    .param p0, "winX"    # F
    .param p1, "winY"    # F
    .param p2, "winZ"    # F
    .param p3, "model"    # [F
    .param p4, "modelOffset"    # I
    .param p5, "project"    # [F
    .param p6, "projectOffset"    # I
    .param p7, "view"    # [I
    .param p8, "viewOffset"    # I
    .param p9, "obj"    # [F
    .param p10, "objOffset"    # I

    .line 216
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 217
    .local v7, "scratch":[F
    monitor-enter v7

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "PM_OFFSET":I
    const/16 v8, 0x10

    .line 220
    .local v8, "INVPM_OFFSET":I
    const/4 v9, 0x0

    .line 221
    .local v9, "V_OFFSET":I
    const/4 v2, 0x0

    move-object v1, v7

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p3

    move/from16 v6, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 224
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v7, v1, v7, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    monitor-exit v7

    return v2

    .line 228
    :cond_0
    add-int/lit8 v1, p8, 0x0

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p0, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    add-int/lit8 v4, p8, 0x2

    aget v4, p7, v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    aput v1, v7, v2

    .line 231
    add-int/lit8 v1, p8, 0x1

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v3

    add-int/lit8 v2, p8, 0x3

    aget v2, p7, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    const/4 v10, 0x1

    aput v1, v7, v10

    .line 234
    mul-float/2addr v3, p2

    sub-float/2addr v3, v4

    const/4 v1, 0x2

    aput v3, v7, v1

    .line 235
    const/4 v1, 0x3

    aput v4, v7, v1

    .line 237
    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v1, p9

    move/from16 v2, p10

    move-object v3, v7

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 239
    .end local v0    # "PM_OFFSET":I
    .end local v8    # "INVPM_OFFSET":I
    .end local v9    # "V_OFFSET":I
    monitor-exit v7

    .line 241
    return v10

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
