.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;
.super Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 753
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v0, p1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    return-void
.end method


# virtual methods
.method protected onCallEnded(I)V
    .locals 7
    .param p1, "cause"    # I

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setDisconnectCause(I)V

    .line 759
    :cond_0
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$600(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;

    move-result-object v1

    .line 763
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$602(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;

    .line 764
    if-nez v1, :cond_1

    .line 765
    const-string v2, ""

    goto :goto_0

    .line 766
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "sessionState":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SipAudioCallAdapter] onCallEnded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 768
    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$700(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 769
    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", on phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 770
    invoke-virtual {v6}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-static {v4, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 771
    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {v1, v3}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 773
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->close()V

    .line 775
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 776
    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    .end local v2    # "sessionState":Ljava/lang/String;
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 784
    :cond_0
    return-void
.end method

.method public onCallHeld(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Landroid/net/sip/SipAudioCall;)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 791
    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/sip/SipAudioCall;)V
    .locals 5
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .line 795
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 796
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/sip/SipPhone;->access$1100(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 797
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, v1, :cond_0

    monitor-exit v0

    return-void

    .line 798
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    goto :goto_1

    .line 801
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 802
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 804
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    goto :goto_0

    .line 805
    :catch_0
    move-exception v2

    .line 807
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const/4 v3, 0x3

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    .line 808
    monitor-exit v0

    return-void

    .line 811
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->access$1200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 813
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 815
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$700(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->hidePii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 818
    invoke-virtual {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 820
    .end local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected onError(I)V
    .locals 3
    .param p1, "cause"    # I

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(I)V

    .line 827
    return-void
.end method
