.class public Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;
.super Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.source "ImsServiceInterfaceAdapter.java"


# static fields
.field private static final SERVICE_ID:I = 0x1


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    .line 45
    return-void
.end method

.method private getInterface()Lcom/android/ims/internal/IImsService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    .line 123
    .local v0, "feature":Lcom/android/ims/internal/IImsService;
    if-eqz v0, :cond_0

    .line 126
    return-object v0

    .line 124
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Binder not Available"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 70
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/ims/internal/IImsService;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public endSession(I)V
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->close(I)V

    .line 54
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    return-object v0
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

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z

    move-result v0

    return v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
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

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V

    .line 115
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    return v0
.end method

.method public turnOffIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    .line 107
    return-void
.end method

.method public turnOnIms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    .line 103
    return-void
.end method
