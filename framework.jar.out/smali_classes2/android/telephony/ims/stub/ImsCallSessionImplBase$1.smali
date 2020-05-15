.class Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 107
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 171
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 172
    return-void
.end method

.method public close()V
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->close()V

    .line 111
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->deflect(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 211
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->extendToConference([Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getState()I

    move-result v0

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 191
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 192
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->inviteParticipants([Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isMultiparty()Z

    move-result v0

    return v0
.end method

.method public merge()V
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->merge()V

    .line 202
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 181
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->reject(I)V

    .line 182
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 221
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->removeParticipants([Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 196
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 197
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 226
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendDtmf(CLandroid/os/Message;)V

    .line 227
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttMessage(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 256
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 257
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 261
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyResponse(Z)V

    .line 262
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendUssd(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 150
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 151
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 155
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setMute(Z)V

    .line 156
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 160
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 161
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 167
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .line 231
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startDtmf(C)V

    .line 232
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->stopDtmf()V

    .line 237
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 186
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->terminate(I)V

    .line 187
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 206
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 207
    return-void
.end method
