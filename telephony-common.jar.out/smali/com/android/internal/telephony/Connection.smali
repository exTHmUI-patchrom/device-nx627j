.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$Capability;,
        Lcom/android/internal/telephony/Connection$PostDialListener;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Connection"


# instance fields
.field protected mAddress:Ljava/lang/String;

.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowHoldingVideoCall:Z

.field private mAnsweringDisconnectsActiveCall:Z

.field private mAudioModeIsVoip:Z

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCause:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field private mConnectionCapabilities:I

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsPulledCall:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextPostDialChar:I

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPhoneType:I

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field protected mPostDialString:Ljava/lang/String;

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mPulledDialogId:I

.field private mTelecomCallId:Ljava/lang/String;

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    const-string v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 179
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 206
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 207
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 219
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 230
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    .line 240
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    .line 241
    return-void
.end method

.method public static addCapability(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 731
    or-int v0, p0, p1

    return v0
.end method

.method public static removeCapability(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 742
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 688
    return-void
.end method

.method public addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 556
    :cond_0
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 540
    return-void
.end method

.method public abstract deflect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioModeIsVoip()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    .line 778
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallSubstate()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 463
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 464
    const/4 v1, 0x0

    return-object v1

    .line 466
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectTime()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .line 348
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .line 713
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return v0
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .line 365
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 366
    return-wide v2

    .line 367
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 370
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    return-wide v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getPulledDialogId()I
    .locals 1

    .line 952
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 585
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 439
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 440
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object v1

    .line 442
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    return-object v1
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hasCapabilities(I)Z
    .locals 1
    .param p1, "connectionCapabilities"    # I

    .line 720
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActiveCallDisconnectedOnAnswer()Z
    .locals 1

    .line 895
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isConferenceHost()Z
    .locals 1

    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isMemberOfPeerConference()Z
    .locals 1

    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isPulledCall()Z
    .locals 1

    .line 937
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 668
    if-nez p1, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 670
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 673
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 674
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 675
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 676
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 677
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 678
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 679
    return-void
.end method

.method protected notifyDisconnect(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1109
    const-string v0, "Connection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDisconnect: callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1111
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onDisconnect(I)V

    .line 1112
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1113
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 2

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 561
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    .line 562
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 2
    .param p1, "c"    # C

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 568
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    .line 569
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    goto :goto_0

    .line 570
    :cond_0
    return-void
.end method

.method public onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "externalConnection"    # Lcom/android/internal/telephony/Connection;

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1037
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    .line 1038
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1039
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1014
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    .line 1015
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1016
    :cond_0
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1060
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1061
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1062
    :cond_0
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 1
    .param p1, "cause"    # I

    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 1071
    return-void
.end method

.method public onExitedEcmMode()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1023
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    .line 1024
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1025
    :cond_0
    return-void
.end method

.method public onHandoverToWifiFailed()V
    .locals 2

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1051
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onHandoverToWifiFailed()V

    .line 1052
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1053
    :cond_0
    return-void
.end method

.method public onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "newConnection"    # Lcom/android/internal/telephony/Connection;

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1043
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    .line 1044
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1045
    :cond_0
    return-void
.end method

.method public onRttInitiated()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1094
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttInitiated()V

    .line 1095
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1096
    :cond_0
    return-void
.end method

.method public onRttModifyRequestReceived()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1082
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyRequestReceived()V

    .line 1083
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1084
    :cond_0
    return-void
.end method

.method public onRttModifyResponseReceived(I)V
    .locals 2
    .param p1, "status"    # I

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1088
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyResponseReceived(I)V

    .line 1089
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1090
    :cond_0
    return-void
.end method

.method public onRttTerminated()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1100
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onRttTerminated()V

    .line 1101
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1102
    :cond_0
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public pullExternalCall()V
    .locals 0

    .line 1078
    return-void
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public resetConnectionTime()V
    .locals 2

    .line 1126
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1128
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 1130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    .line 1132
    :cond_1
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setActiveCallDisconnectedOnAnswer(Z)V
    .locals 0
    .param p1, "answeringDisconnectsActiveCall"    # Z

    .line 907
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    .line 908
    return-void
.end method

.method public setAllowAddCallDuringVideoCall(Z)V
    .locals 0
    .param p1, "allowAddCallDuringVideoCall"    # Z

    .line 915
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    .line 916
    return-void
.end method

.method public setAllowHoldingVideoCall(Z)V
    .locals 0
    .param p1, "allowHoldingVideoCall"    # Z

    .line 923
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    .line 924
    return-void
.end method

.method public setAudioModeIsVoip(Z)V
    .locals 0
    .param p1, "isVoip"    # Z

    .line 839
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    .line 840
    return-void
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .line 848
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 850
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    .line 851
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 852
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .line 962
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 964
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    .line 965
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 966
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .line 329
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 330
    return-void
.end method

.method public setConnectTimeReal(J)V
    .locals 0
    .param p1, "connectTimeReal"    # J

    .line 338
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 339
    return-void
.end method

.method public setConnectionCapabilities(I)V
    .locals 3
    .param p1, "capabilities"    # I

    .line 813
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    .line 814
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 816
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    .line 817
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 819
    :cond_0
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 861
    if-eqz p1, :cond_1

    .line 862
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 867
    .local v0, "previousCount":I
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 869
    .local v1, "filteredCount":I
    if-eq v1, v0, :cond_0

    .line 870
    const-string v2, "Connection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnectionExtras: filtering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid extras."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v0    # "previousCount":I
    .end local v1    # "filteredCount":I
    :cond_0
    goto :goto_0

    .line 874
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 878
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 879
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_1

    .line 880
    :cond_2
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 983
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 984
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public setIsIncoming(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .line 424
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 425
    return-void
.end method

.method public setIsPulledCall(Z)V
    .locals 0
    .param p1, "isPulledCall"    # Z

    .line 933
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    .line 934
    return-void
.end method

.method public setPulledDialogId(I)V
    .locals 0
    .param p1, "pulledDialogId"    # I

    .line 948
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    .line 949
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .line 502
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 503
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 974
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 976
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    .line 977
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 978
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .line 799
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 801
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    .line 802
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 803
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    .line 827
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 829
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    .line 830
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 831
    :cond_0
    return-void
.end method

.method public shouldAllowAddCallDuringVideoCall()Z
    .locals 1

    .line 911
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return v0
.end method

.method public shouldAllowHoldingVideoCall()Z
    .locals 1

    .line 919
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1142
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isExternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1144
    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pres.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " postdial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cnap name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " post dial state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 993
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 994
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    .line 995
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 996
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 2
    .param p1, "isMultiparty"    # Z

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 1005
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    .line 1006
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    goto :goto_0

    .line 1007
    :cond_0
    return-void
.end method
