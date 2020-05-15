.class public Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 182
    return-void
.end method

.method public close()V
    .locals 0

    .line 68
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 191
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 275
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 224
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 286
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public merge()V
    .locals 0

    .line 251
    return-void
.end method

.method public reject(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 201
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 297
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 236
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 308
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 373
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 357
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 365
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 335
    return-void
.end method

.method public final setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;-><init>(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 49
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 60
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .line 137
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 154
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 171
    return-void
.end method

.method public startDtmf(C)V
    .locals 0
    .param p1, "c"    # C

    .line 319
    return-void
.end method

.method public stopDtmf()V
    .locals 0

    .line 326
    return-void
.end method

.method public terminate(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 212
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 263
    return-void
.end method
