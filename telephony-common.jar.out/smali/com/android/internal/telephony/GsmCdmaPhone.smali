.class public Lcom/android/internal/telephony/GsmCdmaPhone;
.super Lcom/android/internal/telephony/Phone;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field private static final ACTION_RADIO_CAPABILITY_UPDATED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final DBG:Z = true

.field private static final IMEI_14_DIGIT:I = 0xe

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "GsmCdmaPhone"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field private static final REPORTING_HYSTERESIS_DB:I = 0x2

.field private static final REPORTING_HYSTERESIS_KBPS:I = 0x32

.field private static final REPORTING_HYSTERESIS_MILLIS:I = 0xbb8

.field private static final VDBG:Z = false

.field private static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private mBroadcastEmergencyCallStateChanges:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

.field private mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

.field public mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field private mCarrerIdentifier:Lcom/android/internal/telephony/CarrierIdentifier;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field public mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mMeid:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrecisePhoneType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field public mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mVmNumber:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3086
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 203
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-object v8, p0

    move/from16 v9, p6

    .line 209
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    const-string v0, "GSM"

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "CDMA"

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 131
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 138
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 142
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 195
    iput-boolean v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 236
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$1;

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/GsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3679
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$2;

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/GsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v0, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput v9, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 214
    move-object v0, p2

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 215
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 218
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    .line 219
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 220
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v2, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v8, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 222
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 223
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierIdentifier(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierIdentifier;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrerIdentifier:Lcom/android/internal/telephony/CarrierIdentifier;

    .line 225
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCdmaPhone: constructor: sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v2, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->processStackReady()V

    return-void
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 5
    .param p0, "sysSelCodeInt"    # I
    .param p1, "sch"    # [Ljava/lang/String;

    .line 3147
    const/4 v0, 0x0

    move v1, v0

    .line 3150
    .local v1, "isOtaSpNum":Z
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3151
    .local v2, "selRc":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3152
    add-int/lit8 v3, v0, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v0, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3153
    add-int/lit8 v3, v0, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3154
    .local v3, "selMin":I
    add-int/lit8 v4, v0, 0x3

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    .local v4, "selMax":I
    if-lt p0, v3, :cond_0

    if-gt p0, v4, :cond_0

    .line 3158
    const/4 v1, 0x1

    .line 3159
    goto :goto_1

    .line 3151
    .end local v3    # "selMin":I
    .end local v4    # "selMax":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3167
    .end local v0    # "i":I
    .end local v2    # "selRc":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 3163
    :catch_0
    move-exception v0

    .line 3166
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "GsmCdmaPhone"

    const-string v3, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3168
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_2
    return v1
.end method

.method private clearForStackReady()V
    .locals 1

    .line 3696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 3697
    return-void
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 3123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3124
    .local v0, "dialStrLen":I
    const/4 v1, -0x1

    .line 3126
    .local v1, "sysSelCodeInt":I
    const-string v2, "*228"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 3132
    nop

    .line 3133
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3132
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3136
    :cond_0
    const-string v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    return v1
.end method

.method private getReplaceRadioTechIfNeed(I)I
    .locals 4
    .param p1, "currentRadioTech"    # I

    .line 3419
    move v0, p1

    .local v0, "newVoiceRadioTech":I
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 3420
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 3422
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 3423
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3424
    :cond_1
    const/4 v0, 0x6

    .line 3425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneObjectUpdater: current is C CARD ,volteReplacementRat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3429
    :cond_2
    return v0
.end method

.method private getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 2

    .line 3510
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    return-object v0
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .line 1484
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1485
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .line 855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 856
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 860
    const-string v0, "MmiCode 0: rejectCall"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GsmCdmaPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 867
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    goto :goto_1

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_2

    .line 869
    const-string v0, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 873
    :cond_2
    :goto_1
    return v1
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 917
    .local v0, "len":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 918
    const/4 v1, 0x0

    return v1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    .line 923
    .local v1, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 925
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 926
    .local v3, "ch":C
    add-int/lit8 v4, v3, -0x30

    .line 927
    .local v4, "callIndex":I
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v5, v1, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v5

    .line 930
    .local v5, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v5, :cond_1

    if-lt v4, v2, :cond_1

    const/16 v6, 0x13

    if-gt v4, v6, :cond_1

    .line 931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmiCode 2: separate call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 932
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    .line 934
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "separate: invalid call index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 935
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ch":C
    .end local v4    # "callIndex":I
    .end local v5    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    goto :goto_0

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCdmaPhone"

    const-string v5, "separate failed"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 940
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    goto :goto_2

    .line 943
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3

    .line 944
    const-string v3, "MmiCode 2: accept ringing call"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 945
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    goto :goto_1

    .line 947
    :cond_3
    const-string v3, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 948
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    :goto_1
    goto :goto_2

    .line 950
    :catch_1
    move-exception v3

    .line 951
    .restart local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCdmaPhone"

    const-string v5, "switch failed"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 956
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_2
    return v2
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;

    .line 878
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 880
    .local v0, "len":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 881
    const/4 v1, 0x0

    return v1

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    .line 887
    .local v1, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 888
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 889
    .local v3, "ch":C
    add-int/lit8 v4, v3, -0x30

    .line 891
    .local v4, "callIndex":I
    if-lt v4, v2, :cond_1

    const/16 v5, 0x13

    if-gt v4, v5, :cond_1

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 893
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v5, v1, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V

    .line 895
    .end local v3    # "ch":C
    .end local v4    # "callIndex":I
    :cond_1
    goto :goto_0

    .line 905
    :catch_0
    move-exception v3

    goto :goto_1

    .line 896
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3

    .line 897
    const-string v3, "MmiCode 1: hangup foreground"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 899
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 901
    :cond_3
    const-string v3, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 902
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    goto :goto_2

    .line 905
    :goto_1
    nop

    .line 906
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCdmaPhone"

    const-string v5, "hangup failed"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    sget-object v4, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 911
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_2
    return v2
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .line 983
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 984
    const/4 v0, 0x0

    return v0

    .line 987
    :cond_0
    const-string v0, "GsmCdmaPhone"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 990
    return v1
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2864
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2865
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_4

    .line 2866
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    .line 2871
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p1

    .local v4, "s":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 2872
    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 2873
    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2876
    goto :goto_2

    .line 2871
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2869
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2881
    :cond_4
    :goto_2
    return-void
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .line 971
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 973
    .local v0, "len":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 974
    const/4 v1, 0x0

    return v1

    .line 977
    :cond_0
    const-string v2, "MmiCode 4: explicit call transfer"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->explicitCallTransfer()V

    .line 979
    return v1
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .line 960
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 961
    const/4 v0, 0x0

    return v0

    .line 964
    :cond_0
    const-string v0, "MmiCode 3: merge calls"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    .line 966
    return v1
.end method

.method private handleRadioAvailable()V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->startLceAfterRadioIsAvailable()V

    .line 2307
    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 2

    .line 2326
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2332
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2333
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2334
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2332
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2338
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2339
    return-void
.end method

.method private handleRadioOn()V
    .locals 2

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2313
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 2323
    :cond_0
    return-void
.end method

.method private initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 250
    instance-of v0, p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 253
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/EcbmHandler;->getInstance()Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/EcbmHandler;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/EcbmHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcbmHandler:Lcom/android/internal/telephony/EcbmHandler;

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "power"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 258
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "GsmCdmaPhone"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x7

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x24

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x1b

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2d

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    const-string v5, ""

    .line 277
    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 280
    const-string v1, "persist.radio.reset_on_switch"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x29

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x27

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/16 v2, 0x4f

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    new-instance v1, Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 291
    new-instance v1, Lcom/android/internal/telephony/CarrierInfoManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/CarrierInfoManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    .line 292
    return-void
.end method

.method private initRatSpecific(I)V
    .locals 7
    .param p1, "precisePhoneType"    # I

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 297
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 300
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Precise phone type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 304
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 305
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 308
    if-eqz v1, :cond_5

    .line 309
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    goto/16 :goto_1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 314
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->getInEcmMode()Z

    move-result v2

    .line 315
    .local v2, "isInEcm":Z
    if-eqz v2, :cond_1

    .line 317
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcbmHandler:Lcom/android/internal/telephony/EcbmHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 325
    if-eqz v1, :cond_2

    .line 326
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 329
    :cond_2
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "operatorAlpha":Ljava/lang/String;
    const-string v4, "ro.cdma.home.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: operatorAlpha=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' operatorNumeric=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 333
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 335
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v5, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 337
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update icc_operator_numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 341
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v5, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 345
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 352
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 354
    .end local v2    # "isInEcm":Z
    .end local v3    # "operatorAlpha":Ljava/lang/String;
    .end local v4    # "operatorNumeric":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method

.method private invalidMeid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "meid"    # Ljava/lang/String;

    .line 2342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "00000000"

    .line 2343
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2342
    :goto_1
    return v0
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialStr"    # Ljava/lang/String;

    .line 3191
    const/4 v0, 0x0

    .line 3192
    .local v0, "isOtaSpNum":Z
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v1

    .line 3193
    .local v1, "sysSelCodeInt":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3194
    return v0

    .line 3197
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3198
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3200
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string v4, "GsmCdmaPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCarrierOtaSpNum,schema"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3204
    sget-object v4, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 3206
    .local v4, "sch":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v5

    const-string v7, "SELC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3207
    if-eq v1, v2, :cond_1

    .line 3208
    invoke-static {v1, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 3211
    :cond_1
    const-string v2, "GsmCdmaPhone"

    const-string v5, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3214
    :cond_2
    aget-object v2, v4, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v4, v5

    const-string v6, "FC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3215
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3216
    .local v2, "fcLen":I
    const/4 v6, 0x2

    aget-object v6, v4, v6

    .line 3217
    .local v6, "fc":Ljava/lang/String;
    invoke-virtual {p1, v5, v6, v5, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3218
    const/4 v0, 0x1

    goto :goto_0

    .line 3220
    :cond_3
    const-string v5, "GsmCdmaPhone"

    const-string v7, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    .end local v2    # "fcLen":I
    .end local v6    # "fc":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 3224
    :cond_4
    const-string v2, "GsmCdmaPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    .end local v4    # "sch":[Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 3229
    :cond_5
    const-string v2, "GsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :goto_2
    goto :goto_3

    .line 3234
    :cond_6
    const-string v2, "GsmCdmaPhone"

    const-string v3, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :goto_3
    return v0
.end method

.method private isCdmaSubscriptionAppPresent()Z
    .locals 3

    .line 3303
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 3304
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3305
    .local v0, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_0

    .line 3306
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3305
    :goto_0
    return v1
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 1825
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private isImsUtEnabledOverCdma()Z
    .locals 1

    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1831
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1829
    :goto_0
    return v0
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 3091
    const/4 v0, 0x0

    .line 3092
    .local v0, "isOtaspDialString":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3094
    .local v1, "dialStrLen":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3095
    const-string v2, "*228"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3096
    const/4 v0, 0x1

    goto :goto_0

    .line 3099
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 3100
    .local v2, "sysSelCodeInt":I
    packed-switch v2, :pswitch_data_0

    .end local v2    # "sysSelCodeInt":I
    goto :goto_0

    .line 3109
    .restart local v2    # "sysSelCodeInt":I
    :pswitch_0
    const/4 v0, 0x1

    .line 3110
    nop

    .line 3115
    .end local v2    # "sysSelCodeInt":I
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    .line 3016
    const/4 v0, 0x0

    .line 3017
    .local v0, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040566

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3020
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3021
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3023
    .local v2, "configArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    aget-object v3, v2, v4

    const-string v6, "true"

    .line 3024
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    array-length v3, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    aget-object v3, v2, v5

    .line 3025
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v4

    const-string v4, "true"

    .line 3026
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v5

    .line 3027
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3028
    :cond_1
    const/4 v0, 0x1

    .line 3031
    .end local v2    # "configArray":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3032
    return v0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .line 1813
    packed-switch p1, :pswitch_data_0

    .line 1820
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1818
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .line 1791
    packed-switch p1, :pswitch_data_0

    .line 1800
    const/4 v0, 0x0

    return v0

    .line 1798
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 3656
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 3664
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 3660
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    return-void
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 2236
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2237
    const-string v0, "onIncomingUSSD: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2243
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2246
    .local v2, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2250
    .local v3, "isUssdError":Z
    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    move v0, v1

    nop

    .line 2256
    .local v0, "isUssdRelease":Z
    :cond_3
    const/4 v1, 0x0

    .line 2257
    .local v1, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 2258
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2259
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2260
    goto :goto_3

    .line 2257
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2264
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_5
    :goto_3
    if-eqz v1, :cond_8

    .line 2267
    if-eqz v0, :cond_6

    .line 2268
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    goto :goto_4

    .line 2269
    :cond_6
    if-eqz v3, :cond_7

    .line 2270
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    goto :goto_4

    .line 2272
    :cond_7
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2274
    :cond_8
    if-nez v3, :cond_9

    if-eqz p2, :cond_9

    .line 2281
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2284
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2281
    invoke-static {p2, v2, p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 2285
    .local v4, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    .line 2287
    .end local v4    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_9
    :goto_4
    return-void
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    .line 2229
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkInitiatedUssd: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2232
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 1
    .param p1, "eventCode"    # I

    .line 2792
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2794
    :cond_0
    const-string v0, "processIccRecordEvents: EVENT_CFI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 2798
    :goto_0
    return-void
.end method

.method private processStackReady()V
    .locals 2

    .line 3690
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->clearForStackReady()V

    .line 3691
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 3692
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 3693
    return-void
.end method

.method private registerForIccRecordEvents()V
    .locals 4

    .line 3036
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3037
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3038
    return-void

    .line 3040
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3041
    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3043
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3044
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 3046
    :cond_1
    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3047
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3049
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3052
    :cond_2
    :goto_0
    return-void
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 648
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 649
    const-string v1, "sendEmergencyCallbackModeChange"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "returnCode"    # I
    .param p4, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 1287
    new-instance v0, Landroid/telephony/UssdResponse;

    invoke-direct {v0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1288
    .local v0, "response":Landroid/telephony/UssdResponse;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v1, "returnData":Landroid/os/Bundle;
    const-string v2, "USSD_RESPONSE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1290
    invoke-virtual {p4, p3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1291
    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 363
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const-string v1, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 365
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_2

    .line 367
    :cond_0
    const-string v1, ""

    .line 369
    .local v1, "iso":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 370
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 375
    :goto_0
    goto :goto_1

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "GsmCdmaPhone"

    const-string v4, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_1

    .line 371
    :catch_1
    move-exception v2

    .line 372
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "GsmCdmaPhone"

    const-string v4, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 377
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 378
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 380
    .end local v1    # "iso":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .line 1489
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1490
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1491
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1492
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1493
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1415
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1416
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1418
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1422
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1427
    :goto_0
    return-void
.end method

.method private switchPhoneType(I)V
    .locals 2
    .param p1, "precisePhoneType"    # I

    .line 396
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 399
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "GSM"

    goto :goto_0

    :cond_0
    const-string v0, "CDMA"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPhoneName(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 404
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    .line 406
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    .line 410
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    .line 413
    :cond_3
    return-void
.end method

.method private switchVoiceRadioTech(I)V
    .locals 5
    .param p1, "newVoiceRadioTech"    # I

    .line 3435
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 3437
    .local v0, "outgoingPhoneName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching Voice Phone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    goto :goto_0

    :cond_0
    const-string v2, "CDMA"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3437
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3440
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3441
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 3442
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 3443
    .local v1, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v4, :cond_1

    .line 3444
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    goto :goto_1

    .line 3446
    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    .line 3448
    .end local v1    # "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3449
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    .line 3455
    :goto_2
    return-void

    .line 3451
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAndCreatePhone: newVoiceRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not CDMA or GSM (error) - aborting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3453
    return-void
.end method

.method private syncClirSetting()V
    .locals 5

    .line 2293
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2294
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2295
    .local v1, "clirSetting":I
    const-string v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncClirSetting: clir_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    if-ltz v1, :cond_0

    .line 2297
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2299
    :cond_0
    return-void
.end method

.method private unregisterForIccRecordEvents()V
    .locals 1

    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3056
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3057
    return-void

    .line 3059
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 3060
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3061
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3062
    return-void
.end method

.method private updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 2835
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2836
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2858
    :cond_0
    const-string v0, "updateCurrentCarrierInProvider not updated X retVal=true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2859
    return v1

    .line 2838
    :cond_1
    :goto_0
    const-string v0, "CDMAPhone: updateCurrentCarrierInProvider called"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2841
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "current"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2842
    .local v0, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2843
    .local v3, "map":Landroid/content/ContentValues;
    const-string v4, "numeric"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2849
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    return v1

    .line 2852
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "map":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 2853
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "GsmCdmaPhone"

    const-string v3, "Can\'t store current operator"

    invoke-static {v1, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2856
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_2
    return v2
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 716
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    .line 721
    :goto_0
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2930
    const-string v0, "[GsmCdmaPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2932
    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1390
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1392
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1394
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1396
    .local v1, "imsUseEnabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1398
    :try_start_0
    const-string v2, "addParticipant :: Trying to add participant in IMS call"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->addParticipant(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1400
    :catch_0
    move-exception v2

    .line 1401
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addParticipant :: IMS PS call exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1402
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_1
    goto :goto_2

    .line 1404
    :cond_2
    const-string v2, "addParticipant :: IMS is disabled so unable to add participant with IMS call"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1406
    :goto_2
    return-void
.end method

.method public canConference()Z
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canConference()Z

    move-result v0

    return v0

    .line 761
    :cond_1
    const-string v0, "canConference: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canTransfer()Z

    move-result v0

    return v0

    .line 813
    :cond_0
    const-string v0, "canTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 1965
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1968
    :cond_0
    const-string v0, "changeCallBarringPassword: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1970
    :goto_0
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 806
    return-void
.end method

.method public conference()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "conference() - delegated to IMS phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 775
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    goto :goto_1

    .line 781
    :cond_1
    const-string v0, "conference: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 783
    :goto_1
    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 13
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1062
    const-string v0, "CTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial@dial@\u62e8\u6253\u7535\u8bdd.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1069
    .local v0, "isEmergency":Z
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1071
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 1072
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1073
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "carrier_use_ims_first_for_emergency_bool"

    .line 1074
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1076
    .local v3, "alwaysTryImsForEmergencyCarrierConfig":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 1078
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1079
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1080
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1085
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1086
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    .line 1089
    .local v4, "useImsForCall":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 1092
    invoke-static {v7, v8}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1093
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v5

    .line 1095
    .local v7, "useImsForEmergency":Z
    :goto_2
    nop

    .line 1096
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1095
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1097
    .local v8, "dialPart":Ljava/lang/String;
    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v9, "#"

    .line 1098
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_3

    :cond_6
    move v9, v5

    .line 1100
    .local v9, "isUt":Z
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    move v5, v6

    nop

    .line 1103
    .local v5, "useImsForUt":Z
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "useImsForCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", useImsForEmergency="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", useImsForUt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isUt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_4

    :cond_8
    const-string v11, "N/A"

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_5

    :cond_9
    const-string v11, "N/A"

    :goto_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone.isVideoEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_6

    :cond_a
    const-string v11, "N/A"

    :goto_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_7

    :cond_b
    const-string v11, "N/A"

    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", isImsUseEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", imsPhone.isImsAvailable()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    :cond_c
    const-string v11, "N/A"

    :goto_8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1103
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1126
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget v11, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    iget-object v12, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V

    .line 1128
    if-eqz v4, :cond_d

    if-eqz v9, :cond_f

    :cond_d
    if-eqz v9, :cond_e

    if-nez v5, :cond_f

    :cond_e
    if-eqz v7, :cond_12

    .line 1130
    :cond_f
    :try_start_0
    const-string v10, "Trying IMS PS call"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 1132
    :catch_0
    move-exception v10

    .line 1133
    .local v10, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS PS call exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "useImsForCall ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", imsPhone ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1137
    const-string v11, "cs_fallback"

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz v0, :cond_10

    goto :goto_9

    .line 1141
    :cond_10
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v6, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1143
    throw v6

    .line 1138
    .end local v6    # "ce":Lcom/android/internal/telephony/CallStateException;
    :cond_11
    :goto_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS call failed with Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Falling back to CS."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1148
    .end local v10    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_12
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-ne v10, v6, :cond_14

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1149
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    if-eqz v10, :cond_14

    if-eqz v0, :cond_13

    goto :goto_a

    .line 1150
    :cond_13
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const-string v10, "cannot dial in current state"

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1153
    :cond_14
    :goto_a
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_16

    iget v10, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1154
    invoke-static {v10}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v10

    if-nez v10, :cond_16

    if-nez v0, :cond_16

    if-eqz v9, :cond_15

    if-eqz v5, :cond_15

    goto :goto_b

    .line 1157
    :cond_15
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    const/4 v10, 0x2

    const-string v11, "cannot dial voice call in airplane mode"

    invoke-direct {v6, v10, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1163
    :cond_16
    :goto_b
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1164
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-ne v10, v6, :cond_19

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1165
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1166
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v10

    if-nez v10, :cond_19

    :cond_17
    iget v10, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1167
    invoke-static {v10}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v10

    if-nez v10, :cond_19

    if-eqz v0, :cond_18

    goto :goto_c

    .line 1169
    :cond_18
    new-instance v10, Lcom/android/internal/telephony/CallStateException;

    const-string v11, "cannot dial voice call in out of service"

    invoke-direct {v10, v6, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 1173
    :cond_19
    :goto_c
    const-string v6, "Trying (non-IMS) CS call"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1176
    new-instance v6, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    iget-object v10, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 1177
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v6

    .line 1178
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v6

    .line 1176
    invoke-virtual {p0, p1, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6

    .line 1180
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    return-object v6
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1231
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "newDialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1235
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1236
    return-object v2

    .line 1240
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "networkPortion":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1242
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1241
    invoke-static {v1, p0, v3, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v3

    .line 1243
    .local v3, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1245
    if-nez v3, :cond_1

    .line 1246
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v5, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 1247
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1248
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v4, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    iget-object v6, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v7, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2

    .line 1251
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v2, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1253
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1254
    return-object v2

    .line 1257
    .end local v1    # "networkPortion":Ljava/lang/String;
    .end local v3    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    .line 2124
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3515
    const-string v0, "GsmCdmaPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3516
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrecisePhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimUiccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSubscriptionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEriManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEcm()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCarrierOtaSpNumSchema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconIndex()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriText()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isMinInfoReady()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMinInfoReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCspPlmnEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCspPlmnEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3543
    return-void
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 787
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "enableEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 792
    :goto_0
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    .line 2119
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->explicitCallTransfer()V

    goto :goto_0

    .line 823
    :cond_0
    const-string v0, "explicitCallTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 825
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 417
    const-string v0, "GsmCdmaPhone finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "GsmCdmaPhone"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 422
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2046
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2049
    :cond_0
    const-string v0, "getAvailableNetworks: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2047
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2051
    :goto_1
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 1926
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1928
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 1930
    return-void

    .line 1932
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1934
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 1935
    :cond_1
    const-string v0, "getCallBarringOption: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1937
    :goto_0
    return-void
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceServiceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1843
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1865
    :cond_0
    const-string v0, "getCallForwardingOption: not possible in CDMA without IMS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1844
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1845
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    .line 1846
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1847
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1848
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1850
    return-void

    .line 1853
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1854
    const-string v1, "requesting call forwarding query."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1856
    if-nez p1, :cond_4

    .line 1857
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "resp":Landroid/os/Message;
    goto :goto_1

    .line 1859
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    move-object v1, p3

    .line 1861
    .restart local v1    # "resp":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1864
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_5
    nop

    .line 1867
    :goto_2
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1836
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1838
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 2010
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_1

    .line 2011
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2012
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    .line 2013
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2014
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2015
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2016
    return-void

    .line 2021
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 2022
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 2025
    :goto_1
    return-void
.end method

.method public getCarrierId()I
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrerIdentifier:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->getCarrierId()I

    move-result v0

    return v0
.end method

.method public getCarrierIdListVersion()I
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrerIdentifier:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->getCarrierListVersion()I

    move-result v0

    return v0
.end method

.method public getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .locals 1
    .param p1, "keyType"    # I

    .line 1618
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierInfoManager;->getCarrierInfoForImsiEncryption(ILandroid/content/Context;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrerIdentifier:Lcom/android/internal/telephony/CarrierIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierIdentifier;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .line 3266
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3267
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0

    .line 3269
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .line 3280
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0

    .line 3283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .line 3292
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3293
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3295
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 3296
    .local v0, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v1

    .line 3297
    .local v1, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2941
    const-string v0, "[GsmCdmaPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2943
    return-void
.end method

.method public getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;
    .locals 8
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation(Landroid/os/WorkSource;)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 449
    .local v0, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 451
    .local v1, "mode":I
    if-nez v1, :cond_1

    .line 453
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 454
    .local v2, "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    .line 457
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v6

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v7

    .line 454
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 458
    move-object v0, v2

    .line 460
    .end local v2    # "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 3

    .line 3625
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 3626
    .local v0, "subId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 3627
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 3628
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_0

    .line 3629
    const/4 v2, 0x0

    return-object v2

    .line 3631
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 3

    .line 565
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 567
    .local v0, "ret":Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 568
    sget-object v1, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 586
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 582
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 583
    goto :goto_0

    .line 578
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 579
    goto :goto_0

    .line 574
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 575
    goto :goto_0

    .line 570
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 571
    nop

    .line 591
    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 523
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 525
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v1, :cond_0

    .line 529
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-nez v1, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 541
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/GsmCdmaPhone$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 555
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 552
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 553
    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 545
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 546
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 548
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 550
    nop

    .line 559
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 560
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1516
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1517
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "force_imei_bool"

    .line 1518
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1520
    .local v1, "force_imei":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1523
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMeid()Ljava/lang/String;

    move-result-object v2

    .line 1524
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "^0*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1525
    :cond_1
    const-string v3, "getDeviceId(): MEID is not initialized use ESN"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEsn()Ljava/lang/String;

    move-result-object v2

    .line 1528
    :cond_2
    return-object v2

    .line 1521
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImei()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 1534
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1537
    :cond_0
    const-string v0, "getDeviceSvn(): return 0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1538
    const-string v0, "0"

    return-object v0

    .line 1535
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmfToneDelayKey()Ljava/lang/String;
    .locals 1

    .line 3700
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    const-string v0, "gsm_dtmf_tone_delay_int"

    goto :goto_0

    .line 3702
    :cond_0
    const-string v0, "cdma_dtmf_tone_delay_int"

    .line 3700
    :goto_0
    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const-string v0, "getEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 801
    :goto_0
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 746
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 750
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .line 1664
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1666
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1667
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    const-string v0, "GID1 is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1669
    return-object v1

    .line 1671
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    .line 1677
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1679
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1680
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    const-string v0, "GID2 is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1682
    return-object v1

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 4

    .line 3496
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    .line 3497
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 3498
    return-object v0

    .line 3500
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 3501
    .local v1, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3504
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v2

    .line 3502
    :cond_2
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object v2
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 2888
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .line 3487
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    .line 3488
    .local v0, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 4

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 736
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 740
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .line 3471
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 5

    .line 1549
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1550
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1551
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "config_enable_display_14digit_imei"

    .line 1552
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1553
    .local v1, "enable14DigitImei":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 1554
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_0

    .line 1555
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1557
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object v2
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .line 1748
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1750
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1752
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string v0, "getLine1AlphaTag: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1753
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 4

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1692
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1694
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 1695
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1696
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "use_usim_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1698
    .local v2, "use_usim":Z
    if-eqz v2, :cond_3

    .line 1699
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_2
    return-object v1

    .line 1701
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLteOnCdmaMode()I
    .locals 5

    .line 3712
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    .line 3713
    .local v0, "currentConfig":I
    move v1, v0

    .line 3715
    .local v1, "lteOnCdmaModeDynamicValue":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 3716
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 3717
    .local v2, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    .line 3719
    const/4 v1, 0x0

    .line 3722
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3723
    return v1

    .line 3726
    :cond_0
    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .line 1735
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1737
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1738
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_2
    return-object v1

    .line 1741
    :cond_3
    const-string v0, "getMsisdn: not expected on CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1742
    return-object v1
.end method

.method public getMute()Z
    .locals 1

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 4

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1593
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    const-string v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccRecords is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getNeighboringCids(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 2065
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2076
    :cond_0
    if-eqz p1, :cond_1

    .line 2077
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2079
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2080
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2083
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    :goto_0
    return-void
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 5

    .line 3577
    const/4 v0, 0x0

    .line 3578
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3579
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3580
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 3581
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3583
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    goto/16 :goto_3

    .line 3584
    :cond_1
    const/4 v1, 0x0

    .line 3585
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3586
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3587
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v2, :cond_5

    .line 3588
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3589
    .local v2, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_3

    .line 3590
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_3

    .line 3591
    const-string v3, "Legacy RUIM app present"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3592
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_0

    .line 3595
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 3597
    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-ne v1, v3, :cond_4

    .line 3598
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3600
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3601
    if-eqz v1, :cond_5

    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_5

    .line 3602
    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3603
    .local v3, "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3607
    .end local v2    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 3608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIccRecords = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    if-eqz v1, :cond_6

    .line 3611
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3608
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3614
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3618
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_3
    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 1974
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1976
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1979
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1980
    return-void

    .line 1982
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1983
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 1984
    :cond_2
    const-string v0, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1986
    :goto_0
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .line 478
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 479
    return v1

    .line 481
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .line 1707
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1709
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 1710
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1711
    const-string v0, "Plmn is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1712
    return-object v1

    .line 1714
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_3
    return-object v1
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 847
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    return-object v1

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v1
.end method

.method public getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v0, :cond_1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 428
    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0

    .line 438
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 468
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 469
    return-object v0

    .line 473
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .line 1602
    const/4 v0, 0x0

    .line 1603
    .local v0, "subscriberId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1609
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 1610
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 1806
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    const/4 v0, 0x0

    return-object v0

    .line 1809
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 2703
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2704
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .line 1497
    const-string v0, ""

    .line 1499
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1502
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    move-object v0, v2

    .line 1505
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1510
    :cond_2
    return-object v0

    .line 1506
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1507
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1506
    return-object v1
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 6

    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1434
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1435
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v0, v3

    .line 1436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1437
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1438
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vm_number_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    goto :goto_1

    .line 1441
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1442
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm_number_key_cdma"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1446
    nop

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1448
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1449
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_4

    .line 1450
    const-string v3, "default_vm_number_string"

    .line 1451
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1452
    .local v3, "defaultVmNumber":Ljava/lang/String;
    const-string v4, "default_vm_number_roaming_string"

    .line 1453
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, "defaultVmNumberRoaming":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1455
    move-object v0, v4

    goto :goto_2

    .line 1457
    :cond_3
    move-object v0, v3

    .line 1462
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "defaultVmNumber":Ljava/lang/String;
    .end local v4    # "defaultVmNumberRoaming":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1464
    nop

    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1466
    .restart local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1467
    .restart local v2    # "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_5

    const-string v3, "config_telephony_use_own_number_for_voicemail_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1469
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1470
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1475
    const-string v0, ""

    .line 1480
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    :cond_6
    :goto_3
    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3707
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 996
    const-string v0, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 997
    return v1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1001
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1002
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 1003
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1007
    return v1

    .line 1010
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    return v1

    .line 1014
    :cond_3
    const/4 v2, 0x0

    .line 1015
    .local v2, "result":Z
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1016
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1033
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1034
    goto :goto_0

    .line 1030
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1031
    goto :goto_0

    .line 1027
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1028
    goto :goto_0

    .line 1024
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1025
    goto :goto_0

    .line 1021
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1022
    goto :goto_0

    .line 1018
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1019
    nop

    .line 1039
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2351
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_19

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_6

    .line 2698
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_9

    .line 2386
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event EVENT_MODEM_RESET Received isInEcm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcbmHandler:Lcom/android/internal/telephony/EcbmHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcbmHandler:Lcom/android/internal/telephony/EcbmHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcbmHandler:Lcom/android/internal/telephony/EcbmHandler;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/EcbmHandler;->handleExitEmergencyCallbackMode(I)V

    goto/16 :goto_9

    .line 2511
    :pswitch_1
    const-string v0, "cdma_roaming_mode change is done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2512
    goto/16 :goto_9

    .line 2438
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 2445
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2446
    invoke-virtual {v0, v3}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    goto :goto_0

    .line 2448
    :cond_1
    const-string v2, "ImsManager/IccRecords Loaded are not available to update CarrierConfig."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2452
    :goto_0
    nop

    .line 2453
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 2454
    .local v2, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2455
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_2

    .line 2456
    const-string v4, "broadcast_emergency_call_state_changes_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2458
    .local v4, "broadcastEmergencyCallStateChanges":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcastEmergencyCallStateChanges = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setBroadcastEmergencyCallStateChanges(Z)V

    .line 2461
    .end local v4    # "broadcastEmergencyCallStateChanges":Z
    goto :goto_1

    .line 2462
    :cond_2
    const-string v4, "didn\'t get broadcastEmergencyCallStateChanges from carrier config"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2466
    :goto_1
    if-eqz v3, :cond_4

    .line 2467
    const-string v4, "cdma_roaming_mode_int"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2469
    .local v4, "config_cdma_roaming_mode":I
    nop

    .line 2470
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "roaming_settings"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2473
    .local v1, "current_cdma_roaming_mode":I
    const/16 v5, 0x2c

    packed-switch v4, :pswitch_data_7

    goto :goto_2

    .line 2480
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma_roaming_mode is going to changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2482
    nop

    .line 2483
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2482
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2484
    goto :goto_3

    .line 2489
    :pswitch_4
    if-eq v1, v4, :cond_3

    .line 2490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma_roaming_mode is going to changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2492
    nop

    .line 2493
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2492
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2497
    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cdma_roaming_mode settings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2500
    .end local v1    # "current_cdma_roaming_mode":I
    .end local v4    # "config_cdma_roaming_mode":I
    :goto_3
    goto :goto_4

    .line 2501
    :cond_4
    const-string v1, "didn\'t get the cdma_roaming_mode changes from the carrier config."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2505
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->prepareEri()V

    .line 2506
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 2508
    goto/16 :goto_9

    .line 2432
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v2    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "b":Landroid/os/PersistableBundle;
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 2433
    goto/16 :goto_9

    .line 2404
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2405
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 2406
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    goto/16 :goto_9

    .line 2408
    :cond_5
    const-string v2, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2409
    iput v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    .line 2411
    goto/16 :goto_9

    .line 2415
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_6

    .line 2416
    const-string v0, "EVENT_VOICE_RADIO_TECH_CHANGED"

    goto :goto_5

    :cond_6
    const-string v0, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    .line 2417
    .local v0, "what":Ljava/lang/String;
    :goto_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2418
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 2419
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    if-eqz v3, :cond_7

    .line 2420
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v2, v3, v2

    .line 2421
    .local v2, "newVoiceTech":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": newVoiceTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    .line 2423
    .end local v2    # "newVoiceTech":I
    goto/16 :goto_9

    .line 2424
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": has no tech!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2427
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2429
    goto/16 :goto_9

    .line 2674
    .end local v0    # "what":Ljava/lang/String;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2675
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "Event EVENT_SS received"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2680
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2681
    .local v1, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    .line 2682
    .end local v1    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    goto/16 :goto_9

    .line 2686
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2687
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .line 2688
    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 2689
    const-string v2, "GsmCdmaPhone"

    const-string v3, "get phone radio capability fail, no need to change mRadioCapability"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2692
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 2694
    :goto_6
    const-string v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_RADIO_CAPABILITY: phone rc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    goto/16 :goto_9

    .line 2657
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2658
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    .line 2659
    goto/16 :goto_9

    .line 2646
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2647
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2648
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2649
    const-string v1, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2652
    :cond_a
    const-string v1, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2654
    goto/16 :goto_9

    .line 2515
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    const-string v0, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 2517
    goto/16 :goto_9

    .line 2394
    :pswitch_d
    const-string v0, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateDataConnectionTracker()V

    .line 2396
    goto/16 :goto_9

    .line 2365
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2367
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 2368
    goto/16 :goto_9

    .line 2370
    :cond_b
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2371
    .local v4, "respId":[Ljava/lang/String;
    aget-object v2, v4, v2

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 2372
    aget-object v2, v4, v3

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    .line 2373
    const/4 v2, 0x2

    aget-object v2, v4, v2

    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    .line 2374
    const/4 v2, 0x3

    aget-object v3, v4, v2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->invalidMeid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2376
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    goto :goto_7

    .line 2380
    :cond_c
    aget-object v1, v4, v2

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 2383
    .end local v4    # "respId":[Ljava/lang/String;
    :goto_7
    goto/16 :goto_9

    .line 2618
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2619
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_d

    const-class v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2620
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_f

    const-class v2, Lcom/android/internal/telephony/uicc/IccException;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2621
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2622
    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2624
    :cond_f
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 2625
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1a

    .line 2626
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2627
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2520
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_10
    const-string v0, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2522
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting()V

    goto/16 :goto_9

    .line 2662
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2663
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    .line 2664
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    .line 2666
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 2667
    .restart local v1    # "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1a

    .line 2668
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2669
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2633
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2634
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_11

    .line 2635
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2637
    :cond_11
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 2638
    .restart local v1    # "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1a

    .line 2639
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2640
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2605
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2606
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2607
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    .line 2608
    .local v4, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_13

    if-eqz v1, :cond_13

    .line 2609
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_12

    move v2, v3

    nop

    :cond_12
    iget-object v5, v4, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2611
    :cond_13
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v2, :cond_1a

    .line 2612
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2613
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 2566
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2568
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_14

    .line 2569
    goto/16 :goto_9

    .line 2572
    :cond_14
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    .line 2573
    goto/16 :goto_9

    .line 2556
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2558
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 2559
    goto/16 :goto_9

    .line 2562
    :cond_15
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 2563
    goto/16 :goto_9

    .line 2590
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    const-string v0, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2591
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    .line 2592
    goto/16 :goto_9

    .line 2576
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2578
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 2580
    .local v1, "ussdResult":[Ljava/lang/String;
    array-length v4, v1

    if-le v4, v3, :cond_1a

    .line 2582
    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 2583
    :catch_0
    move-exception v2

    .line 2584
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "GsmCdmaPhone"

    const-string v4, "error parsing USSD"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ussdResult":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_8
    goto/16 :goto_9

    .line 2544
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2546
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_16

    .line 2547
    goto/16 :goto_9

    .line 2550
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Baseband version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2551
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 2553
    goto :goto_9

    .line 2399
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    const-string v0, "Event EVENT_RADIO_ON Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    .line 2401
    goto :goto_9

    .line 2527
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 2531
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 2533
    .local v3, "imsiFromSIM":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v0, :cond_18

    :cond_17
    if-eqz v3, :cond_18

    .line 2534
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2535
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2536
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVideoCallForwardingPreference(Z)V

    .line 2540
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2541
    goto :goto_9

    .line 2596
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v3    # "imsiFromSIM":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "Event EVENT_SSN Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2598
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2599
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 2600
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2601
    goto :goto_9

    .line 2360
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    .line 2362
    goto :goto_9

    .line 2354
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1a

    .line 2355
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateImsIcon()Z

    .line 2700
    :cond_1a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1b
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x23
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x27
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .line 1264
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .local v0, "mmi":Lcom/android/internal/telephony/MmiCode;
    goto :goto_0

    .line 1267
    .end local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 1270
    .restart local v0    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1274
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    goto :goto_1

    .line 1275
    :catch_0
    move-exception v1

    .line 1278
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 1281
    :cond_1
    const-string v1, "Mmi is null or unrecognized!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1282
    const/4 v1, 0x0

    return v1
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 6
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1304
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1305
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1308
    :cond_1
    :try_start_0
    const-string v3, "handleUssdRequest: attempting over IMS"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result v3
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 1310
    :catch_0
    move-exception v3

    .line 1311
    .local v3, "cse":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "cs_fallback"

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1312
    return v2

    .line 1316
    :cond_2
    const-string v4, "handleUssdRequest: fallback to CS required"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1322
    .end local v3    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1326
    nop

    .line 1327
    return v1

    .line 1323
    :catch_1
    move-exception v1

    .line 1324
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUssdRequest: exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1325
    return v2

    .line 1297
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 1299
    return v1
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2971
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDataEnabled()Z
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .line 2918
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 4

    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1044
    .local v0, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1045
    .local v1, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1047
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1048
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1049
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1047
    :goto_1
    return v3
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x0

    return v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNotificationOfWfcCallRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1191
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1196
    .local v1, "config":Landroid/os/PersistableBundle;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "notify_international_call_on_wfc_bool"

    .line 1197
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1200
    .local v4, "shouldNotifyInternationalCallOnWfc":Z
    :goto_0
    if-nez v4, :cond_1

    .line 1201
    return v3

    .line 1204
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1205
    .local v5, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 1206
    .local v6, "isEmergency":Z
    nop

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 1211
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1213
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v6, :cond_2

    .line 1216
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1217
    .local v2, "shouldConfirmCall":Z
    :goto_1
    return v2
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialStr"    # Ljava/lang/String;

    .line 3248
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3249
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3251
    :cond_0
    const/4 v0, 0x0

    .line 3252
    .local v0, "isOtaSpNum":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "dialableStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3254
    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v0

    .line 3255
    if-nez v0, :cond_1

    .line 3256
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v0

    .line 3259
    :cond_1
    const-string v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    return v0
.end method

.method public isPhoneTypeCdma()Z
    .locals 2

    .line 387
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhoneTypeCdmaLte()Z
    .locals 2

    .line 391
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhoneTypeGsm()Z
    .locals 2

    .line 383
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserDataEnabled()Z
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isUtEnabled()Z
    .locals 2

    .line 3669
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3670
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 3671
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    return v1

    .line 3673
    :cond_0
    const-string v1, "isUtEnabled: called for GsmCdma"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3674
    const/4 v1, 0x0

    return v1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .line 2961
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2962
    return v1

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 688
    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 620
    return-void
.end method

.method public notifyEmergencyCallRegistrants(Z)V
    .locals 2
    .param p1, "started"    # Z

    .line 3065
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3066
    return-void
.end method

.method public notifyLocationChanged()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 683
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 613
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 614
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 600
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .line 609
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    .line 610
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 678
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 679
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .line 623
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 624
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/MmiCode;)V
    .locals 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2197
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    const-string v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMMIDone: invalid response or already handled; ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2199
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    .line 2200
    .local v0, "receiverCallback":Landroid/os/ResultReceiver;
    if-eqz v0, :cond_3

    .line 2201
    const-string v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIDone: invoking callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_2

    .line 2203
    const/16 v1, 0x64

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 2204
    .local v1, "returnCode":I
    :goto_1
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 2206
    .end local v1    # "returnCode":I
    goto :goto_2

    .line 2207
    :cond_3
    const-string v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIDone: notifying registrants: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2210
    .end local v0    # "receiverCallback":Landroid/os/ResultReceiver;
    :goto_2
    nop

    .line 2213
    :goto_3
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 6

    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 2716
    return-void

    .line 2719
    :cond_0
    const/4 v0, 0x0

    .line 2722
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2723
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    .line 2724
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2725
    const/4 v1, 0x0

    .line 2727
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v0, :cond_2

    .line 2728
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2729
    const-string v3, "New ISIM application found"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2731
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2735
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_4

    .line 2736
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2738
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 2750
    :cond_5
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_1

    .line 2739
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v5, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2741
    const/4 v1, 0x0

    .line 2742
    .local v1, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v0, :cond_7

    .line 2743
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 2745
    :cond_7
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 2746
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v5, :cond_8

    .line 2747
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v5, p0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2749
    .end local v1    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_8
    nop

    .line 2754
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2755
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v0, :cond_9

    .line 2756
    const-string v1, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2761
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2762
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v1, v0, :cond_c

    .line 2763
    if-eqz v1, :cond_b

    .line 2764
    const-string v2, "Removing stale icc objects."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2765
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2766
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 2767
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2769
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2770
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2772
    :cond_b
    if-eqz v0, :cond_c

    .line 2774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Uicc application found. type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2776
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2777
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIccRecords = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2779
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    .line 2780
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2781
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateDataConnectionTracker()V

    .line 2784
    :cond_c
    return-void
.end method

.method protected phoneObjectUpdater(I)V
    .locals 5
    .param p1, "newVoiceRadioTech"    # I

    .line 3310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3313
    invoke-static {p1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_5

    .line 3315
    :cond_0
    nop

    .line 3316
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3317
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3318
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_4

    .line 3319
    const-string v2, "volte_replacement_rat_int"

    .line 3320
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3321
    .local v2, "volteReplacementRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3322
    if-eqz v2, :cond_2

    .line 3324
    invoke-static {v2}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3325
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCdmaSubscriptionAppPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3326
    :cond_1
    move p1, v2

    goto :goto_0

    .line 3329
    :cond_2
    if-nez p1, :cond_3

    .line 3330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getReplaceRadioTechIfNeed(I)I

    move-result p1

    .line 3333
    .end local v2    # "volteReplacementRat":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 3334
    :cond_4
    const-string v2, "phoneObjectUpdater: didn\'t get volteReplacementRat from carrier config"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3338
    .end local v0    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v1    # "b":Landroid/os/PersistableBundle;
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 3343
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 3344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActivePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3344
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3347
    return-void

    .line 3349
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActivePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3349
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3352
    const/4 p1, 0x6

    goto :goto_2

    .line 3358
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3359
    const-string v0, "Device is shutting down. No need to switch phone now."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3360
    return-void

    .line 3363
    :cond_8
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    .line 3364
    .local v0, "matchCdma":Z
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    .line 3365
    .local v1, "matchGsm":Z
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v4

    if-eq v4, v2, :cond_a

    :cond_9
    if-eqz v1, :cond_b

    .line 3366
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 3368
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mActivePhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3368
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3371
    return-void

    .line 3373
    :cond_b
    if-nez v0, :cond_c

    if-nez v1, :cond_c

    .line 3374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t match either CDMA or GSM - error! No phone change"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3376
    return-void

    .line 3380
    .end local v0    # "matchCdma":Z
    .end local v1    # "matchGsm":Z
    :cond_c
    :goto_2
    if-nez p1, :cond_d

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3383
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3385
    return-void

    .line 3388
    :cond_d
    const/4 v0, 0x0

    .line 3389
    .local v0, "oldPowerState":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 3390
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3391
    const/4 v0, 0x1

    .line 3392
    const-string v1, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3393
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3397
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    .line 3399
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 3400
    const-string v1, "phoneObjectUpdater: Resetting Radio"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3401
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3405
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 3406
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v1, :cond_10

    .line 3407
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 3411
    :cond_10
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3412
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "phoneName"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3413
    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3414
    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 3415
    return-void
.end method

.method public prepareEri()V
    .locals 2

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-nez v0, :cond_0

    .line 2905
    const-string v0, "GsmCdmaPhone"

    const-string v1, "PrepareEri: Trying to access stale objects"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    return-void

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 2909
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2911
    const-string v0, "ERI read, notify registrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2912
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2914
    :cond_1
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2159
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2138
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2139
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2893
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2894
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2895
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 706
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2149
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 695
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    .line 726
    return-void
.end method

.method public resetCarrierKeysForImsiEncryption()V
    .locals 3

    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CarrierInfoManager;->resetCarrierKeysForImsiEncryption(Landroid/content/Context;I)V

    .line 1644
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const-string v0, "[GsmCdmaPhone] sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1372
    :cond_0
    const/4 v0, 0x1

    .line 1373
    .local v0, "check":Z
    const/4 v1, 0x0

    .local v1, "itr":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1374
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1375
    const-string v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1375
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v0, 0x0

    .line 1378
    goto :goto_1

    .line 1373
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v1    # "itr":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1385
    .end local v0    # "check":Z
    :cond_3
    :goto_2
    return-void
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1344
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 1351
    :cond_1
    :goto_0
    return-void
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 4
    .param p1, "callActive"    # Z

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    const-string v0, "sendEmergencyCallbackModeChange - skip for non-cdma"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 657
    return-void

    .line 659
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    if-eqz v0, :cond_1

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneInEmergencyCall"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 663
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 664
    const-string v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEmergencyCallStateChange: callActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1334
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1336
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1337
    .end local v0    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    goto :goto_0

    .line 1338
    :cond_0
    const-string v0, "sendUssdResponse: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0
    .param p1, "broadcast"    # Z

    .line 670
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 671
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "serviceClass"    # I

    .line 1942
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1944
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1945
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/Phone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 1946
    return-void

    .line 1948
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1950
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 1951
    :cond_1
    const-string v0, "setCallBarringOption: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1953
    :goto_0
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "commandInterfaceServiceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 1889
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1919
    :cond_0
    const-string v0, "setCallForwardingOption: not possible in CDMA without IMS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1890
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1891
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    .line 1892
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1893
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1894
    :cond_2
    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 1897
    return-void

    .line 1900
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1901
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1904
    if-nez p2, :cond_4

    .line 1905
    new-instance v1, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    invoke-direct {v1, p3, p6}, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 1906
    .local v1, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    const/16 v2, 0xc

    .line 1907
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCfEnable(I)Z

    move-result v3

    const/4 v4, 0x0

    .line 1906
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1908
    .local v1, "resp":Landroid/os/Message;
    nop

    .line 1909
    move-object v8, v1

    goto :goto_1

    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    move-object v8, p6

    .line 1911
    .local v8, "resp":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v3, p1

    move v4, p2

    move v5, p4

    move-object v6, p3

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1918
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "resp":Landroid/os/Message;
    :cond_5
    nop

    .line 1921
    :goto_2
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .line 1875
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 1879
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUtEnabledOverCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2040
    :cond_0
    const-string v0, "method setCallWaiting is NOT supported in CDMA without IMS!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2030
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2031
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    .line 2032
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2033
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2034
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2035
    return-void

    .line 2038
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2039
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    nop

    .line 2042
    :goto_1
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 2
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 1624
    return-void
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "pnn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;

    move-object v0, p0

    .line 1649
    const/4 v1, 0x0

    .line 1650
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    iget-object v2, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_0

    .line 1652
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1653
    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_0

    .line 1655
    :cond_1
    const-string v2, "setCarrierTestOverride fails in CDMA only"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1657
    :goto_0
    if-eqz v1, :cond_2

    .line 1658
    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/uicc/IccRecords;->setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_2
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2952
    const-string v0, "[GsmCdmaPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2954
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataRoamingEnabledByUser(Z)V

    .line 2134
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .line 3482
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    .line 3483
    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 640
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1759
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1761
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1763
    const/4 v1, 0x1

    return v1

    .line 1765
    :cond_0
    return v1

    .line 1768
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string v0, "setLine1Number: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1769
    return v1
.end method

.method public setLinkCapacityReportingCriteria([I[II)V
    .locals 8
    .param p1, "dlThresholds"    # [I
    .param p2, "ulThresholds"    # [I
    .param p3, "ran"    # I

    .line 3465
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xbb8

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V

    .line 3467
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 2104
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .line 3547
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3548
    return v1

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3552
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 3553
    return v1

    .line 3556
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v1

    .line 3559
    .local v1, "status":Z
    if-eqz v1, :cond_3

    .line 3560
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3561
    .local v2, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_2

    .line 3562
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3563
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 3562
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3565
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v3, :cond_3

    .line 3566
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 3569
    .end local v2    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v1
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1990
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1992
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1995
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1996
    return-void

    .line 2001
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 2002
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2001
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2003
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 2004
    :cond_2
    const-string v0, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2006
    :goto_0
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 1411
    return-void
.end method

.method public setSignalStrengthReportingCriteria([II)V
    .locals 6
    .param p1, "thresholds"    # [I
    .param p2, "ran"    # I

    .line 3459
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xbb8

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V

    .line 3461
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2088
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2092
    :cond_0
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 2099
    :cond_0
    return-void
.end method

.method public setUserDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2179
    const-string v0, "CTA"

    const-string v1, "data@setUserDataEnabled@\u5f00\u542f\u79fb\u52a8\u901a\u4fe1\u7f51\u7edc\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setUserDataEnabled(Z)V

    .line 2182
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1776
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    .line 1777
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, v0, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1779
    .local v0, "resp":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1781
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v2, :cond_0

    .line 1782
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1785
    :cond_0
    if-eqz v1, :cond_1

    .line 1786
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1788
    :cond_1
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .line 3643
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3644
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3645
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 3646
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    goto :goto_0

    .line 3648
    :cond_0
    const-string v1, "SIM Records not found, MWI not updated"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3650
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    goto :goto_1

    .line 3651
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    .line 3653
    :goto_1
    return-void
.end method

.method protected shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1054
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "org.codeaurora.extra.CALL_DOMAIN"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public shouldForceAutoNetworkSelect()Z
    .locals 6

    .line 2980
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 2981
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    .line 2984
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2985
    return v3

    .line 2988
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldForceAutoNetworkSelect in mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2996
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 2999
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should force auto network select mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3000
    const/4 v2, 0x1

    return v2

    .line 3002
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should not force auto network select mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3012
    return v3
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1355
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    .line 1360
    :goto_0
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 1
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 2056
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1365
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->stopNetworkScan(Landroid/os/Message;)V

    .line 2061
    return-void
.end method

.method public supports3gppCallForwardingWhileRoaming()Z
    .locals 4

    .line 2216
    nop

    .line 2217
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2218
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2219
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2220
    const-string v3, "support_3gpp_call_forwarding_while_roaming_bool"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 2224
    :cond_0
    return v2
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 731
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2164
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 2144
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2899
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2900
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 711
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 2154
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 701
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .line 2807
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    .line 2808
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2810
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentDds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2813
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    .line 2815
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2816
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2817
    .local v4, "map":Landroid/content/ContentValues;
    const-string v5, "numeric"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2819
    const/4 v5, 0x1

    return v5

    .line 2820
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "map":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 2821
    .local v3, "e":Landroid/database/SQLException;
    const-string v4, "GsmCdmaPhone"

    const-string v5, "Can\'t store current operator"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2824
    .end local v3    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3477
    const/16 v0, 0x2a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3478
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate()V

    .line 2114
    return-void
.end method

.method public updateVoiceMail()V
    .locals 4

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "countVoiceMessages":I
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 500
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 504
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v0

    .line 507
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    .line 510
    .end local v0    # "countVoiceMessages":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    .line 513
    :goto_0
    return-void
.end method
