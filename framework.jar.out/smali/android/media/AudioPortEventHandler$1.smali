.class Landroid/media/AudioPortEventHandler$1;
.super Landroid/os/Handler;
.source "AudioPortEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioPortEventHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioPortEventHandler;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 63
    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    iget-object v1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v1}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_0
    iget-object v0, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v0}, Landroid/media/AudioPortEventHandler;->access$000(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_3

    .line 82
    :cond_2
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    return-void

    .line 89
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v2, :cond_5

    .line 92
    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    .line 93
    .local v2, "status":I
    if-eqz v2, :cond_5

    .line 98
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Landroid/media/AudioPortEventHandler$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v3, v5, v6}, Landroid/media/AudioPortEventHandler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    return-void

    .line 104
    .end local v2    # "status":I
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 124
    :pswitch_0
    nop

    .local v5, "i":I
    :goto_1
    move v2, v5

    .end local v5    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v3}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    .line 124
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 127
    .end local v5    # "i":I
    :cond_6
    goto :goto_4

    .line 107
    :pswitch_1
    new-array v2, v5, [Landroid/media/AudioPort;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPort;

    .line 108
    .local v2, "portList":[Landroid/media/AudioPort;
    move v6, v5

    .local v6, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 109
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v7, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 111
    .end local v6    # "i":I
    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v3, :cond_8

    .line 112
    goto :goto_4

    .line 117
    .end local v2    # "portList":[Landroid/media/AudioPort;
    :cond_8
    :pswitch_2
    new-array v2, v5, [Landroid/media/AudioPatch;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPatch;

    .line 118
    .local v2, "patchList":[Landroid/media/AudioPatch;
    nop

    .restart local v5    # "i":I
    :goto_3
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v5, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    .line 118
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 121
    .end local v5    # "i":I
    :cond_9
    nop

    .line 132
    .end local v2    # "patchList":[Landroid/media/AudioPatch;
    :goto_4
    return-void

    .line 76
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    .end local v1    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
