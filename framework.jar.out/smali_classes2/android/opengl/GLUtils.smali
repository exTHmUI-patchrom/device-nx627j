.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getEGLErrorString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .line 228
    packed-switch p0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :pswitch_0
    const-string v0, "EGL_CONTEXT_LOST"

    return-object v0

    .line 256
    :pswitch_1
    const-string v0, "EGL_BAD_SURFACE"

    return-object v0

    .line 254
    :pswitch_2
    const-string v0, "EGL_BAD_PARAMETER"

    return-object v0

    .line 252
    :pswitch_3
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    return-object v0

    .line 250
    :pswitch_4
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    return-object v0

    .line 248
    :pswitch_5
    const-string v0, "EGL_BAD_MATCH"

    return-object v0

    .line 246
    :pswitch_6
    const-string v0, "EGL_BAD_DISPLAY"

    return-object v0

    .line 244
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    return-object v0

    .line 242
    :pswitch_8
    const-string v0, "EGL_BAD_CONTEXT"

    return-object v0

    .line 240
    :pswitch_9
    const-string v0, "EGL_BAD_CONFIG"

    return-object v0

    .line 238
    :pswitch_a
    const-string v0, "EGL_BAD_ATTRIBUTE"

    return-object v0

    .line 236
    :pswitch_b
    const-string v0, "EGL_BAD_ALLOC"

    return-object v0

    .line 234
    :pswitch_c
    const-string v0, "EGL_BAD_ACCESS"

    return-object v0

    .line 232
    :pswitch_d
    const-string v0, "EGL_NOT_INITIALIZED"

    return-object v0

    .line 230
    :pswitch_e
    const-string v0, "EGL_SUCCESS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInternalFormat(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 41
    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 48
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 51
    return v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown internalformat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getInternalFormat can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getType(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 63
    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 70
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 73
    return v0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "getType can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;I)V
    .locals 7
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "border"    # I

    .line 100
    if-eqz p3, :cond_2

    .line 103
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v5, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "type"    # I
    .param p5, "border"    # I

    .line 126
    if-eqz p3, :cond_2

    .line 129
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .locals 7
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # I

    .line 148
    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/4 v3, -0x1

    const/4 v5, -0x1

    move v1, p0

    move v2, p1

    move-object v4, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .line 183
    if-eqz p4, :cond_2

    .line 186
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 190
    .local v0, "type":I
    const/4 v6, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid Bitmap format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v0    # "type":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    .line 208
    if-eqz p4, :cond_2

    .line 211
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
