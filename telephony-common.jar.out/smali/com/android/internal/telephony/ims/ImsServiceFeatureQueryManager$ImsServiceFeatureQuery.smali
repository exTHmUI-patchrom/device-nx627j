.class final Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsServiceFeatureQuery"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceFeatureQuery"


# instance fields
.field private final mIntentFilter:Ljava/lang/String;

.field private final mName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "intentFilter"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    .line 49
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$000(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$200(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$300(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V
    .locals 4
    .param p1, "controller"    # Landroid/telephony/ims/aidl/IImsServiceController;

    .line 88
    :try_start_0
    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsServiceController;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v0, "config":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    nop

    .line 93
    nop

    .line 95
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v1

    .line 97
    .local v1, "servicePairs":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$100(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 99
    return-void

    .line 89
    .end local v0    # "config":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .end local v1    # "servicePairs":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsServiceFeatureQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImsFeatures - error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$100(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 71
    const-string v0, "ImsServiceFeatureQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected for component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-static {p2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "ImsServiceFeatureQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder null, cleaning up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 78
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 82
    const-string v0, "ImsServiceFeatureQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected for component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public start()Z
    .locals 3

    .line 57
    const-string v0, "ImsServiceFeatureQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: intent filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "imsServiceIntent":Landroid/content/Intent;
    const v1, 0x4000041

    .line 61
    .local v1, "serviceFlags":I
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$000(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 62
    .local v2, "bindStarted":Z
    if-nez v2, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 66
    :cond_0
    return v2
.end method
