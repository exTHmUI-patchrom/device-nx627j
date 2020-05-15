.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.super Landroid/os/Handler;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I = 0x0

.field private static final VDBG:Z = false

.field private static final mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsIccIdQueryPending:[Z

.field private mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

.field private mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mSimFullIccId:[Ljava/lang/String;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 90
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 93
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Invoking constructor, no of phones = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 192
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 193
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 194
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 195
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    .line 196
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 197
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 199
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 200
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v3, v2, v1

    .line 201
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v1

    .line 202
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v0, v2, v1

    .line 203
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v3, v2, v1

    .line 205
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "index":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 208
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 211
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 566
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 700
    const/4 v0, 0x0

    .line 702
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 707
    :goto_0
    return v0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 570
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2

    .line 181
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 345
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 353
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 355
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x80404

    if-ne v1, v3, :cond_1

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 358
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 359
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 360
    .local v3, "dataSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 369
    .end local v3    # "dataSubId":I
    :cond_1
    return-void

    .line 346
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    .end local v2    # "slotId":I
    :cond_2
    :goto_0
    const-string v0, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 711
    const/4 v0, 0x0

    .line 713
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 714
    const/4 v0, 0x1

    .line 716
    :cond_0
    return v0
.end method

.method private loadIccId(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 479
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 480
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v2

    .line 483
    .local v2, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 484
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 485
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_0

    .line 486
    move-object v1, v4

    .line 487
    goto :goto_1

    .line 483
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 492
    .local v3, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_2

    .line 493
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p1

    .line 494
    const/16 v4, 0x2fe2

    const/4 v5, 0x4

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 494
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 499
    .end local v1    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "numApps":I
    .end local v3    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 753
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 761
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 757
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 150
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 153
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .line 372
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 376
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "useSimIORequest"    # Z

    .line 390
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    move-result-object v0

    .line 399
    .local v0, "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 401
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aput-object v0, v2, p1

    .line 403
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 408
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-nez v1, :cond_6

    .line 409
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 411
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_5

    .line 412
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "fullIccId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "iccId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v4, p1

    .line 417
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v4, p1

    goto :goto_1

    .line 420
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo: useSimIORequest=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 421
    if-eqz p2, :cond_3

    .line 422
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loadIccId(I)V

    goto :goto_1

    .line 424
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OEM add subInfo record, iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v4, p1

    .line 430
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v4

    .line 431
    invoke-virtual {v4, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 432
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v4, p1

    goto :goto_1

    .line 434
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " queryUiccProvisionInfo, ICCID["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 438
    .end local v2    # "fullIccId":Ljava/lang/String;
    .end local v3    # "iccId":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 439
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] object is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 443
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 451
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 452
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 458
    .local v1, "subIds":[I
    if-eqz v1, :cond_7

    array-length v2, v1

    if-eqz v2, :cond_7

    .line 459
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 460
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 466
    .end local v1    # "subIds":[I
    :cond_7
    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_a

    .line 467
    :cond_8
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 468
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-nez v1, :cond_a

    .line 470
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 471
    nop

    .line 472
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    .line 471
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 473
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    .line 476
    :cond_a
    return-void

    .line 391
    .end local v0    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 502
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid phone Index!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 504
    return-void

    .line 506
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 507
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 508
    .local v1, "newSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v1, :cond_7

    .line 509
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccAvailability, card state["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v0, v4, p1

    .line 528
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    .line 529
    .local v4, "currentState":I
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-ne v4, v3, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v5, v5, p1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 534
    invoke-direct {p0, p1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v6, :cond_3

    .line 536
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v6, :cond_6

    .line 538
    :cond_4
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v5

    .line 539
    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 540
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 541
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 543
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 544
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v2, v3, p1

    .line 545
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v3, p1

    .line 546
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    .line 547
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 546
    invoke-virtual {v3, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 548
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 553
    :cond_5
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 558
    :cond_6
    :goto_0
    return-void

    .line 511
    .end local v4    # "currentState":I
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 513
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 514
    :try_start_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    .line 515
    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 516
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    .line 517
    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 518
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 519
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 520
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v2, v3, p1

    .line 521
    monitor-exit v4

    .line 523
    return-void

    .line 521
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 7
    .param p1, "slotId"    # I

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 609
    const/4 v0, -0x1

    return v0

    .line 612
    :cond_0
    const-string v0, "activateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 618
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already activated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 621
    const/4 v1, 0x0

    .line 623
    .local v1, "retVal":Z
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 624
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 625
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v5

    .line 629
    .end local v1    # "retVal":Z
    .local v5, "retVal":Z
    if-nez v5, :cond_3

    .line 630
    const/4 v0, -0x1

    goto :goto_0

    .line 632
    :cond_3
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v6

    .line 633
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 634
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 637
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 640
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " activation result["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 641
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 642
    .end local v5    # "retVal":Z
    goto :goto_1

    .line 634
    .restart local v5    # "retVal":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 625
    .end local v5    # "retVal":Z
    .restart local v1    # "retVal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 643
    .end local v1    # "retVal":Z
    :cond_4
    const/4 v0, -0x3

    .line 646
    :goto_1
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deactivateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 654
    const/4 v0, -0x1

    return v0

    .line 657
    :cond_0
    const-string v0, "deactivateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 662
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] already in deactive state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, "retVal":Z
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 668
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 669
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 671
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v4

    .line 673
    .end local v1    # "retVal":Z
    .local v4, "retVal":Z
    if-nez v4, :cond_3

    .line 674
    const/4 v0, -0x1

    goto :goto_0

    .line 676
    :cond_3
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v5

    .line 677
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 678
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 681
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 684
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " deactivation result["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 685
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 686
    .end local v4    # "retVal":Z
    goto :goto_1

    .line 678
    .restart local v4    # "retVal":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 669
    .end local v4    # "retVal":Z
    .restart local v1    # "retVal":Z
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 687
    .end local v1    # "retVal":Z
    :cond_4
    const/4 v0, -0x3

    .line 690
    :goto_1
    return v0
.end method

.method public dispose()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    const-string v0, " disposing... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 175
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 176
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForUnsol(Landroid/os/Handler;)V

    .line 177
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 178
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 576
    const/4 v0, -0x1

    .line 579
    .local v0, "currentStatus":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v0, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 586
    :cond_1
    :goto_0
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 590
    const/4 v0, -0x1

    .line 593
    .local v0, "userPref":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const/4 v0, 0x1

    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    move v0, v2

    .line 598
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 601
    :cond_1
    :goto_0
    return v0
.end method

.method public getUiccFullIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 386
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 382
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 234
    const/4 v0, -0x1

    .line 236
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: hit default case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 239
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_c

    .line 240
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RADIO_AVAILABLE for phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 244
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 245
    .local v3, "subIds":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-eqz v4, :cond_0

    .line 246
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    aget v2, v3, v2

    .line 247
    invoke-virtual {v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 249
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_2

    .line 251
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 255
    .end local v3    # "subIds":[I
    goto/16 :goto_1

    .line 287
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 288
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x0

    .line 289
    .local v3, "iccId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 290
    .local v4, "fullIccId":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 291
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 293
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    .line 294
    .local v5, "data":[B
    array-length v6, v5

    invoke-static {v5, v2, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .end local v5    # "data":[B
    goto :goto_0

    .line 297
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in GET iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 300
    :cond_4
    :goto_0
    if-ltz v0, :cond_c

    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v5, :cond_c

    .line 301
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v2, v5, v0

    .line 303
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_IO add subInfo record, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v5, v0

    .line 306
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v5, v0

    .line 308
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 310
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 312
    .local v5, "subIds":[I
    if-eqz v5, :cond_5

    array-length v6, v5

    if-eqz v6, :cond_5

    .line 313
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v6

    aget v2, v5, v2

    .line 314
    invoke-virtual {v6, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 322
    .end local v5    # "subIds":[I
    :cond_5
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, v0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    .line 323
    invoke-virtual {v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 324
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_6

    .line 325
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-nez v2, :cond_c

    .line 327
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 328
    nop

    .line 329
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 328
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 330
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    goto :goto_1

    .line 333
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EVENT_GET_ICCID_DONE, ICCID is empty, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "fullIccId":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 268
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_9

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 269
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 270
    .local v2, "isServiceReady":Z
    if-eqz v2, :cond_8

    .line 271
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryAllUiccProvisionInfo()V

    .line 273
    .end local v2    # "isServiceReady":Z
    :cond_8
    goto :goto_1

    .line 274
    :cond_9
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 276
    goto :goto_1

    .line 279
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 280
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_a

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 281
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_1

    .line 283
    :cond_a
    const-string v2, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 285
    goto :goto_1

    .line 259
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 260
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_b

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 261
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_1

    .line 263
    :cond_b
    const-string v2, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 265
    nop

    .line 342
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_c
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .line 738
    const/4 v0, 0x1

    .line 739
    .local v0, "received":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 740
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 741
    .local v2, "provPref":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 739
    .end local v2    # "provPref":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .restart local v2    # "provPref":I
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x0

    .line 746
    nop

    .line 749
    .end local v1    # "index":I
    .end local v2    # "provPref":I
    :cond_2
    return v0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .line 732
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlexMapInProgress()Z
    .locals 4

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 723
    .local v1, "rcController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 728
    :cond_0
    return v0
.end method

.method public registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 218
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 221
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterForManualProvisionChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
