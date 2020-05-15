.class public Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "QtiIccPhoneBookInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccPhoneBookInterfaceManager"


# instance fields
.field private mPhoneId:I

.field private mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    .line 59
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 65
    :cond_0
    return-void
.end method

.method private isSimPhoneBookEnabled()Z
    .locals 2

    .line 68
    const-string v0, "persist.vendor.radio.sim_contacts_from_iccio"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    return v1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    :cond_0
    return-void
.end method

.method public getAdnRecordsCapacity()[I
    .locals 13

    .line 176
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 178
    .local v0, "capacity":[I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v1, :cond_2

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 182
    .local v1, "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v12, :cond_1

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v12, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string v12, "sim state is not ready when getAdnRecordsCapacity."

    invoke-virtual {p0, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .end local v1    # "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_1

    .line 184
    .restart local v1    # "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    :goto_0
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnCount()I

    move-result v12

    aput v12, v0, v11

    .line 185
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAdnCount()I

    move-result v12

    aput v12, v0, v10

    .line 186
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getEmailCount()I

    move-result v12

    aput v12, v0, v9

    .line 187
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedEmailCount()I

    move-result v12

    aput v12, v0, v8

    .line 188
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAnrCount()I

    move-result v12

    aput v12, v0, v7

    .line 189
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAnrCount()I

    move-result v12

    aput v12, v0, v6

    .line 190
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNameLen()I

    move-result v12

    aput v12, v0, v5

    .line 191
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNumberLen()I

    move-result v12

    aput v12, v0, v4

    .line 192
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxEmailLen()I

    move-result v12

    aput v12, v0, v3

    .line 193
    iget-object v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v12}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxAnrLen()I

    move-result v12

    aput v12, v0, v2

    .line 197
    .end local v1    # "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    goto :goto_2

    .line 198
    :cond_2
    const-string v1, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 201
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAdnRecordsCapacity on slot "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": max adn="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v0, v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", used adn="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v0, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", max email="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", used email="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", max anr="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", used anr="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", max name length ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max number length ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", max email length ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max anr length ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 208
    return-object v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 92
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    .line 93
    .end local p1    # "efid":I
    .local v0, "efid":I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 97
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 98
    .local p1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 100
    .local v2, "response":Landroid/os/Message;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4f30

    if-eq v0, v3, :cond_0

    const/16 v3, 0x6f3a

    if-ne v0, v3, :cond_2

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v3, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->requestLoadAllAdnLike(Landroid/os/Message;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_0

    .line 106
    :cond_1
    const-string v3, "Failure while trying to load from SIM due to uninit  sim pb adncache"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 111
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 110
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_0

    .line 114
    :cond_3
    const-string v3, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 117
    .end local v2    # "response":Landroid/os/Message;
    .end local p1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object p1

    .line 117
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 88
    .end local v0    # "efid":I
    .local p1, "efid":I
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 27
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 125
    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 130
    const-string v0, "tag"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "oldTag":Ljava/lang/String;
    const-string v0, "newTag"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "newTag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "oldPhoneNumber":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "newPhoneNumber":Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "oldEmail":Ljava/lang/String;
    const-string v0, "newEmails"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "newEmail":Ljava/lang/String;
    const-string v0, "anrs"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "oldAnr":Ljava/lang/String;
    const-string v0, "newAnrs"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, "newAnr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    move-object v0, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 139
    .local v12, "oldEmailArray":[Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v8}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v13, v0

    .line 140
    .local v13, "newEmailArray":[Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v9}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v14, v0

    .line 141
    .local v14, "oldAnrArray":[Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v10}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "newAnrArray":[Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v15

    .line 145
    .end local p1    # "efid":I
    .local v15, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    .end local v7    # "oldEmail":Ljava/lang/String;
    .local v21, "oldEmail":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", values = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", pin2="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 147
    iget-object v2, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v23, v8

    const/4 v8, 0x0

    :try_start_1
    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 151
    .end local v8    # "newEmail":Ljava/lang/String;
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .local v23, "newEmail":Ljava/lang/String;
    iget-object v8, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v24, v9

    const/4 v9, 0x3

    .end local v9    # "oldAnr":Ljava/lang/String;
    .local v24, "oldAnr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8, v9, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 152
    .local v8, "response":Landroid/os/Message;
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v9, v3, v5, v12, v14}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 153
    .local v9, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v25, v3

    :try_start_3
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v3    # "oldTag":Ljava/lang/String;
    .local v25, "oldTag":Ljava/lang/String;
    invoke-direct {v3, v4, v6, v13, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v16, :cond_6

    move-object/from16 v26, v4

    const/16 v4, 0x4f30

    .end local v4    # "newTag":Ljava/lang/String;
    .local v26, "newTag":Ljava/lang/String;
    if-eq v15, v4, :cond_4

    const/16 v4, 0x6f3a

    if-ne v15, v4, :cond_7

    .line 156
    :cond_4
    :try_start_4
    iget-object v4, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v4, :cond_5

    .line 157
    iget-object v4, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v4, v9, v3, v8}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_4

    .line 160
    :cond_5
    const-string v4, "Failure while trying to update by search due to uninit sim pb adncache"

    invoke-virtual {v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    :goto_4
    move/from16 v22, v15

    goto :goto_5

    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    .end local v9    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v0

    move/from16 v22, v15

    goto :goto_6

    .line 163
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v4    # "newTag":Ljava/lang/String;
    .restart local v8    # "response":Landroid/os/Message;
    .restart local v9    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    move-object/from16 v26, v4

    .end local v4    # "newTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    :cond_7
    :try_start_5
    iget-object v4, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v4, :cond_8

    .line 164
    iget-object v4, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v22, v15

    move-object v15, v4

    .end local v15    # "efid":I
    .local v22, "efid":I
    move/from16 v16, v22

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    :try_start_6
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_5

    .line 167
    .end local v22    # "efid":I
    .restart local v15    # "efid":I
    :cond_8
    move/from16 v22, v15

    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    const-string v4, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 170
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    .end local v9    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_5
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 171
    iget-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 170
    .end local v22    # "efid":I
    .restart local v15    # "efid":I
    :catchall_1
    move-exception v0

    move/from16 v22, v15

    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    goto :goto_6

    .end local v22    # "efid":I
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .restart local v15    # "efid":I
    :catchall_2
    move-exception v0

    move-object/from16 v26, v4

    move/from16 v22, v15

    .end local v4    # "newTag":Ljava/lang/String;
    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    .restart local v26    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "efid":I
    .end local v25    # "oldTag":Ljava/lang/String;
    .end local v26    # "newTag":Ljava/lang/String;
    .local v3, "oldTag":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .restart local v15    # "efid":I
    :catchall_3
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v22, v15

    .end local v3    # "oldTag":Ljava/lang/String;
    .end local v4    # "newTag":Ljava/lang/String;
    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    .restart local v25    # "oldTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "efid":I
    .end local v24    # "oldAnr":Ljava/lang/String;
    .end local v25    # "oldTag":Ljava/lang/String;
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v3    # "oldTag":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .local v9, "oldAnr":Ljava/lang/String;
    .restart local v15    # "efid":I
    :catchall_4
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v24, v9

    move/from16 v22, v15

    .end local v3    # "oldTag":Ljava/lang/String;
    .end local v4    # "newTag":Ljava/lang/String;
    .end local v9    # "oldAnr":Ljava/lang/String;
    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    .restart local v24    # "oldAnr":Ljava/lang/String;
    .restart local v25    # "oldTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v22    # "efid":I
    .end local v23    # "newEmail":Ljava/lang/String;
    .end local v24    # "oldAnr":Ljava/lang/String;
    .end local v25    # "oldTag":Ljava/lang/String;
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local v3    # "oldTag":Ljava/lang/String;
    .restart local v4    # "newTag":Ljava/lang/String;
    .local v8, "newEmail":Ljava/lang/String;
    .restart local v9    # "oldAnr":Ljava/lang/String;
    .restart local v15    # "efid":I
    :catchall_5
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v22, v15

    .end local v3    # "oldTag":Ljava/lang/String;
    .end local v4    # "newTag":Ljava/lang/String;
    .end local v8    # "newEmail":Ljava/lang/String;
    .end local v9    # "oldAnr":Ljava/lang/String;
    .end local v15    # "efid":I
    .restart local v22    # "efid":I
    .restart local v23    # "newEmail":Ljava/lang/String;
    .restart local v24    # "oldAnr":Ljava/lang/String;
    .restart local v25    # "oldTag":Ljava/lang/String;
    .restart local v26    # "newTag":Ljava/lang/String;
    :goto_6
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_6

    .line 127
    .end local v5    # "oldPhoneNumber":Ljava/lang/String;
    .end local v6    # "newPhoneNumber":Ljava/lang/String;
    .end local v10    # "newAnr":Ljava/lang/String;
    .end local v11    # "newAnrArray":[Ljava/lang/String;
    .end local v12    # "oldEmailArray":[Ljava/lang/String;
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    .end local v14    # "oldAnrArray":[Ljava/lang/String;
    .end local v21    # "oldEmail":Ljava/lang/String;
    .end local v22    # "efid":I
    .end local v23    # "newEmail":Ljava/lang/String;
    .end local v24    # "oldAnr":Ljava/lang/String;
    .end local v25    # "oldTag":Ljava/lang/String;
    .end local v26    # "newTag":Ljava/lang/String;
    .restart local p1    # "efid":I
    :cond_9
    move-object/from16 v7, p3

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
