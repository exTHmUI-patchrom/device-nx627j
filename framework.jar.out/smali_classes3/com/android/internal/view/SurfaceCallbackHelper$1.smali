.class Lcom/android/internal/view/SurfaceCallbackHelper$1;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/SurfaceCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/SurfaceCallbackHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/SurfaceCallbackHelper;

    .line 29
    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 34
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v2, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    if-ge v1, v2, :cond_0

    .line 35
    monitor-exit v0

    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
