.class final Lcom/android/server/NubiaTrackManager$TrackHandler;
.super Landroid/os/Handler;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackHandler"
.end annotation


# static fields
.field static final TRACK_EVENT_MSG:I = 0x1

.field static final UNBIND_SERVICE_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaTrackManager;


# direct methods
.method public constructor <init>(Lcom/android/server/NubiaTrackManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaTrackManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 61
    iput-object p1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 91
    :pswitch_0
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$200(Lcom/android/server/NubiaTrackManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    monitor-exit v0

    return-void

    .line 95
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v0}, Lcom/android/server/NubiaTrackManager;->access$400(Lcom/android/server/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v0}, Lcom/android/server/NubiaTrackManager;->access$400(Lcom/android/server/NubiaTrackManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$500(Lcom/android/server/NubiaTrackManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 99
    :cond_1
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/NubiaTrackManager;->access$102(Lcom/android/server/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 101
    iget-object v0, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/NubiaTrackManager;->access$202(Lcom/android/server/NubiaTrackManager;Z)Z

    .line 102
    monitor-exit v1

    .line 103
    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 95
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 69
    :pswitch_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    return-void

    .line 73
    :cond_2
    :try_start_3
    sget-object v0, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    :try_start_4
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$200(Lcom/android/server/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$100(Lcom/android/server/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$100(Lcom/android/server/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 76
    monitor-exit v0

    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$300(Lcom/android/server/NubiaTrackManager;)V

    .line 79
    sget-object v1, Lcom/android/server/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 80
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$200(Lcom/android/server/NubiaTrackManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$100(Lcom/android/server/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/android/server/NubiaTrackManager$TrackHandler;->this$0:Lcom/android/server/NubiaTrackManager;

    invoke-static {v1}, Lcom/android/server/NubiaTrackManager;->access$100(Lcom/android/server/NubiaTrackManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 83
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 107
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
