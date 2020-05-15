.class Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.super Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;IIIIII)V
    .locals 4
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .line 936
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->this$0:Landroid/opengl/GLSurfaceView;

    .line 937
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;[I)V

    .line 945
    new-array p1, v1, [I

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 946
    iput p2, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 947
    iput p3, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 948
    iput p4, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 949
    iput p5, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 950
    iput p6, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 951
    iput p7, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 952
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .line 983
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 986
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v6, p0

    .line 957
    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 958
    .local v10, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 960
    .local v11, "d":I
    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 962
    .local v12, "s":I
    iget v0, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v11, v0, :cond_0

    iget v0, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v0, :cond_0

    .line 963
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 965
    .local v13, "r":I
    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 967
    .local v14, "g":I
    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 969
    .local v15, "b":I
    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 971
    .local v0, "a":I
    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v13, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v14, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v15, v1, :cond_0

    iget v1, v6, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_0

    .line 973
    return-object v10

    .line 957
    .end local v0    # "a":I
    .end local v10    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11    # "d":I
    .end local v12    # "s":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    .end local v15    # "b":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 977
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
