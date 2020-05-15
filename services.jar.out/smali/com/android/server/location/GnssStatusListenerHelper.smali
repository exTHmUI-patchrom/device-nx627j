.class abstract Lcom/android/server/location/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 33
    const-string v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->setSupported(Z)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssStatusListenerHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    .line 31
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GnssStatusListenerHelper;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GnssStatusListenerHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssStatusListenerHelper;->isProcessFrozen(II)Z

    move-result v0

    return v0
.end method

.method private isProcessFrozen(II)Z
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "type"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "isProcessFrozenFlag":Z
    invoke-static {p1}, Lnubia/os/ApplicationManager$Trigger;->isProcessFrozen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_0
    return v0
.end method


# virtual methods
.method public addCallPid(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callPid"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssStatusListener;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstFix(I)V
    .locals 1
    .param p1, "timeToFirstFix"    # I

    .line 98
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$3;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I)V

    .line 110
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 111
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GnssStatusListenerHelper$5;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V

    .line 154
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 155
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1, "isNavigating"    # Z

    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$1;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    goto :goto_0

    .line 81
    .end local v0    # "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    :cond_0
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$2;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    .line 94
    .restart local v0    # "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 95
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F

    .line 120
    new-instance v8, Lcom/android/server/location/GnssStatusListenerHelper$4;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GnssStatusListenerHelper$4;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V

    .line 138
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 139
    return-void
.end method

.method protected registerWithService()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public removeCallPid(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callPid"    # I

    .line 59
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected unregisterFromService()V
    .locals 0

    .line 43
    return-void
.end method
