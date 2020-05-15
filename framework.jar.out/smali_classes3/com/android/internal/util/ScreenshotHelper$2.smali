.class Lcom/android/internal/util/ScreenshotHelper$2;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$hasNav:Z

.field final synthetic val$hasStatus:Z

.field final synthetic val$mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/ScreenshotHelper;

    .line 69
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    iput p2, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$screenshotType:I

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$hasStatus:Z

    iput-boolean p6, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$hasNav:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 72
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 77
    .local v1, "messenger":Landroid/os/Messenger;
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$screenshotType:I

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 78
    .local v2, "msg":Landroid/os/Message;
    move-object v3, p0

    .line 79
    .local v3, "myConn":Landroid/content/ServiceConnection;
    new-instance v4, Lcom/android/internal/util/ScreenshotHelper$2$1;

    iget-object v5, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/android/internal/util/ScreenshotHelper$2$1;-><init>(Lcom/android/internal/util/ScreenshotHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 91
    .local v4, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 92
    iget-boolean v5, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$hasStatus:Z

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 93
    iget-boolean v5, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$hasNav:Z

    iput v5, v2, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "ScreenshotHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t take screenshot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "myConn":Landroid/content/ServiceConnection;
    .end local v4    # "h":Landroid/os/Handler;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 104
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->access$000(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$200(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v2}, Lcom/android/internal/util/ScreenshotHelper;->access$100(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelper;->access$102(Lcom/android/internal/util/ScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 108
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$2;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelper;->access$300(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 111
    :cond_0
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
