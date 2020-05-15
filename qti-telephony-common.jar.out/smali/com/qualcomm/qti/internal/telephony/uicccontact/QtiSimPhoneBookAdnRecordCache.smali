.class public Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
.super Landroid/os/Handler;
.source "QtiSimPhoneBookAdnRecordCache.java"


# static fields
.field private static final DBG:Z = true

.field static final EVENT_INIT_ADN_DONE:I = 0x1

.field static final EVENT_LOAD_ADN_RECORD_DONE:I = 0x3

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x4

.field static final EVENT_QUERY_ADN_RECORD_DONE:I = 0x2

.field static final EVENT_SIM_REFRESH:I = 0x6

.field static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSimPhoneBookAdnRecordCache"


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAddNumCount:I

.field private mAdnCount:I

.field mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mAdnUpdatingWaiter:Landroid/os/Message;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mEmailCount:I

.field private mLock:Ljava/lang/Object;

.field private mMaxAnrLen:I

.field private mMaxEmailLen:I

.field private mMaxNameLen:I

.field private mMaxNumberLen:I

.field private mOldAdnHavaEmail:Z

.field protected mPhoneId:I

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRecCount:I

.field private mRefreshAdnCache:Z

.field private mSimPbRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mValidAddNumCount:I

.field private mValidAdnCount:I

.field private mValidEmailCount:I

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    .line 49
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 51
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 52
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 53
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 54
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 55
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 56
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    .line 57
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    .line 58
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    .line 59
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    .line 60
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 63
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 73
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->extRecList:Landroid/util/SparseArray;

    .line 327
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;-><init>(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 87
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 88
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 95
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method private clearUpdatingWriter()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const-string v1, "QtiSimPhoneBookAdnRecordCache reset"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 115
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 571
    const-string v0, "QtiSimPhoneBookAdnRecordCache"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private notifyAndClearWaiters()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 132
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 134
    .local v2, "response":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 135
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 136
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 131
    .end local v2    # "response":Landroid/os/Message;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    return-void
.end method

.method private refreshAdnCache()V
    .locals 1

    .line 580
    const-string v0, "refreshAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 583
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 121
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdnCount()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    return v0
.end method

.method public getAnrCount()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .line 539
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    return v0
.end method

.method public getMaxAnrLen()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    return v0
.end method

.method public getMaxEmailLen()I
    .locals 1

    .line 563
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    return v0
.end method

.method public getMaxNameLen()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    return v0
.end method

.method public getMaxNumberLen()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    return v0
.end method

.method public getRefreshAdnCache()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 592
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    return v0
.end method

.method public getSimPbRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUsedAdnCount()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    return v0
.end method

.method public getUsedAnrCount()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    return v0
.end method

.method public getUsedEmailCount()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 509
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 510
    const-string v1, "SIM REFRESH occurred"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 511
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 512
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 513
    .local v1, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v1, :cond_0

    .line 514
    const-string v2, "IccRefreshResponse received is null"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 515
    goto/16 :goto_5

    .line 518
    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v4, :cond_2

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    .line 522
    .end local v1    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_2
    goto/16 :goto_5

    .line 523
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM refresh Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 442
    :pswitch_1
    const-string v1, "Update ADN record done"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    .line 446
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 447
    .local v2, "index":I
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 448
    .local v5, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    aget v3, v6, v3

    .line 450
    .local v3, "recordIndex":I
    if-nez v2, :cond_5

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Record number for added ADN is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 454
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 457
    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 460
    :cond_4
    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto/16 :goto_1

    .line 461
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 463
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v6

    .line 464
    .local v6, "adnRecordIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record number for deleted ADN is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 465
    if-ne v3, v6, :cond_7

    .line 466
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 468
    iget-boolean v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    if-eqz v7, :cond_6

    .line 469
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 472
    :cond_6
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto :goto_0

    .line 474
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "The index for deleted ADN record did not match"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 477
    .end local v6    # "adnRecordIndex":I
    :goto_0
    goto :goto_1

    .line 479
    :cond_8
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v6

    .line 480
    .restart local v6    # "adnRecordIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record number for changed ADN is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 481
    if-ne v3, v6, :cond_a

    .line 482
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 483
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    if-nez v7, :cond_9

    .line 486
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    goto :goto_1

    .line 487
    :cond_9
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    if-eqz v7, :cond_b

    .line 488
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    goto :goto_1

    .line 492
    :cond_a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "The index for changed ADN record did not match"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 496
    .end local v2    # "index":I
    .end local v3    # "recordIndex":I
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v6    # "adnRecordIndex":I
    :cond_b
    :goto_1
    goto :goto_2

    .line 497
    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Update adn record failed"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 501
    :goto_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 502
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 503
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 504
    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    goto/16 :goto_5

    .line 433
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v1, "Loading all ADN records done"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 436
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    .line 439
    goto/16 :goto_5

    .line 436
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 405
    :pswitch_3
    const-string v1, "Loading ADN record done"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 406
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 407
    goto/16 :goto_5

    .line 410
    :cond_d
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    .line 411
    .local v1, "AdnRecordsGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    if-nez v1, :cond_e

    .line 412
    goto/16 :goto_5

    .line 415
    :cond_e
    nop

    .local v3, "i":I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_10

    .line 416
    aget-object v5, v1, v3

    if-eqz v5, :cond_f

    .line 417
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v7, 0x0

    aget-object v6, v1, v3

    .line 418
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v8

    aget-object v6, v1, v3

    .line 419
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    aget-object v6, v1, v3

    .line 420
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    aget-object v6, v1, v3

    .line 421
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    aget-object v6, v1, v3

    .line 422
    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v12

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 417
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 415
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 427
    .end local v3    # "i":I
    :cond_10
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v3, v4, :cond_15

    .line 428
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 365
    .end local v1    # "AdnRecordsGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    :pswitch_4
    const-string v1, "Querying ADN record done"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 366
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 367
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 369
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 372
    .local v2, "response":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query adn record failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 373
    .end local v2    # "response":Landroid/os/Message;
    goto :goto_4

    .line 374
    :cond_11
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 375
    goto/16 :goto_5

    .line 369
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 377
    :cond_12
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 378
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v4

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 379
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x2

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 380
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x3

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 381
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v2

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 382
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x5

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 383
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x6

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    .line 384
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x7

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    .line 385
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/16 v3, 0x8

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    .line 386
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/16 v3, 0x9

    aget v1, v1, v3

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    .line 399
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v1, v3, :cond_15

    .line 400
    :cond_13
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 354
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 355
    const-string v1, "Initialized ADN done"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 356
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 357
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto :goto_5

    .line 359
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init ADN done Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 362
    nop

    .line 528
    :cond_15
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateAdnCache()V
    .locals 1

    .line 575
    const-string v0, "invalidateAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 577
    return-void
.end method

.method public queryAdnRecord()V
    .locals 4

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 145
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 146
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 147
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 148
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 150
    const-string v0, "start to queryAdnRecord"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x2

    .line 162
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getAdnRecord(Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    nop

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "QtiSimPhoneBookAdnRecordCache"

    const-string v2, "Interrupted Exception in queryAdnRecord"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 193
    return-void

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 169
    .local v2, "response":Landroid/os/Message;
    const-string v3, "Query adn record failed NullPointerException"

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 170
    .end local v2    # "response":Landroid/os/Message;
    goto :goto_1

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public requestLoadAllAdnLike(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Oem hook service is not ready yet "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 200
    const-string v0, "Oem hook service is not ready yet"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 201
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    const-string v1, "ADN cache has already filled in"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 211
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v1, :cond_2

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 213
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    .line 218
    :goto_0
    monitor-exit v0

    return-void

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->clearUpdatingWriter()V

    .line 107
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 109
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 110
    return-void
.end method

.method public updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 8
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "response"    # Landroid/os/Message;

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 228
    .local v0, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "Oem hook service is not ready yet "

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 230
    const-string v1, "Oem hook service is not ready yet"

    invoke-direct {p0, p3, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 236
    const-string v2, "ADN cache has already filled in"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 237
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v2, :cond_2

    .line 238
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 239
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 244
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-nez v0, :cond_3

    .line 247
    const-string v1, "Sim PhoneBook Adn list not exist"

    invoke-direct {p0, p3, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 248
    return-void

    .line 251
    :cond_3
    const/4 v1, -0x1

    .line 252
    .local v1, "index":I
    const/4 v2, 0x1

    .line 253
    .local v2, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 255
    const/4 v1, 0x0

    goto :goto_3

    .line 258
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 259
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 260
    move v1, v2

    .line 261
    goto :goto_2

    .line 263
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 267
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    goto :goto_3

    .line 269
    :cond_7
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    .line 273
    :goto_3
    const/4 v4, -0x1

    if-ne v1, v4, :cond_8

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim PhoneBook Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 275
    return-void

    .line 278
    :cond_8
    if-nez v1, :cond_9

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v4, v5, :cond_9

    .line 279
    const-string v3, "Sim PhoneBook Adn record is full"

    invoke-direct {p0, p3, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 280
    return-void

    .line 284
    :cond_9
    if-nez v1, :cond_a

    .line 286
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    if-ne v4, v5, :cond_b

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 287
    const-string v3, "Sim PhoneBook Email record is full"

    invoke-direct {p0, p3, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 288
    return-void

    .line 290
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 292
    iget-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mOldAdnHavaEmail:Z

    if-nez v4, :cond_b

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    if-ne v4, v5, :cond_b

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 293
    const-string v3, "Sim PhoneBook Email record is full"

    invoke-direct {p0, p3, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 294
    return-void

    .line 299
    :cond_b
    if-nez v1, :cond_c

    move v4, v3

    goto :goto_4

    :cond_c
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    .line 301
    .local v4, "recordIndex":I
    :goto_4
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-direct {v5}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;-><init>()V

    .line 302
    .local v5, "updateAdn":Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    iput v4, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    .line 303
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 304
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 305
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 306
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 307
    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    .line 309
    :cond_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 310
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 311
    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    .line 314
    :cond_e
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v6, :cond_f

    .line 315
    const-string v3, "Have pending update for Sim PhoneBook Adn"

    invoke-direct {p0, p3, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 316
    return-void

    .line 319
    :cond_f
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 321
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v7, 0x5

    .line 323
    invoke-virtual {p0, v7, v1, v3, p2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 321
    invoke-virtual {v6, v5, v3, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->updateAdnRecord(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;Landroid/os/Message;I)V

    .line 325
    return-void

    .line 244
    .end local v1    # "index":I
    .end local v2    # "count":I
    .end local v4    # "recordIndex":I
    .end local v5    # "updateAdn":Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
