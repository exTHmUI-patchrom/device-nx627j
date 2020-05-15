.class public Landroid/net/lowpan/LowpanManager;
.super Ljava/lang/Object;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInterfaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mService:Landroid/net/lowpan/ILowpanManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/lowpan/ILowpanManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 105
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 107
    iput-object p3, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanManager;)V
    .locals 1
    .param p1, "service"    # Landroid/net/lowpan/ILowpanManager;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/net/lowpan/LowpanManager;

    .line 38
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/net/lowpan/LowpanManager;

    .line 38
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/net/lowpan/LowpanManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    const-string/jumbo v0, "lowpan"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/lowpan/LowpanManager;

    return-object v0
.end method

.method public static getManager()Landroid/net/lowpan/LowpanManager;
    .locals 3

    .line 75
    const-string/jumbo v0, "lowpan"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Landroid/net/lowpan/ILowpanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;

    move-result-object v1

    .line 79
    .local v1, "service":Landroid/net/lowpan/ILowpanManager;
    new-instance v2, Landroid/net/lowpan/LowpanManager;

    invoke-direct {v2, v1}, Landroid/net/lowpan/LowpanManager;-><init>(Landroid/net/lowpan/ILowpanManager;)V

    return-object v2

    .line 82
    .end local v1    # "service":Landroid/net/lowpan/ILowpanManager;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getInterface()Landroid/net/lowpan/LowpanInterface;
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanManager;->getInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "ifaceList":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/LowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v1

    return-object v1

    .line 221
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    .locals 6
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .line 127
    const/4 v0, 0x0

    .line 130
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanInterface;

    move-object v0, v2

    .line 135
    :cond_0
    if-nez v0, :cond_1

    .line 136
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "ifaceName":Ljava/lang/String;
    new-instance v3, Landroid/net/lowpan/LowpanInterface;

    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v4, p1, v5}, Landroid/net/lowpan/LowpanInterface;-><init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V

    move-object v0, v3

    .line 140
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :try_start_2
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    nop

    .line 151
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/net/lowpan/LowpanManager$1;

    invoke-direct {v4, p0, v2, p1}, Landroid/net/lowpan/LowpanManager$1;-><init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V

    const/4 v5, 0x0

    .line 152
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "ifaceName":Ljava/lang/String;
    goto :goto_0

    .line 142
    .restart local v2    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 169
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit v1

    .line 172
    nop

    .line 174
    return-object v0

    .line 169
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .line 192
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanInterface;

    move-object v0, v2

    goto :goto_0

    .line 197
    :cond_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    .line 199
    .local v2, "ifaceService":Landroid/net/lowpan/ILowpanInterface;
    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {p0, v2}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v3

    move-object v0, v3

    .line 203
    .end local v2    # "ifaceService":Landroid/net/lowpan/ILowpanInterface;
    :cond_1
    :goto_0
    monitor-exit v1

    .line 206
    nop

    .line 208
    return-object v0

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInterfaceList()[Ljava/lang/String;
    .locals 2

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanManager;->getInterfaceList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInterfaceNoCreate(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    .locals 4
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/LowpanInterface;

    move-object v0, v2

    .line 119
    :cond_0
    monitor-exit v1

    .line 121
    return-object v0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V

    .line 301
    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/net/lowpan/LowpanManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanManager$2;-><init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V

    .line 288
    .local v0, "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener$Stub;
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v1, v0}, Landroid/net/lowpan/ILowpanManager;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 293
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 294
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 4
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .line 309
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    .local v0, "hashCode":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 312
    .local v1, "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener;
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/lowpan/ILowpanManagerListener;

    move-object v1, v3

    .line 314
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-eqz v1, :cond_0

    .line 319
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v2, v1}, Landroid/net/lowpan/ILowpanManager;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    nop

    .line 326
    return-void

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "x":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 324
    .end local v2    # "x":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Attempt to unregister an unknown callback"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
