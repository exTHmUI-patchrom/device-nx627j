.class public Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "QtiTelephonyComponentFactory.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;


# instance fields
.field private mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "QtiTelephonyComponentFactory"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 54
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
    .locals 1

    .line 58
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 2

    .line 153
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getIDeviceIdleController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    return-object v0
.end method

.method public getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    .locals 1
    .param p1, "slotId"    # I

    .line 227
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    aget-object v0, v0, p1

    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 168
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSubscriptionController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 90
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiDcTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .line 108
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v0

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 182
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, " makeExtTelephonyClasses "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p1, p3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 184
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    .line 185
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 186
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 187
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/QtiCallStateNotifier;->init([Lcom/android/internal/telephony/Phone;)V

    .line 189
    invoke-static {p1, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultDataController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 192
    invoke-static {p1, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/NBDefaultVoiceController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 196
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 197
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 200
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error creating ExtTelephonyServiceImpl"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 64
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 96
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 102
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccSmsInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 139
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "displayAddr"    # Ljava/lang/String;
    .param p8, "referenceNumber"    # I
    .param p9, "sequenceNumber"    # I
    .param p10, "messageCount"    # I
    .param p11, "is3gpp2WapPdu"    # Z
    .param p12, "msgBody"    # Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "msgBody"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super/range {p0 .. p9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 161
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 11
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sc"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 208
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiPhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 216
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v2, v0, v1

    .line 223
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mRil:[Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RilInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 84
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiServiceStateTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 70
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 175
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSubscriptionInfoUpdater"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->init(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v0

    return-object v0
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 2
    .param p1, "pdu"    # [B

    .line 114
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v0

    return-object v0
.end method
