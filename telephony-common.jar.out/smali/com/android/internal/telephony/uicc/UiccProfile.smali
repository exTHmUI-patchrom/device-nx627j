.class public Lcom/android/internal/telephony/uicc/UiccProfile;
.super Lcom/android/internal/telephony/IccCard;
.source "UiccProfile.java"


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_APP_READY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0xe

.field private static final EVENT_CARRIER_PRIVILEGES_LOADED:I = 0xd

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x9

.field private static final EVENT_EID_READY:I = 0x6

.field private static final EVENT_ICC_LOCKED:I = 0x2

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x7

.field private static final EVENT_NETWORK_LOCKED:I = 0x5

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x8

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final EVENT_SIM_IO_DONE:I = 0xc

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0xb

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0xa

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccProfile"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final VDBG:Z = false


# instance fields
.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mDisposed:Z

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mGsmUmtsSubscriptionAppIndex:I

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsSubscriptionAppIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

.field private final mPhoneId:I

.field private final mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;-><init>()V

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 108
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 131
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 133
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 136
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 138
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccProfile$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$3;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 233
    const-string v3, "Creating profile"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 234
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    .line 235
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 236
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 239
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 240
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->resetProperties()V

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->onCarrierPrivilegesLoadedMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->handleCarrierNameOverride()V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccProfile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method private areReadyAppsRecordsLoaded()Z
    .locals 7

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1017
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isAppIgnored()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1018
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1019
    .local v5, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1021
    :cond_0
    return v2

    .line 1016
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    return v2
.end method

.method private checkAndUpdateIfAnyAppToBeIgnored()V
    .locals 8

    .line 997
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 998
    .local v0, "appReadyStateTracker":[Z
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 999
    .local v6, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1000
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v7

    aput-boolean v1, v0, v7

    .line 998
    .end local v6    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1005
    .local v5, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1008
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_2

    .line 1009
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setAppIgnoreState(Z)V

    .line 1004
    .end local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1013
    :cond_3
    return-void
.end method

.method private checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    if-gez p1, :cond_1

    .line 1039
    return v1

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    .line 1043
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eq v0, p3, :cond_2

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1046
    return v1

    .line 1050
    :cond_2
    return p1

    .line 1033
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1034
    return v1
.end method

.method private createAndUpdateCatServiceLocked()V
    .locals 3

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 955
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 957
    :goto_0
    return-void
.end method

.method private getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    .locals 2

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    monitor-exit v0

    return-object v1

    .line 1490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 631
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 642
    const-string v0, "UNKNOWN"

    return-object v0

    .line 641
    :pswitch_0
    const-string v0, "LOADED"

    return-object v0

    .line 640
    :pswitch_1
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 639
    :pswitch_2
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 638
    :pswitch_3
    const-string v0, "LOCKED"

    return-object v0

    .line 637
    :pswitch_4
    const-string v0, "NOT_READY"

    return-object v0

    .line 636
    :pswitch_5
    const-string v0, "READY"

    return-object v0

    .line 635
    :pswitch_6
    const-string v0, "LOCKED"

    return-object v0

    .line 634
    :pswitch_7
    const-string v0, "LOCKED"

    return-object v0

    .line 633
    :pswitch_8
    const-string v0, "LOCKED"

    return-object v0

    .line 632
    :pswitch_9
    const-string v0, "ABSENT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 651
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 658
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 657
    :pswitch_1
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 656
    :pswitch_2
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 655
    :pswitch_3
    const-string v0, "PERM_DISABLED"

    return-object v0

    .line 654
    :pswitch_4
    const-string v0, "NETWORK"

    return-object v0

    .line 653
    :pswitch_5
    const-string v0, "PUK"

    return-object v0

    .line 652
    :pswitch_6
    const-string v0, "PIN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUninstalledCarrierPackages()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_whitelist"

    .line 1157
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "whitelistSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1163
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1164
    .local v1, "certPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 1168
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1169
    .local v2, "uninstalledCarrierPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getAccessRules()Ljava/util/List;

    move-result-object v3

    .line 1170
    .local v3, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/UiccAccessRule;

    .line 1171
    .local v5, "accessRule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v5}, Landroid/telephony/UiccAccessRule;->getCertificateHexString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1172
    .local v6, "certHexString":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1173
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1174
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1176
    .end local v5    # "accessRule":Landroid/telephony/UiccAccessRule;
    .end local v6    # "certHexString":Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1177
    :cond_3
    return-object v2
.end method

.method private handleCarrierNameOverride()V
    .locals 8

    .line 328
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 329
    .local v0, "subCon":Lcom/android/internal/telephony/SubscriptionController;
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 330
    .local v1, "subId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subId not valid for Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 336
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 337
    .local v2, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_1

    .line 338
    const-string v3, "Failed to load a Carrier Config"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_1
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 343
    .local v3, "config":Landroid/os/PersistableBundle;
    const-string v4, "carrier_name_override_bool"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 345
    .local v4, "preferCcName":Z
    const-string v5, "carrier_name_string"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "ccName":Ljava/lang/String;
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 352
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_3

    .line 353
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 355
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v6, v7, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 356
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 359
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V

    .line 360
    return-void
.end method

.method static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1111
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    return v1

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1116
    const/4 v2, 0x0

    return v2
.end method

.method private isSupportedApplication(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 989
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_0

    .line 991
    const/4 v0, 0x0

    return v0

    .line 993
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1548
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1552
    const-string v0, "UiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return-void
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1556
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccProfile["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method private onCarrierPrivilegesLoadedMessage()V
    .locals 7

    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 1128
    .local v0, "usm":Landroid/app/usage/UsageStatsManager;
    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->onCarrierPrivilegedAppsChanged()V

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 1133
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 1135
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1136
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1137
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1138
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    .line 1137
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v2, v4

    .line 1142
    .local v2, "isProvisioned":Z
    if-eqz v2, :cond_2

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUninstalledCarrierPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1144
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->promptInstallCarrierApp(Ljava/lang/String;)V

    .line 1145
    .end local v4    # "pkgName":Ljava/lang/String;
    goto :goto_1

    .line 1147
    :cond_2
    const-string v4, "device_provisioned"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1148
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mProvisionCompleteContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1153
    .end local v2    # "isProvisioned":Z
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    monitor-exit v1

    .line 1154
    return-void

    .line 1153
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static parseToCertificateToPackageMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "whitelistSetting"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1187
    const-string v0, "\\s*;\\s*"

    .line 1188
    .local v0, "pairDelim":Ljava/lang/String;
    const-string v1, "\\s*:\\s*"

    .line 1190
    .local v1, "keyValueDelim":Ljava/lang/String;
    const-string v2, "\\s*;\\s*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1192
    .local v2, "keyValuePairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 1196
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1197
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1198
    .local v5, "keyValueString":Ljava/lang/String;
    const-string v6, "\\s*:\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1200
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1201
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1203
    :cond_1
    const-string v7, "Incorrect length of key-value pair in carrier app whitelist map.  Length should be exactly 2"

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 1206
    .end local v5    # "keyValueString":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1208
    :cond_2
    return-object v3
.end method

.method private promptInstallCarrierApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1122
    .local v0, "showDialogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1123
    return-void
.end method

.method private registerAllAppEvents()V
    .locals 8

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 531
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 534
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 535
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_1
    return-void
.end method

.method private registerCurrAppEvents()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkLockedRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 563
    :cond_0
    return-void
.end method

.method private sanitizeApplicationIndexesLocked()V
    .locals 3

    .line 970
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 971
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 973
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 974
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 976
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 977
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkIndexLocked(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 978
    return-void
.end method

.method private setCurrentAppType(Z)V
    .locals 5
    .param p1, "isGsm"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 309
    :try_start_0
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 312
    :cond_0
    const/4 v2, 0x0

    .line 313
    .local v2, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    move-object v2, v4

    .line 314
    if-eqz v2, :cond_1

    .line 315
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    goto :goto_0

    .line 317
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    .line 320
    .end local v2    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 615
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 7
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid; Return!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 576
    monitor-exit v0

    return-void

    .line 579
    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_1

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 581
    monitor-exit v0

    return-void

    .line 583
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_4

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_4

    .line 587
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 588
    .local v1, "currentPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "operator":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExternalState: operator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 591
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 592
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 593
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "countryCode":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 595
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 596
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    .line 595
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    const-string v4, "setExternalState: state LOADED; Country code is null"

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 600
    .end local v3    # "countryCode":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 601
    :cond_3
    const-string v3, "setExternalState: state LOADED; Operator name is null"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 605
    .end local v1    # "currentPhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "operator":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: set mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 609
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    .line 608
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterAllAppEvents()V
    .locals 6

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 546
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 547
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 548
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 549
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    .line 550
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 551
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 545
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method private unregisterCurrAppEvents()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkLockedRecordsLoaded(Landroid/os/Handler;)V

    .line 570
    :cond_0
    return-void
.end method

.method private updateCarrierNameForSubscription(Lcom/android/internal/telephony/SubscriptionController;I)V
    .locals 5
    .param p1, "subCon"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "subId"    # I

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 367
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "newCarrierName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayName(Ljava/lang/String;I)I

    .line 380
    :cond_1
    return-void

    .line 370
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    .end local v2    # "newCarrierName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private updateIccAvailability(Z)V
    .locals 4
    .param p1, "allAppsChanged"    # Z

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 387
    .local v2, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    move-object v1, v3

    .line 391
    :cond_0
    if-eqz p1, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerAllAppEvents()V

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v3, v2, :cond_3

    .line 397
    :cond_2
    const-string v3, "Icc changed. Reregistering."

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 399
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 400
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 401
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->registerCurrAppEvents()V

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    .line 404
    .end local v1    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 2

    .line 1411
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1412
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-eqz v0, :cond_1

    .line 1413
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1412
    :goto_1
    return v1
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 862
    :cond_0
    if-eqz p3, :cond_1

    .line 863
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 865
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 866
    monitor-exit v0

    return-void

    .line 868
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 848
    :cond_0
    if-eqz p3, :cond_1

    .line 849
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 851
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 852
    monitor-exit v0

    return-void

    .line 854
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 855
    return-void

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 5

    .line 261
    const-string v0, "Disposing profile"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterAllAppEvents()V

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->unregisterCurrAppEvents()V

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideAllNotifications(Landroid/content/Context;)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 280
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_2

    .line 281
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 279
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 285
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 286
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mDisposed:Z

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1572
    const-string v0, "UiccProfile:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCatService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1577
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1579
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mOperatorBrandOverrideRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    .line 1581
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1580
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1583
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUniversalPinState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mImsSubscriptionAppIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplications: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    move v1, v0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUiccApplications["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1592
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUiccApplications["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    .line 1593
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1592
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1596
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1598
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 1599
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_4

    .line 1600
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1598
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1605
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 1606
    .restart local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_6

    .line 1607
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 1608
    .local v5, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_6

    .line 1609
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1605
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1615
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_8

    .line 1616
    const-string v1, " mCarrierPrivilegeRules: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1618
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarrierPrivilegeRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1621
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarrierPrivilegeRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    move v1, v0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 1624
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1626
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    nop

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 1631
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1633
    .end local v0    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentAppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mExternalState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1639
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 961
    const-string v0, "UiccProfile finalized"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1244
    const/16 v1, 0x8

    .line 1245
    .local v1, "index":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1253
    :pswitch_0
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    move v1, v2

    goto :goto_0

    .line 1250
    :pswitch_1
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    move v1, v2

    .line 1251
    goto :goto_0

    .line 1247
    :pswitch_2
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    move v1, v2

    .line 1248
    goto :goto_0

    .line 1260
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1256
    .restart local v1    # "index":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 1259
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1260
    .end local v1    # "index":I
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # I

    .line 1286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1288
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    .line 1289
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1290
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 1287
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1293
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    .line 1275
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1274
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1275
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1480
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1481
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1482
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1481
    :goto_0
    return-object v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 1448
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1449
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1450
    const/4 v1, -0x1

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v1

    .line 1449
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1438
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1439
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1440
    const/4 v1, -0x1

    goto :goto_0

    .line 1441
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 1439
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 2
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1428
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1429
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1430
    const/4 v1, -0x1

    goto :goto_0

    .line 1431
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v1

    .line 1429
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1458
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1459
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1460
    const/4 v1, -0x1

    goto :goto_0

    .line 1461
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 1459
    :goto_0
    return v1
.end method

.method public getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "uid"    # I

    .line 1469
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1470
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-nez v0, :cond_0

    .line 1471
    const/4 v1, -0x1

    goto :goto_0

    .line 1472
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result v1

    .line 1470
    :goto_0
    return v1
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 6

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1536
    .local v3, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 1537
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 1538
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1539
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1535
    .end local v3    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1544
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object v1

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 626
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumApplications()I
    .locals 5

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1393
    .local v4, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_0

    .line 1394
    add-int/lit8 v0, v0, 0x1

    .line 1392
    .end local v4    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1397
    :cond_1
    return v0
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    .line 1521
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1523
    return-object v2

    .line 1525
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1526
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPhoneId()I
    .locals 1

    .line 1404
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 877
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v0

    return-object v1

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object v1

    .line 1233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 2

    .line 1420
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getCarrierPrivilegeRules()Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    move-result-object v0

    .line 1421
    .local v0, "carrierPrivilegeRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasIccCard()Z
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 886
    const/4 v0, 0x1

    return v0

    .line 888
    :cond_0
    const-string v0, "hasIccCard: UiccProfile is not null but UiccCard is null or card state is ABSENT"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccCloseLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1350
    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1349
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 1351
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    move-object v0, p0

    .line 1376
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1377
    const/16 v3, 0xc

    move-object/from16 v11, p7

    invoke-virtual {v2, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1376
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1378
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccOpenLogicalChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loglocal(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1341
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1340
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1342
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1368
    const/16 v2, 0xb

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1367
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1369
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    move-object v0, p0

    .line 1358
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    .line 1359
    const/16 v3, 0xa

    move-object/from16 v10, p8

    invoke-virtual {v2, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1358
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1360
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 4
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1219
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1220
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    return v1

    .line 1224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEsnChanged()Z
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 1645
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isEsnChanged()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 1644
    return v1

    .line 1646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refresh()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1565
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1566
    return-void
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1078
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1083
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit v0

    .line 1084
    return-void

    .line 1083
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 685
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 688
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    .line 689
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v3

    .line 688
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 691
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit v0

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForOpertorBrandOverride(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1063
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1064
    .end local v1    # "r":Landroid/os/Registrant;
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppWithAid(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "disposeCatService"    # Z

    .line 1308
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    const/4 v1, 0x0

    .line 1310
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 1311
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 1312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1314
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 1315
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v4, v3, v2

    .line 1316
    const/4 v1, 0x1

    .line 1310
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1319
    .end local v2    # "i":I
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1320
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v2, :cond_3

    .line 1321
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1322
    const/4 v1, 0x1

    .line 1324
    :cond_3
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v2, :cond_4

    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 1326
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 1327
    const/4 v1, 0x1

    .line 1330
    :cond_4
    monitor-exit v0

    return v1

    .line 1331
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetProperties()V
    .locals 3

    .line 408
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    const-string v0, "update icc_operator_numeric="

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 1385
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 834
    :cond_0
    if-eqz p3, :cond_1

    .line 835
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 836
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 837
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 838
    monitor-exit v0

    return-void

    .line 840
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 820
    :cond_0
    if-eqz p3, :cond_1

    .line 821
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 822
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 823
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 824
    monitor-exit v0

    return-void

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 4
    .param p1, "brand"    # Ljava/lang/String;

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOperatorBrandOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current iccId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    const/4 v1, 0x0

    return v1

    .line 1505
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 1506
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1507
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator_branding_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1508
    .local v2, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1509
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1511
    :cond_1
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1513
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1514
    const/4 v3, 0x1

    return v3
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 300
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setCurrentAppType(Z)V

    .line 301
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 779
    :cond_0
    if-eqz p2, :cond_1

    .line 780
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CommandsInterface is not set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 781
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 782
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 783
    monitor-exit v0

    return-void

    .line 785
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 708
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 709
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1

    .line 710
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 711
    .local v2, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_1

    .line 712
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 713
    monitor-exit v0

    return-void

    .line 716
    .end local v2    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    if-eqz p2, :cond_2

    .line 717
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ICC card is absent."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 718
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 719
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 720
    monitor-exit v0

    return-void

    .line 723
    .end local v1    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 724
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 726
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 727
    monitor-exit v0

    return-void

    .line 729
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 751
    :cond_0
    if-eqz p2, :cond_1

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 754
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 755
    monitor-exit v0

    return-void

    .line 757
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 737
    :cond_0
    if-eqz p3, :cond_1

    .line 738
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 740
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 741
    monitor-exit v0

    return-void

    .line 743
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 765
    :cond_0
    if-eqz p3, :cond_1

    .line 766
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ICC card is absent."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 768
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 769
    monitor-exit v0

    return-void

    .line 771
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOperatorBrandOverride(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mOperatorBrandOverrideRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1105
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 899
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mGsmUmtsSubscriptionAppIndex:I

    .line 900
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCdmaSubscriptionAppIndex:I

    .line 901
    iget v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mImsSubscriptionAppIndex:I

    .line 902
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    .line 903
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 909
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 910
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 912
    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 913
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v2, v1

    goto :goto_1

    .line 916
    :cond_0
    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 918
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 919
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v3, v2, v1

    goto :goto_1

    .line 922
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 909
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->createAndUpdateCatServiceLocked()V

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before privilege rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v1, :cond_4

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_4

    .line 931
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    .line 932
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_2

    .line 933
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v1, :cond_5

    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_5

    .line 935
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 938
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->sanitizeApplicationIndexesLocked()V

    .line 939
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateIccAvailability(Z)V

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateExternalState()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 423
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 424
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 428
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 429
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 433
    const-string v0, "EID is not ready yet."

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->log(Ljava/lang/String;)V

    .line 434
    return-void

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_3

    .line 440
    const-string v0, "updateExternalState: setting state to NOT_READY because mUiccApplication is null"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->loge(Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 443
    return-void

    .line 447
    :cond_3
    const/4 v0, 0x0

    .line 448
    .local v0, "cardLocked":Z
    const/4 v1, 0x0

    .line 449
    .local v1, "lockedState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    .line 451
    .local v2, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    .line 452
    .local v3, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v3, v4, :cond_4

    .line 454
    const/4 v0, 0x1

    .line 455
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 457
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_5

    .line 459
    const/4 v0, 0x1

    .line 460
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 461
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_6

    .line 463
    const/4 v0, 0x1

    .line 464
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 465
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_7

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 468
    const/4 v0, 0x1

    .line 469
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 475
    :cond_7
    :goto_0
    if-eqz v0, :cond_a

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getLockedRecordsLoaded()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 477
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getNetworkLockedRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 482
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 488
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 490
    :goto_1
    return-void

    .line 494
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccProfile$4;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 512
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->checkAndUpdateIfAnyAppToBeIgnored()V

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areReadyAppsRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->areCarrierPriviligeRulesLoaded()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2

    .line 522
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2

    .line 509
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 510
    nop

    .line 526
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
