.class public Lcom/android/internal/telephony/RatRatcheter;
.super Ljava/lang/Object;
.source "RatRatcheter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RilRatcheter"


# instance fields
.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDataRatchetEnabled:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRatFamilyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceRatchetEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    .line 148
    new-instance v0, Lcom/android/internal/telephony/RatRatcheter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RatRatcheter$1;-><init>(Lcom/android/internal/telephony/RatRatcheter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RatRatcheter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RatRatcheter;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method private isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "ss1"    # Landroid/telephony/ServiceState;
    .param p2, "ss2"    # Landroid/telephony/ServiceState;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return v3

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 144
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_2

    move v2, v3

    nop

    :cond_2
    monitor-exit v0

    .line 143
    return v2

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ratchetRat(II)I
    .locals 6
    .param p1, "oldRat"    # I
    .param p2, "newRat"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 90
    .local v1, "oldFamily":Landroid/util/SparseIntArray;
    if-nez v1, :cond_0

    monitor-exit v0

    return p2

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 93
    .local v2, "newFamily":Landroid/util/SparseIntArray;
    if-eq v2, v1, :cond_1

    monitor-exit v0

    return p2

    .line 96
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 97
    .local v4, "oldRatRank":I
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 98
    .local v3, "newRatRank":I
    if-le v4, v3, :cond_2

    move v5, p1

    goto :goto_0

    :cond_2
    move v5, p2

    :goto_0
    monitor-exit v0

    return v5

    .line 99
    .end local v1    # "oldFamily":Landroid/util/SparseIntArray;
    .end local v2    # "newFamily":Landroid/util/SparseIntArray;
    .end local v3    # "newRatRank":I
    .end local v4    # "oldRatRank":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRatFamilyMap()V
    .locals 17

    .line 159
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 162
    iget-object v0, v1, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "carrier_config"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    move-object v3, v0

    .line 164
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    .line 165
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v4, v0

    .line 166
    .local v4, "b":Landroid/os/PersistableBundle;
    if-nez v4, :cond_1

    monitor-exit v2

    return-void

    .line 173
    :cond_1
    const-string v0, "ratchet_rat_families"

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 174
    .local v5, "ratFamilies":[Ljava/lang/String;
    if-nez v5, :cond_2

    monitor-exit v2

    return-void

    .line 175
    :cond_2
    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    aget-object v0, v5, v8

    move-object v9, v0

    .line 176
    .local v9, "ratFamily":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 177
    .local v10, "rats":[Ljava/lang/String;
    array-length v0, v10

    const/4 v11, 0x2

    if-ge v0, v11, :cond_3

    .end local v9    # "ratFamily":Ljava/lang/String;
    .end local v10    # "rats":[Ljava/lang/String;
    goto :goto_2

    .line 178
    .restart local v9    # "ratFamily":Ljava/lang/String;
    .restart local v10    # "rats":[Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v11, v10

    invoke-direct {v0, v11}, Landroid/util/SparseIntArray;-><init>(I)V

    move-object v11, v0

    .line 179
    .local v11, "currentFamily":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    .line 180
    .local v0, "pos":I
    array-length v12, v10

    move v13, v0

    const/4 v0, 0x0

    .end local v0    # "pos":I
    .local v13, "pos":I
    :goto_1
    if-ge v0, v12, :cond_5

    aget-object v14, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .local v14, "ratString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .local v15, "ratInt":I
    nop

    .line 186
    nop

    .line 188
    :try_start_2
    iget-object v7, v1, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 189
    const-string v0, "RilRatcheter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RAT listed twice: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_2

    .line 192
    :cond_4
    add-int/lit8 v7, v13, 0x1

    .local v7, "pos":I
    invoke-virtual {v11, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    .end local v13    # "pos":I
    iget-object v13, v1, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .end local v14    # "ratString":Ljava/lang/String;
    .end local v15    # "ratInt":I
    add-int/lit8 v0, v0, 0x1

    move v13, v7

    goto :goto_1

    .line 184
    .end local v7    # "pos":I
    .restart local v13    # "pos":I
    .restart local v14    # "ratString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "RilRatcheter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NumberFormatException on "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    nop

    .line 175
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "ratFamily":Ljava/lang/String;
    .end local v10    # "rats":[Ljava/lang/String;
    .end local v11    # "currentFamily":Landroid/util/SparseIntArray;
    .end local v13    # "pos":I
    .end local v14    # "ratString":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "ratFamilies":[Ljava/lang/String;
    :cond_6
    monitor-exit v2

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static updateBandwidths([ILandroid/telephony/ServiceState;)Z
    .locals 3
    .param p0, "bandwidths"    # [I
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 61
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    return v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 66
    .local v1, "ssAggregateBandwidth":I
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    .line 68
    .local v2, "newAggregateBandwidth":I
    if-le v2, v1, :cond_1

    .line 69
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    .line 70
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_1
    return v0
.end method


# virtual methods
.method public ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Z)V
    .locals 4
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;
    .param p3, "locationChange"    # Z

    .line 104
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RatRatcheter;->isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    .line 108
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    .line 111
    return-void

    .line 113
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 114
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v1

    .line 116
    .local v1, "newVoiceRat":I
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 117
    .end local v1    # "newVoiceRat":I
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mVoiceRatchetEnabled:Z

    .line 122
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 124
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 123
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v1

    .line 125
    .local v1, "newDataRat":I
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 126
    .end local v1    # "newDataRat":I
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v1, v3, :cond_5

    .line 128
    iput-boolean v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mDataRatchetEnabled:Z

    .line 131
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    if-nez v1, :cond_7

    .line 132
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    if-nez v1, :cond_7

    .line 133
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    :goto_2
    move v0, v2

    .line 134
    .local v0, "newUsingCA":Z
    :goto_3
    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setIsUsingCarrierAggregation(Z)V

    .line 135
    return-void
.end method
