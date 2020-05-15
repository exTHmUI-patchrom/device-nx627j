.class Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 9
    .param p2, "withDepthBuffer"    # Z

    .line 1005
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    .line 1006
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    .line 1007
    return-void
.end method
