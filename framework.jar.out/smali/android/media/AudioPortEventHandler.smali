.class Landroid/media/AudioPortEventHandler;
.super Ljava/lang/Object;
.source "AudioPortEventHandler.java"


# static fields
.field private static final AUDIOPORT_EVENT_NEW_LISTENER:I = 0x4

.field private static final AUDIOPORT_EVENT_PATCH_LIST_UPDATED:I = 0x2

.field private static final AUDIOPORT_EVENT_PORT_LIST_UPDATED:I = 0x1

.field private static final AUDIOPORT_EVENT_SERVICE_DIED:I = 0x3

.field private static final RESCHEDULE_MESSAGE_DELAY_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "AudioPortEventHandler"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mJniCallback:J

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$OnAudioPortUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioPortEventHandler;

    .line 32
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "module_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 175
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPortEventHandler;

    .line 177
    .local v0, "eventHandler":Landroid/media/AudioPortEventHandler;
    if-nez v0, :cond_0

    .line 178
    return-void

    .line 181
    :cond_0
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    .line 183
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 185
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    .line 187
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/media/AudioPortEventHandler;->native_finalize()V

    .line 146
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 149
    :cond_0
    return-void
.end method

.method handler()Landroid/os/Handler;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioPortEventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Landroid/media/AudioPortEventHandler$1;

    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPortEventHandler$1;-><init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/AudioPortEventHandler;->native_setup(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    .line 138
    :goto_0
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
