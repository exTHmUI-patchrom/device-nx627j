.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final ACTION_ALL_ICC_QUERY_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ALL_ICC_QUERY_DONE"

.field private static final CARRIER_MODE_CT_CLASS_A:Ljava/lang/String; = "ct_class_a"

.field private static final CT_IIN:Ljava/lang/String; = "898603,898611,8985231,8985302,8985307"

.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field private static final EVENT_UPDATE_NV_RECORD:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final ROAMING_SETTINGS_CONFIG:Ljava/lang/String; = "persist.vendor.radio.roamingsettings"

.field private static final mNumPhones:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# instance fields
.field private isNVSubAvailable:Z

.field private mCarrierMode:Ljava/lang/String;

.field private mIsCTClassA:Z

.field private mIsRecordUpdateRequired:[Z

.field private needEnableRoamingSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    .line 97
    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 76
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    .line 83
    const-string v1, "persist.vendor.radio.carrier_mode"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    const-string v2, "ct_class_a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    .line 96
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    .line 121
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 122
    move v1, v0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v0, v2, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method private checkUiccCard(Ljava/lang/String;)V
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 222
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_2

    .line 223
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 224
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 225
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    nop

    .line 226
    .local v1, "hasUiccApp":Z
    :cond_1
    if-nez v1, :cond_2

    .line 227
    const-string v2, "QtiSubscriptionInfoUpdater"

    const-string v3, "This is a 3G CT card."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    .line 231
    .end local v0    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v1    # "hasUiccApp":Z
    :cond_2
    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, "This is a non-CT card."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    .line 235
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 2

    .line 112
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    monitor-enter p0

    .line 179
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record already exists ignore duplicate update, existing IccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recvd iccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v2, ""

    if-ne v0, v2, :cond_2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v1, v0, p1

    .line 189
    :cond_2
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 190
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", iccId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " needEnableRoamingSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.vendor.radio.roamingsettings"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V

    .line 195
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    goto :goto_0

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    if-nez v0, :cond_4

    .line 197
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V

    .line 201
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 202
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->checkUiccCard(Ljava/lang/String;)V

    .line 206
    :cond_5
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_6
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "slotId":I
    .end local p2    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    throw p1
.end method

.method static init(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 4
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 101
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    goto :goto_0

    .line 105
    :cond_0
    const-string v1, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCtCard(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iccId"    # Ljava/lang/String;

    .line 238
    const-string v0, "898603,898611,8985231,8985302,8985307"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 239
    .local v4, "iin":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iccid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is CT card"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x1

    return v0

    .line 238
    .end local v4    # "iin":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return v2
.end method

.method private sendBroadCastToApp()V
    .locals 4

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.networksetting"

    const-string v2, "com.qualcomm.qti.networksetting.SimAlertNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast to NetworkSetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method private setRoamingSettingsState(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "install"    # Z

    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v0, "QtiSubscriptionInfoUpdater"

    const-string v1, "setRoamingSettingsState, context null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_1

    .line 254
    const-string v1, "QtiSubscriptionInfoUpdater"

    const-string v2, "setRoamingSettingsState, PackageManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_1
    const-string v1, "com.qualcomm.qti.roamingsettings"

    .line 259
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.qualcomm.qti.roamingsettings.RoamingSettingsActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 262
    :cond_2
    const/4 v3, 0x2

    .line 263
    .local v3, "state":I
    :goto_0
    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 265
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 266
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    const-string v7, "QtiSubscriptionInfoUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setRoamingSettings state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 271
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_1

    .line 273
    :cond_4
    return-void
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .line 170
    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void

    .line 171
    :cond_1
    :goto_0
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubInfoRecord, invalid input IccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage: EVENT:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 136
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleUpdateNVRecord(I)V

    .line 137
    goto :goto_0

    .line 132
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 133
    nop

    .line 143
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 293
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 301
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    .line 302
    return-void
.end method

.method protected handleSimError(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 306
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 314
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimError(I)V

    .line 315
    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 277
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 280
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    .line 281
    return-void
.end method

.method protected handleSimLocked(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 288
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    .line 289
    return-void
.end method

.method public handleUpdateNVRecord(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 152
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 154
    const-string v0, "DUMMY_NV_ID"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_1

    .line 160
    const-string v2, "QtiSubscriptionInfoUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateNVRecord, active IccID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DUMMY_NV_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimAbsent(I)V

    .line 167
    .end local v0    # "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public updateNVRecord(ZI)V
    .locals 3
    .param p1, "isNVReady"    # Z
    .param p2, "slotId"    # I

    .line 146
    const-string v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNVRecord, isNVReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 148
    const/16 v0, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 5

    monitor-enter p0

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "isUpdateRequired":Z
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_0
    :try_start_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v2, v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 323
    goto :goto_1

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "index":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 328
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 329
    const-string v2, "QtiSubscriptionInfoUpdater"

    const-string v3, "SIM state changed, Updating user preference "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 338
    :cond_2
    move v2, v1

    .restart local v2    # "index":I
    :goto_2
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v2, v3, :cond_4

    .line 339
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v1, v3, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 342
    .end local v2    # "index":I
    :cond_3
    const-string v1, "QtiSubscriptionInfoUpdater"

    const-string v2, "Ignoring subscription update event"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_4
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "isUpdateRequired":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    throw v0
.end method
