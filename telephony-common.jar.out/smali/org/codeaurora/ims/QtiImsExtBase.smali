.class public abstract Lorg/codeaurora/ims/QtiImsExtBase;
.super Ljava/lang/Object;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    }
.end annotation


# instance fields
.field private mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;-><init>(Lorg/codeaurora/ims/QtiImsExtBase;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    return-object v0
.end method

.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 166
    return-void
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 206
    return-void
.end method

.method protected onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 1
    .param p1, "phoneId"    # I

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 169
    return-void
.end method

.method protected onGetPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 172
    return-void
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 190
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 203
    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 187
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 196
    return-void
.end method

.method protected onRegisterForViceRefreshInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 193
    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 175
    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 179
    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 183
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 162
    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 210
    return-void
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 200
    return-void
.end method
