.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "EGLImpl.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL10;


# instance fields
.field private mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 159
    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 28
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 29
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    return-void
.end method

.method private native _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J
.end method

.method private native _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J
.end method

.method private native _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglGetCurrentContext()J
.end method

.method private native _eglGetCurrentDisplay()J
.end method

.method private native _eglGetCurrentSurface(I)J
.end method

.method private native _eglGetDisplay(Ljava/lang/Object;)J
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J

    move-result-wide v0

    .line 55
    .local v0, "eglContextId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 56
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v2

    .line 58
    :cond_0
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    return-object v2
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J

    move-result-wide v0

    .line 63
    .local v0, "eglSurfaceId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 64
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v2

    .line 66
    :cond_0
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object v2
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 7
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 70
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    .line 71
    .local v0, "sur":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 72
    iget-wide v1, v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v1

    .line 75
    :cond_0
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 5
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "sur":Landroid/view/Surface;
    instance-of v1, p3, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, p3

    check-cast v1, Landroid/view/SurfaceView;

    .line 82
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 83
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    goto :goto_0

    :cond_0
    instance-of v1, p3, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, p3

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 85
    .local v1, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 86
    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    goto :goto_0

    :cond_1
    instance-of v1, p3, Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 87
    move-object v0, p3

    check-cast v0, Landroid/view/Surface;

    .line 91
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 92
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide v1

    .local v1, "eglSurfaceId":J
    :goto_1
    goto :goto_2

    .line 93
    .end local v1    # "eglSurfaceId":J
    :cond_3
    instance-of v1, p3, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_5

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    move-result-wide v1

    goto :goto_1

    .line 97
    .restart local v1    # "eglSurfaceId":J
    :goto_2
    nop

    .line 102
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 103
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v3

    .line 105
    :cond_4
    new-instance v3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    return-object v3

    .line 97
    .end local v1    # "eglSurfaceId":J
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public native eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()J

    move-result-wide v0

    .line 120
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 121
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 123
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 124
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 118
    .end local v0    # "value":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    throw v0
.end method

.method public declared-synchronized eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()J

    move-result-wide v0

    .line 130
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 131
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 133
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 128
    .end local v0    # "value":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    throw v0
.end method

.method public declared-synchronized eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4
    .param p1, "readdraw"    # I

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)J

    move-result-wide v0

    .line 140
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 141
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 143
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 144
    new-instance v2, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 138
    .end local v0    # "value":J
    .end local p1    # "readdraw":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    throw p1
.end method

.method public declared-synchronized eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4
    .param p1, "native_display"    # Ljava/lang/Object;

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)J

    move-result-wide v0

    .line 110
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 111
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 113
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 108
    .end local v0    # "value":J
    .end local p1    # "native_display":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/google/android/gles_jni/EGLImpl;
    throw p1
.end method

.method public native eglGetError()I
.end method

.method public native eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native eglReleaseThread()Z
.end method

.method public native eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native eglWaitGL()Z
.end method

.method public native eglWaitNative(ILjava/lang/Object;)Z
.end method
