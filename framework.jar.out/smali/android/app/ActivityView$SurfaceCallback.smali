.class Landroid/app/ActivityView$SurfaceCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0

    .line 290
    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityView;
    .param p2, "x1"    # Landroid/app/ActivityView$1;

    .line 290
    invoke-direct {p0, p1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 307
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$700(Landroid/app/ActivityView;)I

    move-result v1

    invoke-virtual {v0, p3, p4, v1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 310
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$600(Landroid/app/ActivityView;)V

    .line 311
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 293
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityView;->access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 294
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$400(Landroid/app/ActivityView;)V

    .line 296
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 302
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$600(Landroid/app/ActivityView;)V

    .line 303
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 315
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$100(Landroid/app/ActivityView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 316
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityView;->access$102(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 317
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$800(Landroid/app/ActivityView;)V

    .line 321
    return-void
.end method
