.class public abstract Landroid/media/soundtrigger/SoundTriggerDetectionService;
.super Landroid/app/Service;
.source "SoundTriggerDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/media/soundtrigger/SoundTriggerDetectionService;

    .line 66
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/soundtrigger/SoundTriggerDetectionService;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->removeClient(Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/soundtrigger/SoundTriggerDetectionService;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->setClient(Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    return-void
.end method

.method private removeClient(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 105
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onDisconnected(Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setClient(Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "client"    # Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 96
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onConnected(Ljava/util/UUID;Landroid/os/Bundle;)V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 88
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;-><init>(Landroid/media/soundtrigger/SoundTriggerDetectionService;)V

    return-object v0
.end method

.method public onConnected(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 123
    return-void
.end method

.method public onDisconnected(Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 140
    return-void
.end method

.method public onError(Ljava/util/UUID;Landroid/os/Bundle;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "opId"    # I
    .param p4, "status"    # I

    .line 168
    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->operationFinished(Ljava/util/UUID;I)V

    .line 169
    return-void
.end method

.method public onGenericRecognitionEvent(Ljava/util/UUID;Landroid/os/Bundle;ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "opId"    # I
    .param p4, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 154
    invoke-virtual {p0, p1, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->operationFinished(Ljava/util/UUID;I)V

    .line 155
    return-void
.end method

.method public abstract onStopOperation(Ljava/util/UUID;Landroid/os/Bundle;I)V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public final operationFinished(Ljava/util/UUID;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "opId"    # I

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 193
    .local v1, "client":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    if-nez v1, :cond_0

    .line 194
    sget-object v2, Landroid/media/soundtrigger/SoundTriggerDetectionService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operationFinished called, but no client for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Was this called after onDisconnected?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-interface {v1, p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;->onOpFinished(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .end local v1    # "client":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/soundtrigger/SoundTriggerDetectionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operationFinished, remote exception for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
