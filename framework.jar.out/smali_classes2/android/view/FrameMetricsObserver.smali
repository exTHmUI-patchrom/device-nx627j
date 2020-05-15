.class public Landroid/view/FrameMetricsObserver;
.super Ljava/lang/Object;
.source "FrameMetricsObserver.java"


# instance fields
.field private mFrameMetrics:Landroid/view/FrameMetrics;

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field mNative:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/os/Looper;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 55
    iget-object v0, p0, Landroid/view/FrameMetricsObserver;->mMessageQueue:Landroid/os/MessageQueue;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/view/FrameMetrics;

    invoke-direct {v0}, Landroid/view/FrameMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    .line 61
    iput-object p3, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 62
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid looper, null message queue\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyDataAvailable(I)V
    .locals 3
    .param p1, "dropCount"    # I

    .line 67
    iget-object v0, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    .line 68
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iget-object v2, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    invoke-interface {v1, v0, v2, p1}, Landroid/view/Window$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    .line 71
    :cond_0
    return-void
.end method
