.class public final Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
.super Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/QtiImsExtBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QtiImsExtBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/QtiImsExtBase;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/QtiImsExtBase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/QtiImsExtBase;

    .line 43
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-direct {p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 56
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 57
    return-void
.end method

.method public getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 114
    return-void
.end method

.method public getMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 1
    .param p1, "phoneId"    # I

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0

    return-object v0
.end method

.method public getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 62
    return-void
.end method

.method public getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 67
    return-void
.end method

.method public getRcsAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetRcsAppConfig(I)I

    move-result v0

    return v0
.end method

.method public getVvmAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QtiImsExtBase;->onGetVvmAppConfig(I)I

    move-result v0

    return v0
.end method

.method public querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 93
    return-void
.end method

.method public queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 109
    return-void
.end method

.method public queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 88
    return-void
.end method

.method public registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 98
    return-void
.end method

.method public resumePendingCall(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onResumePendingCall(II)V

    .line 72
    return-void
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/QtiImsExtBase;->onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 78
    return-void
.end method

.method public sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 82
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 83
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 12
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

    .line 49
    move-object v0, p0

    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 51
    return-void
.end method

.method public setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 120
    return-void
.end method

.method public setRcsAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetRcsAppConfig(II)I

    move-result v0

    return v0
.end method

.method public setVvmAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/QtiImsExtBase;->onSetVvmAppConfig(II)I

    move-result v0

    return v0
.end method

.method public updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;->this$0:Lorg/codeaurora/ims/QtiImsExtBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/QtiImsExtBase;->onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 104
    return-void
.end method
