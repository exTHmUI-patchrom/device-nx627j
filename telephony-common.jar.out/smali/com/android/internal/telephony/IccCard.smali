.class public Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# instance fields
.field private mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 54
    return-void
.end method

.method private sendMessageWithCardAbsentException(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 270
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 271
    .local v0, "ret":Landroid/os/AsyncResult;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No valid IccCard"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 272
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 217
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 201
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public hasIccCard()Z
    .locals 1

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isEsnChanged()Z
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 185
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 169
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 131
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 132
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 103
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 104
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 117
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 118
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 110
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 124
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 81
    return-void
.end method
