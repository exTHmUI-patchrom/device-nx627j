.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    if-nez v0, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShaderUtil"

    invoke-static {v2, v0}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .line 36
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "vertexShader":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    return v1

    .line 42
    :cond_0
    const v2, 0x8b30

    invoke-static {v2, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 44
    .local v2, "fragShader":I
    if-nez v2, :cond_1

    .line 45
    return v1

    .line 48
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 50
    .local v3, "program":I
    if-eqz v3, :cond_2

    .line 51
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 53
    .local v5, "linkStatus":[I
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 54
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 55
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 56
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 57
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 58
    const v6, 0x8b82

    invoke-static {v3, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 60
    aget v1, v5, v1

    if-eq v1, v4, :cond_2

    .line 61
    const-string v1, "ShaderUtil"

    const-string v4, "Could not link program: "

    invoke-static {v1, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "ShaderUtil"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 64
    const/4 v3, 0x0

    .line 68
    .end local v5    # "linkStatus":[I
    :cond_2
    return v3
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 81
    const/4 v0, 0x0

    .line 85
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 86
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "ch":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 89
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 93
    .local v3, "buff":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 94
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 95
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v5

    .line 96
    const-string v5, "\\r\\n"

    const-string v6, "\n"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 99
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buff":[B
    .end local v4    # "ch":I
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .line 15
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 17
    .local v0, "shader":I
    if-eqz v0, :cond_0

    .line 18
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 20
    .local v1, "compiled":[I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 21
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 22
    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 24
    aget v2, v1, v3

    if-nez v2, :cond_0

    .line 25
    const-string v2, "ShaderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v2, "ShaderUtil"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 28
    const/4 v0, 0x0

    .line 32
    .end local v1    # "compiled":[I
    :cond_0
    return v0
.end method
