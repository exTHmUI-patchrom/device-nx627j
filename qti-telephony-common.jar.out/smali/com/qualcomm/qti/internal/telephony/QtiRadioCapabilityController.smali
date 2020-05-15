.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# static fields
.field static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x3

.field private static final FAILURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z = false

.field private static final mNumPhones:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private bothPhonesMappedToSameStack:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mNeedSetDds:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 79
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 83
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 84
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 85
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 87
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 88
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 129
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 112
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 115
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 117
    nop

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x1

    invoke-interface {v2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    const-string v1, "Constructor - Exit"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 3

    .line 178
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2

    .line 103
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 453
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 458
    .local v0, "subId":[I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .local v1, "networkMode":I
    goto :goto_0

    .line 460
    .end local v1    # "networkMode":I
    :catch_0
    move-exception v1

    .line 461
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNwMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 462
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 465
    .local v1, "networkMode":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const/4 v3, 0x0

    aget v4, v0, v3

    .line 466
    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get sub based N/W mode, val["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get slotId based N/W mode, val["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 474
    :goto_1
    return v1
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "supportedRafMaskForNwMode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 550
    return v0

    .line 553
    :cond_0
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 555
    .local v1, "nwModeRaf":I
    and-int v0, p2, v1

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] raf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " supportedRafMaskForNwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    return v2
.end method

.method private handleRadioCapsAvailable()V
    .locals 2

    .line 255
    const-string v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 261
    :goto_0
    return-void
.end method

.method private handleUpdateBindingDone(I)V
    .locals 7
    .param p1, "result"    # I

    .line 191
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 192
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 194
    const-string v0, "persist.vendor.radio.flexmap_type"

    const-string v3, "nw_mode"

    .line 195
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "flexMapSupportType":Ljava/lang/String;
    const-string v3, "dds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const-string v3, "handleUpdateBindingDone: set dds "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 202
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 201
    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_1

    .line 204
    :cond_0
    move v3, v1

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v3, v4, :cond_2

    .line 205
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 206
    .local v4, "resp":Landroid/os/Message;
    if-eqz v4, :cond_1

    .line 207
    const-string v5, "handleUpdateBindingDone: try initiate pending flex map req "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    return-void

    .line 204
    .end local v4    # "resp":Landroid/os/Message;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "flexMapSupportType":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    .line 221
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 222
    move v0, v1

    .local v0, "i":I
    :goto_2
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->fetchIMEI()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "i":I
    :cond_3
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_4

    .line 228
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 235
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 238
    if-ne p1, v2, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 241
    nop

    .local v1, "i":I
    :goto_5
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_8

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "errorCode":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 244
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_7

    .line 245
    if-eq p1, v2, :cond_6

    .line 246
    const/4 v1, 0x2

    .line 248
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 249
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v1    # "errorCode":I
    .end local v3    # "resp":Landroid/os/Message;
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_5

    .line 252
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "isCallInProgress":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_1

    .line 599
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isAnyPhoneInEcmState()Z
    .locals 3

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "isInEcmState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 613
    goto :goto_1

    .line 610
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isCardAbsent(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 631
    const/4 v0, -0x1

    .line 633
    .local v0, "provisionStatus":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 635
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 639
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .locals 2

    .line 187
    const-string v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 5
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .line 426
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v0, v0, [I

    .line 427
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 428
    .local v1, "maxNumRafSupported":I
    const/4 v2, 0x0

    .line 431
    .local v2, "isSupported":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v3, v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v0, v3

    .line 433
    aget v4, v0, v3

    if-ge v1, v4, :cond_0

    aget v1, v0, v3

    .line 431
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "i":I
    :cond_1
    aget v3, v0, p2

    if-ne v3, v1, :cond_2

    const/4 v2, 0x1

    .line 439
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nwMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", on stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    if-eqz v2, :cond_3

    const-string v4, "Supported"

    goto :goto_1

    :cond_3
    const-string v4, "Not Supported"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 442
    return v2
.end method

.method private isUiccProvisionInProgress()Z
    .locals 4

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 623
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 627
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 758
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 766
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 762
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 771
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private notifyRadioCapsUpdated(Z)V
    .locals 3
    .param p1, "isCrossMapDone"    # Z

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 579
    if-eqz p1, :cond_0

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 587
    return-void
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 267
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 593
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 564
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    .line 565
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 566
    .local v1, "type":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 568
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 569
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const/4 v4, 0x0

    aget v4, v2, v4

    .line 570
    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, v0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 572
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isUserDataEnabled()Z

    move-result v4

    .line 571
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setUserDataEnabled(Z)V

    .line 574
    :cond_0
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .locals 2
    .param p1, "newStatus"    # Z

    .line 643
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 645
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 273
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 276
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    aput v2, v1, v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 3

    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateNewNwModeToDB()V
    .locals 7

    .line 480
    const/4 v0, -0x1

    .line 481
    .local v0, "nwModeFromDB":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "nwModeFromDB":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_2

    .line 482
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    .line 486
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    if-eq v3, v2, :cond_1

    .line 487
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 489
    .local v3, "subId":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNewNwModeToDB: subId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " new Nw mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " old n/w mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 491
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v5, v3, v1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v6, v6, v0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v6, v6, v0

    invoke-static {v4, v5, v0, v6}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 481
    .end local v3    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .locals 5
    .param p1, "isNwModeRequest"    # Z

    .line 372
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferredStackIds: Modem Caps not Available, request ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    :cond_0
    if-nez p1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 383
    const/4 v0, 0x0

    move v1, v0

    .local v1, "curPhoneId":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_8

    .line 385
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 389
    goto/16 :goto_3

    .line 391
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 397
    move v2, v0

    .local v2, "otherPhoneId":I
    :goto_1
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v3, :cond_7

    .line 399
    if-ne v2, v1, :cond_3

    goto/16 :goto_2

    .line 400
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferredStackIds:  other stack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "],  NwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] on phoneId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v1

    .line 411
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 413
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] and phoneId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v2

    aput v4, v3, v1

    .line 418
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 397
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 383
    .end local v2    # "otherPhoneId":I
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 423
    .end local v1    # "curPhoneId":I
    :cond_8
    return-void
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .locals 10
    .param p1, "isNwModeRequest"    # Z

    monitor-enter p0

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "isUpdateStackBindingRequired":Z
    const/4 v1, 0x0

    .line 292
    .local v1, "response":Z
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v2

    .line 293
    .local v2, "callInProgress":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 294
    .local v3, "isInEcmState":Z
    const-string v4, "persist.vendor.radio.flexmap_type"

    const-string v5, "nw_mode"

    .line 295
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "flexMapSupportType":Ljava/lang/String;
    const-string v5, "updateStackBindingIfRequired"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 298
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    const-string v5, "nw_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 304
    :cond_0
    if-nez v2, :cond_b

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 309
    :cond_1
    const/4 v5, 0x0

    if-nez p1, :cond_4

    .line 310
    move v6, v5

    .local v6, "i":I
    :goto_0
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v6, v7, :cond_4

    .line 311
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v7

    .line 315
    .local v7, "subId":[I
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    array-length v8, v7

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v9, v7, v5

    .line 316
    invoke-virtual {v8, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 317
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: subId not generated yet "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return v1

    .line 310
    .end local v7    # "subId":[I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    .end local v6    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->is7Plus7DeviceFlexMapped()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_4

    .line 327
    :cond_5
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 328
    move v6, v5

    .restart local v6    # "i":I
    :goto_1
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v6, v7, :cond_7

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " pref stack["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " current stack["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v7, v7, v6

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v8, v8, v6

    if-eq v7, v8, :cond_6

    .line 333
    const/4 v0, 0x1

    .line 334
    goto :goto_2

    .line 328
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 338
    .end local v6    # "i":I
    :cond_7
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 339
    if-eqz v0, :cond_9

    .line 340
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v6, v6, [Landroid/telephony/RadioAccessFamily;

    .line 341
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    nop

    .local v5, "i":I
    :goto_3
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v5, v7, :cond_8

    .line 342
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v5

    aget v8, v8, v9

    invoke-direct {v7, v5, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v5

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 344
    .end local v5    # "i":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    .line 346
    .end local v6    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_9
    monitor-exit p0

    return v1

    .line 324
    :cond_a
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v5

    .line 305
    :cond_b
    :goto_5
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Call state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ecm state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    monitor-exit p0

    return v1

    .line 299
    :cond_c
    :goto_6
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No need to update Stack Bindingm prop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ph count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    monitor-exit p0

    return v1

    .line 289
    .end local v0    # "isUpdateStackBindingRequired":Z
    .end local v1    # "response":Z
    .end local v2    # "callInProgress":Z
    .end local v3    # "isInEcmState":Z
    .end local v4    # "flexMapSupportType":Ljava/lang/String;
    .end local p1    # "isNwModeRequest":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    const-string v0, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 154
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    .line 155
    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    .line 150
    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 160
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 162
    .local v1, "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 165
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :cond_0
    const-string v1, "Invalid user obj"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    const-string v0, "Invalid msg obj"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 170
    nop

    .line 175
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initNormalMappingRequest()Z
    .locals 14

    .line 719
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/RadioCapability;

    .line 720
    .local v0, "oldRadioCapability":[Lcom/android/internal/telephony/RadioCapability;
    const/16 v1, 0x16

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 722
    .local v1, "maxRaf":I
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v3

    .line 724
    .local v3, "minRaf":I
    const-string v4, " initNormalMappingRequest  "

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 731
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v5, v6, :cond_2

    .line 732
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    aput-object v6, v0, v5

    .line 733
    new-instance v13, Lcom/android/internal/telephony/RadioCapability;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v5, :cond_0

    .line 734
    move v10, v3

    goto :goto_1

    :cond_0
    move v10, v1

    :goto_1
    if-nez v5, :cond_1

    const-string v6, "1"

    :goto_2
    move-object v11, v6

    goto :goto_3

    :cond_1
    const-string v6, "0"

    goto :goto_2

    :goto_3
    const/4 v12, 0x1

    move-object v6, v13

    move v7, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 735
    .local v6, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v5

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 731
    .end local v6    # "rc":Lcom/android/internal/telephony/RadioCapability;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 738
    .end local v5    # "i":I
    :cond_2
    sget v5, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v5, [Landroid/telephony/RadioAccessFamily;

    .line 739
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    move v6, v4

    .local v6, "i":I
    :goto_4
    sget v7, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v6, v7, :cond_4

    .line 740
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    if-nez v6, :cond_3

    move v8, v1

    goto :goto_5

    :cond_3
    move v8, v3

    :goto_5
    invoke-direct {v7, v6, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v5, v6

    .line 739
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 745
    .end local v6    # "i":I
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 747
    move v2, v4

    .local v2, "i":I
    :goto_6
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v6, :cond_5

    .line 748
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 750
    .end local v2    # "i":I
    :cond_5
    const-string v2, " initNormalMappingRequest:  Fail, request in progress "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 752
    return v4

    .line 754
    :cond_6
    return v2
.end method

.method is7Plus7DeviceFlexMapped()Z
    .locals 5

    .line 683
    const/4 v0, 0x0

    .line 685
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    .line 687
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    .line 688
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is flex mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    .line 690
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    .line 694
    :cond_0
    return v0
.end method

.method isBothPhonesMappedToSameStack()Z
    .locals 5

    .line 698
    const/4 v0, 0x0

    .line 700
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    .line 703
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: both Phones mapped same stackId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " raf = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, v3

    .line 705
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x1

    .line 707
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 710
    :cond_0
    return v0
.end method

.method public isSetNWModeInProgress()Z
    .locals 3

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "retVal":Z
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    move v0, v2

    .line 653
    monitor-exit v1

    .line 654
    return v0

    .line 653
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .line 658
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioCapabilityUpdated: Invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or SetNWModeInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 668
    :cond_1
    :goto_0
    return-void
.end method

.method public setDdsIfRequired(Z)V
    .locals 5
    .param p1, "forceSetDds"    # Z

    .line 671
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 672
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 673
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ddsPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " needSetDds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 675
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 678
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 680
    :cond_1
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 514
    .local v0, "subId":[I
    const/4 v1, 0x0

    .line 516
    .local v1, "isSubActive":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    move v1, v3

    .line 520
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType: nwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 523
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 524
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 527
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v4, p1

    .line 535
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    .line 536
    :cond_2
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 540
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 542
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :goto_0
    monitor-exit p0

    return-void

    .line 509
    .end local v0    # "subId":[I
    .end local v1    # "isSubActive":Z
    :cond_4
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 507
    .end local p1    # "phoneId":I
    .end local p2    # "networkType":I
    .end local p3    # "response":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    throw p1
.end method
