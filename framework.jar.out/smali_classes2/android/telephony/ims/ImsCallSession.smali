.class public Landroid/telephony/ims/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;,
        Landroid/telephony/ims/ImsCallSession$Listener;,
        Landroid/telephony/ims/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Landroid/telephony/ims/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 469
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 471
    if-eqz p1, :cond_0

    .line 473
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$1;)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    :goto_0
    goto :goto_1

    .line 477
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 479
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;

    .line 483
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 484
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 485
    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/ImsCallSession;

    .line 41
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/ims/ImsCallSession;

    .line 41
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 756
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 757
    return-void

    .line 761
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 764
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 491
    monitor-enter p0

    .line 492
    :try_start_0
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 493
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 497
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 501
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 772
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 773
    return-void

    .line 777
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 780
    :goto_0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 893
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 894
    return-void

    .line 898
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 901
    :goto_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 510
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 511
    return-object v1

    .line 515
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 527
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    return-object v1

    .line 532
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 544
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 545
    return-object v1

    .line 549
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 596
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 597
    return-object v1

    .line 601
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 561
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    return-object v1

    .line 566
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .line 656
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 2

    .line 614
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 615
    return v1

    .line 619
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 579
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 580
    return-object v1

    .line 584
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 822
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 823
    return-void

    .line 827
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 830
    :goto_0
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 911
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 912
    return-void

    .line 916
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 919
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 2

    .line 632
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 633
    return v1

    .line 636
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v0

    .line 637
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 647
    return v1

    .line 645
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 2

    .line 665
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 666
    return v1

    .line 670
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1012
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1013
    return v1

    .line 1017
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public merge()V
    .locals 1

    .line 857
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 858
    return-void

    .line 862
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 865
    :goto_0
    return-void
.end method

.method public reject(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 789
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 790
    return-void

    .line 794
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 797
    :goto_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 929
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 930
    return-void

    .line 934
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 937
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 840
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 841
    return-void

    .line 845
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 848
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 948
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 949
    return-void

    .line 953
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 956
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1029
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 1030
    return-void

    .line 1034
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1037
    :goto_0
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1045
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1050
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1053
    :goto_0
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .param p1, "response"    # Z

    .line 1061
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 1062
    return-void

    .line 1066
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1069
    :goto_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 996
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 997
    return-void

    .line 1001
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    goto :goto_0

    .line 1002
    :catch_0
    move-exception v0

    .line 1004
    :goto_0
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;

    .line 685
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 686
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 694
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 695
    return-void

    .line 699
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 702
    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 716
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 717
    return-void

    .line 721
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 724
    :goto_0
    return-void
.end method

.method public start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 738
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 739
    return-void

    .line 743
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 746
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .line 966
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 967
    return-void

    .line 971
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 974
    :goto_0
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .line 980
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 981
    return-void

    .line 985
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 988
    :goto_0
    return-void
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 805
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 806
    return-void

    .line 810
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 813
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1441
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 875
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 876
    return-void

    .line 880
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 883
    :goto_0
    return-void
.end method
