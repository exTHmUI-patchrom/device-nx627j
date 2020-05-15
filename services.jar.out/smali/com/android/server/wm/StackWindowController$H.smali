.class final Lcom/android/server/wm/StackWindowController$H;
.super Landroid/os/Handler;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REQUEST_RESIZE:I


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 392
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/StackWindowController;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 393
    iput-object p1, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    .line 394
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    .line 399
    .local v0, "controller":Lcom/android/server/wm/StackWindowController;
    if-eqz v0, :cond_0

    .line 400
    iget-object v1, v0, Lcom/android/server/wm/StackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/StackWindowListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 401
    .local v1, "listener":Lcom/android/server/wm/StackWindowListener;
    :goto_0
    if-nez v1, :cond_1

    .line 402
    return-void

    .line 404
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/server/wm/StackWindowListener;->requestResize(Landroid/graphics/Rect;)V

    .line 409
    :goto_1
    return-void
.end method
