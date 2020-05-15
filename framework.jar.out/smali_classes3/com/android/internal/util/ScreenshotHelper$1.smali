.class Lcom/android/internal/util/ScreenshotHelper$1;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/ScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 56
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v2}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelper;->access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 62
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$1;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$300(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 64
    :cond_0
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
