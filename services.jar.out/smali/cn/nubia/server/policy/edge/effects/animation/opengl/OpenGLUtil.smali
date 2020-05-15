.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;
.super Ljava/lang/Object;
.source "OpenGLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTexture(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 16
    const/16 v0, 0x2601

    invoke-static {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static addTexture(Landroid/graphics/Bitmap;I)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filterType"    # I

    .line 20
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 21
    .local v1, "textures":[I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 22
    aget v0, v1, v2

    .line 23
    .local v0, "textureId":I
    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    int-to-float v4, p1

    const/16 v5, 0x2801

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 26
    int-to-float v4, p1

    const/16 v5, 0x2800

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 28
    const v4, 0x47012f00    # 33071.0f

    const/16 v5, 0x2802

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 30
    const/16 v5, 0x2803

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 32
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 36
    return v0
.end method

.method public static delTextures(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p0, "textureIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 75
    .local v1, "idBuffer":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 76
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 81
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 85
    return-void
.end method

.method public static delTextures([I)V
    .locals 5
    .param p0, "textureIdList"    # [I

    .line 43
    array-length v0, p0

    .line 45
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 51
    .local v1, "idBuffer":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 52
    aget v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 57
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 61
    return-void
.end method
