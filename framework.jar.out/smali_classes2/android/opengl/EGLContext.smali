.class public Landroid/opengl/EGLContext;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLContext.java"


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .param p1, "handle"    # J

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 32
    :cond_0
    instance-of v1, p1, Landroid/opengl/EGLContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 34
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/opengl/EGLContext;

    .line 35
    .local v1, "that":Landroid/opengl/EGLContext;
    invoke-virtual {p0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method
