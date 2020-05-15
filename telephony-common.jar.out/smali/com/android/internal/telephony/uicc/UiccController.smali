.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_GET_SLOT_STATUS_DONE:I = 0x4

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_RADIO_ON:I = 0x5

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x7

.field private static final EVENT_SIM_REFRESH:I = 0x8

.field private static final EVENT_SLOT_STATUS_CHANGED:I = 0x2

.field public static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final VDBG:Z = false

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;

.field private static sLastSlotStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation
.end field

.field static sLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mIsSlotStatusSupported:Z

.field private mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

.field private mPhoneIdToSlotId:[I

.field private mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    .line 124
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 143
    const-string v1, "Creating UiccController"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_num_physical_slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "logStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 150
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 152
    .end local v1    # "logStr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 156
    .local v1, "numPhysicalSlots":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v2

    .line 160
    :cond_0
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/UiccSlot;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 161
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/RadioConfig;->registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p0, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    const/4 v4, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    const/4 v4, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    const/16 v4, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    .line 175
    return-void
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 426
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 433
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    .line 434
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 436
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 438
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 443
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .line 182
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v0

    return-object v1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSlotIdFromPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget v0, v0, p1

    return v0
.end method

.method private isValidPhoneIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 668
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidSlotIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 672
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 676
    const-string v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method private logPhoneIdToSlotIdMapping()V
    .locals 3

    .line 602
    const-string v0, "mPhoneIdToSlotId mapping:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 138
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    .line 478
    :cond_1
    :try_start_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 480
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccCardStatusDone: phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IccCardStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 482
    iget v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    .line 484
    .local v1, "slotId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 485
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v1, v2, v3

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 496
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    aput-object v3, v2, v1

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    .line 501
    const-string v2, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 466
    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    .end local v1    # "slotId":I
    .end local p1    # "ar":Landroid/os/AsyncResult;
    .end local p2    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/uicc/UiccController;
    throw p1
.end method

.method private declared-synchronized onGetSlotStatusDone(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    monitor-enter p0

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 508
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 511
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 513
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    const-string v2, "onGetSlotStatusDone: request not supported; marking mIsSlotStatusSupported to false"

    .line 524
    .local v2, "logStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 525
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 526
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    goto :goto_1

    .line 517
    .end local v2    # "logStr":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error getting slot status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 518
    .restart local v2    # "logStr":Ljava/lang/String;
    const-string v1, "UiccController"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :goto_1
    monitor-exit p0

    return-void

    .line 531
    .end local v2    # "logStr":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 533
    .local v2, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/IccSlotStatus;>;"
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->slotStatusChanged(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 534
    const-string v1, "onGetSlotStatusDone: No change in slot status"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 538
    :cond_4
    :try_start_3
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, "numActiveSlots":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "numActiveSlots":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 542
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 543
    .local v5, "iss":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move v6, v1

    .line 544
    .local v6, "isActive":Z
    :goto_3
    if-eqz v6, :cond_7

    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 548
    iget v7, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 552
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    iget v8, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    aput v3, v7, v8

    goto :goto_4

    .line 549
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Logical slot index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " invalid for physical slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v7, v7, v3

    if-nez v7, :cond_8

    .line 559
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v8, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    aput-object v8, v7, v3

    .line 562
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v7, v7, v3

    if-eqz v6, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    aget-object v8, v8, v9

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v7, v8, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;)V

    .line 541
    .end local v5    # "iss":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    .end local v6    # "isActive":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 568
    .end local v3    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v3, v3

    if-ne v4, v3, :cond_d

    .line 574
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 575
    .local v3, "slotIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v6, v5

    :goto_6
    if-ge v1, v6, :cond_c

    aget v7, v5, v1

    .line 576
    .local v7, "slotId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 579
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v7    # "slotId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 577
    .restart local v7    # "slotId":I
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mapped to multiple phoneIds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    .end local v7    # "slotId":I
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 585
    const/high16 v5, 0x1000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 569
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "slotIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of active slots "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not match the expected value "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 505
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/IccSlotStatus;>;"
    .end local v4    # "numActiveSlots":I
    .end local p1    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/uicc/UiccController;
    throw p1
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .line 609
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh: Sim REFRESH with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 614
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 619
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 620
    .local v0, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 621
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimRefresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 623
    if-nez v0, :cond_2

    .line 624
    const-string v1, "UiccController"

    const-string v2, "onSimRefresh: received without input"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 628
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 629
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_3

    .line 630
    const-string v2, "UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSimRefresh: refresh on null card : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 634
    :cond_3
    const/4 v2, 0x0

    .line 635
    .local v2, "changed":Z
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 646
    return-void

    .line 639
    :pswitch_0
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v2

    .line 640
    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v2

    .line 644
    nop

    .line 649
    :goto_0
    if-eqz v2, :cond_4

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 652
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v5, "carrier_config"

    .line 653
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 654
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "UNKNOWN"

    invoke-virtual {v3, v5, v6}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 658
    .local v5, "requirePowerOffOnSimRefreshReset":Z
    if-eqz v5, :cond_4

    .line 659
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 664
    .end local v3    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "requirePowerOffOnSimRefreshReset":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 665
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private slotStatusChanged(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;)Z"
        }
    .end annotation

    .line 590
    .local p1, "slotStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/IccSlotStatus;>;"
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 594
    .local v2, "iccSlotStatus":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 595
    return v1

    .line 597
    .end local v2    # "iccSlotStatus":Lcom/android/internal/telephony/uicc/IccSlotStatus;
    :cond_1
    goto :goto_0

    .line 598
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_3
    :goto_1
    return v1
.end method

.method static updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v0

    .line 459
    .local v0, "subInfoUpdator":Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 462
    :cond_0
    const-string v1, "UiccController"

    const-string v2, "subInfoUpdate is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void
.end method


# virtual methods
.method public addCardLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 680
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccChangedRegistrants: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIccChangedRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 690
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 693
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccSlots: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccSlots["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 699
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccSlots["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 703
    .end local v0    # "i":I
    :cond_2
    const-string v0, " sLocalLog= "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .line 329
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 331
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 334
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 335
    .end local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .line 318
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 320
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 323
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 324
    .end local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    .line 192
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .line 448
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 450
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 453
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 454
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 3
    .param p1, "phoneId"    # I

    .line 219
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 222
    .local v1, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 226
    .end local v1    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 3
    .param p1, "slotId"    # I

    .line 204
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 206
    .local v1, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 209
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 210
    .end local v1    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 3
    .param p1, "phoneId"    # I

    .line 236
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 239
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v2

    nop

    :cond_0
    monitor-exit v0

    return-object v2

    .line 241
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    monitor-exit v0

    return-object v2

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2
    .param p1, "slotId"    # I

    .line 265
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    .line 269
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccSlotForCardId(Ljava/lang/String;)I
    .locals 5
    .param p1, "cardId"    # Ljava/lang/String;

    .line 296
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    const/4 v1, 0x0

    move v2, v1

    .local v2, "idx":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 301
    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    monitor-exit v0

    return v2

    .line 298
    .end local v3    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "idx":I
    :cond_1
    nop

    .local v1, "idx":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    monitor-exit v0

    return v1

    .line 307
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    .end local v1    # "idx":I
    :cond_3
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 3
    .param p1, "phoneId"    # I

    .line 278
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result v1

    .line 281
    .local v1, "slotId":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 285
    .end local v1    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 250
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    monitor-exit v0

    return-object v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 358
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 361
    .local v1, "phoneId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_2

    .line 367
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 369
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 370
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    .line 418
    const-string v3, "UiccController"

    goto/16 :goto_0

    .line 414
    :pswitch_0
    const-string v3, "Received EVENT_SIM_REFRESH"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 416
    goto/16 :goto_1

    .line 406
    :pswitch_1
    const-string v3, "EVENT_RADIO_UNAVAILABLE, dispose card"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 408
    .local v3, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable()V

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 412
    goto :goto_1

    .line 379
    .end local v3    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :pswitch_2
    const-string v3, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON, calling getIccCardStatus"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 385
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 387
    const-string v3, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON for phoneId 0, calling getIccSlotsStatus"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RadioConfig;->getSimSlotsStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 395
    :pswitch_3
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 397
    goto :goto_1

    .line 401
    :pswitch_4
    const-string v3, "Received EVENT_SLOT_STATUS_CHANGED or EVENT_GET_SLOT_STATUS_DONE"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->onGetSlotStatusDone(Landroid/os/AsyncResult;)V

    .line 404
    goto :goto_1

    .line 372
    :pswitch_5
    const-string v3, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 375
    goto :goto_1

    .line 418
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v1    # "phoneId":Ljava/lang/Integer;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 422
    return-void

    .line 362
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    :cond_3
    :goto_2
    const-string v2, "UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v0

    return-void

    .line 421
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 346
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 347
    .end local v1    # "r":Landroid/os/Registrant;
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchSlots([ILandroid/os/Message;)V
    .locals 1
    .param p1, "physicalSlots"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->setSimSlotsMapping([ILandroid/os/Message;)V

    .line 258
    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 351
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
