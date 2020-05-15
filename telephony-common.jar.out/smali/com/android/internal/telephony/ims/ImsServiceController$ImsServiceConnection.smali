.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanupConnection()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$700(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$200(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$300(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 139
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): onBindingDied. Starting rebind..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$400(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 141
    return-void

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$500(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 95
    const-string v1, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): onServiceConnected with binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz p2, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    new-instance v3, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {v3, v4, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V

    invoke-static {v1, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$602(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$702(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyImsServiceReady()V

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$800(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 106
    .local v3, "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$900(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v3    # "i":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 117
    :cond_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 110
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsDeathRecipient;->binderDied()V

    .line 115
    :cond_1
    const-string v2, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 120
    return-void

    .line 119
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

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->access$002(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 128
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): onServiceDisconnected. Waiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
