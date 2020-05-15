.class public abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "newAddress"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .line 850
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .line 864
    return-void
.end method

.method public onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "audioRoute"    # I
    .param p3, "bluetoothAddress"    # Ljava/lang/String;

    .line 879
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .line 852
    return-void
.end method

.method public onCdmaConnectionTimeReset(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 886
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .line 868
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 873
    return-void
.end method

.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 871
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method

.method public onConferenceStarted()V
    .locals 0

    .line 872
    return-void
.end method

.method public onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isConferenceSupported"    # Z

    .line 878
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 867
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .line 859
    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 876
    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "properties"    # I

    .line 860
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 858
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 854
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 874
    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 875
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 885
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .line 856
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 855
    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 883
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .line 857
    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "reason"    # I

    .line 881
    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 880
    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 882
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .line 849
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .line 865
    return-void
.end method

.method public onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "supportedAudioRoutes"    # I

    .line 861
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 863
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .line 853
    return-void
.end method
