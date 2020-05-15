.class Landroid/telephony/ims/compat/feature/MMTelFeature$1;
.super Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.source "MMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/feature/MMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;


# direct methods
.method constructor <init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/compat/feature/MMTelFeature;

    .line 51
    iput-object p1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endSession(I)V
    .locals 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->endSession(I)V

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v1

    .line 163
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 164
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFeatureStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getFeatureState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v1

    .line 178
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 179
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v1

    .line 134
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 135
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsUtImplBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected(II)Z
    .locals 2
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isConnected(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpened()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isOpened()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 2
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public turnOffIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOffIms()V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public turnOnIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOnIms()V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
