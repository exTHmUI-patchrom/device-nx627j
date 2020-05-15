.class public abstract Lcn/nubia/server/edge/EdgeEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "EdgeEventDispatcher.java"


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field private mDeadKey:Landroid/os/IBinder;

.field mListenerEntrysArray:[Ljava/lang/Object;

.field mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .line 36
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 26
    const-string v0, "EdgeEventDispatcher"

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mDeadKey:Landroid/os/IBinder;

    .line 137
    new-instance v0, Lcn/nubia/server/edge/EdgeEventDispatcher$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/edge/EdgeEventDispatcher$1;-><init>(Lcn/nubia/server/edge/EdgeEventDispatcher;)V

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/edge/EdgeEventDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/edge/EdgeEventDispatcher;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->isScreenSaverShow:Z

    return p1
.end method

.method private notifyAndRemoveDeadListener(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 65
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "i":I
    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v1

    .line 69
    .end local v1    # "i":I
    move v1, v4

    goto :goto_0

    .line 74
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .line 75
    .local v1, "listenerEntrys":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 77
    .local v2, "deadObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 79
    :try_start_1
    aget-object v3, v1, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mDeadKey:Landroid/os/IBinder;

    .line 81
    if-eqz v3, :cond_1

    .line 82
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcn/nubia/server/edge/EdgeEventDispatcher;->notifyListener(Landroid/view/MotionEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/lang/Object;>;"
    goto :goto_2

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 84
    :catch_1
    move-exception v3

    .line 85
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mDeadKey:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v4, "EdgeEventDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dead objects size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dead object is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mDeadKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v3    # "e":Landroid/os/DeadObjectException;
    :cond_1
    :goto_2
    nop

    .line 77
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 92
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 93
    .local v4, "o":Landroid/os/IBinder;
    iget-object v5, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v4    # "o":Landroid/os/IBinder;
    goto :goto_4

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .line 98
    :cond_4
    monitor-exit v3

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 75
    .end local v1    # "listenerEntrys":[Ljava/lang/Object;
    .end local v2    # "deadObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method protected abstract notifyListener(Landroid/view/MotionEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 47
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 49
    iget-boolean v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->isScreenSaverShow:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 50
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 51
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcn/nubia/server/edge/EdgeEventDispatcher;->notifyAndRemoveDeadListener(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/nubia/server/edge/EdgeEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/server/edge/EdgeEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method

.method public registerEventListener(Ljava/lang/Object;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 109
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 110
    move-object v1, p1

    check-cast v1, Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 111
    .local v1, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .end local v1    # "key":Landroid/os/IBinder;
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterEventListener(Ljava/lang/Object;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 127
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 128
    move-object v1, p1

    check-cast v1, Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 129
    .local v1, "key":Landroid/os/IBinder;
    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/server/edge/EdgeEventDispatcher;->mListenerEntrysArray:[Ljava/lang/Object;

    .end local v1    # "key":Landroid/os/IBinder;
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
