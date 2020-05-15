.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_INVALID:I = -0x1

.field private static final EVENT_REFRESH_EMBEDDED_SUBSCRIPTIONS:I = 0xc

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_IMSI:I = 0xb

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_NOT_READY:I = 0x9

.field private static final EVENT_SIM_READY:I = 0xa

.field private static final EVENT_SIM_RESTRICTED:I = 0x8

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mContext:Landroid/content/Context;

.field protected static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static sSimApplicationState:[I

.field private static sSimCardState:[I


# instance fields
.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentlyActiveUserId:I

.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mIsRecordLoaded:[Z

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 111
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 112
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 113
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimCardState:[I

    .line 114
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 126
    const-string v0, "package"

    .line 127
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 126
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;Landroid/content/pm/IPackageManager;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "packageMgr"    # Landroid/content/pm/IPackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 134
    const-string v0, "Constructor invoked"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 136
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 137
    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 140
    iput-object p5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    .line 145
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    aput-boolean v0, v2, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 65
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private broadcastSimApplicationStateChanged(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "state"    # I

    .line 869
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    aget v0, v0, p1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimApplicationState:[I

    aput p2, v0, p1

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 875
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 876
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_APPLICATION_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 880
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 882
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private broadcastSimCardStateChanged(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "state"    # I

    .line 852
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimCardState:[I

    aget v0, v0, p1

    if-eq p2, v0, :cond_0

    .line 853
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sSimCardState:[I

    aput p2, v0, p1

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 857
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_CARD_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 861
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 863
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for mCardIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance()Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 849
    return-void
.end method

.method private static findSubscriptionInfoForIccid(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 810
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 811
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    return v0

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getSimStateFromLockedReason(Ljava/lang/String;)I
    .locals 5
    .param p0, "lockedReason"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x675319f2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v1, :cond_3

    const v1, 0x13575

    if-eq v0, v1, :cond_2

    const v1, 0x136e6

    if-eq v0, v1, :cond_1

    const v1, 0xb5d3eeb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PERM_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "PUK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 358
    const-string v0, "SubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SIM locked reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v3

    .line 356
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 354
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 352
    :pswitch_2
    return v4

    .line 350
    :pswitch_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeCarrierApps()V
    .locals 5

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 157
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-string v2, "SubscriptionInfoUpdater"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 178
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    .line 181
    return-void
.end method

.method private internalIccStateToMessage(Ljava/lang/String;)I
    .locals 8
    .param p1, "simStatus"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ABSENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "CARD_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v0, "NOT_READY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "READY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_6
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "LOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_8
    const-string v0, "LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring simStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 205
    return v7

    .line 202
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 201
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 200
    :pswitch_2
    return v6

    .line 199
    :pswitch_3
    return v2

    .line 198
    :pswitch_4
    const/16 v0, 0x9

    return v0

    .line 197
    :pswitch_5
    return v3

    .line 196
    :pswitch_6
    return v1

    .line 195
    :pswitch_7
    return v4

    .line 194
    :pswitch_8
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_8
        -0x79d6d8f6 -> :sswitch_7
        -0x6d207e22 -> :sswitch_6
        0x225a7a -> :sswitch_5
        0x4a3e183 -> :sswitch_4
        0x19d1382a -> :sswitch_3
        0x3da260f7 -> :sswitch_2
        0x5f5a4cea -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isNewSim(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "decIccId"    # Ljava/lang/String;
    .param p3, "oldIccId"    # [Ljava/lang/String;

    .line 819
    const/4 v0, 0x1

    .line 820
    .local v0, "newSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_2

    .line 821
    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 823
    goto :goto_1

    .line 824
    :cond_0
    if-eqz p2, :cond_1

    aget-object v2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    const/4 v0, 0x0

    .line 826
    goto :goto_1

    .line 820
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "i":I
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 831
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 916
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method private static simStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 885
    packed-switch p0, :pswitch_data_0

    .line 911
    const-string v0, "INVALID"

    return-object v0

    .line 909
    :pswitch_0
    const-string v0, "PRESENT"

    return-object v0

    .line 907
    :pswitch_1
    const-string v0, "LOADED"

    return-object v0

    .line 905
    :pswitch_2
    const-string v0, "CARD_RESTRICTED"

    return-object v0

    .line 903
    :pswitch_3
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 901
    :pswitch_4
    const-string v0, "PERM_DISABLED"

    return-object v0

    .line 899
    :pswitch_5
    const-string v0, "NOT_READY"

    return-object v0

    .line 897
    :pswitch_6
    const-string v0, "READY"

    return-object v0

    .line 895
    :pswitch_7
    const-string v0, "NETWORK_LOCKED"

    return-object v0

    .line 893
    :pswitch_8
    const-string v0, "PUK_REQUIRED"

    return-object v0

    .line 891
    :pswitch_9
    const-string v0, "PIN_REQUIRED"

    return-object v0

    .line 889
    :pswitch_a
    const-string v0, "ABSENT"

    return-object v0

    .line 887
    :pswitch_b
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .line 490
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 492
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    .line 494
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 920
    const-string v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "IMSI"

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    goto/16 :goto_0

    .line 271
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "READY"

    invoke-direct {p0, v0, v2, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 273
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 274
    goto/16 :goto_0

    .line 281
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "NOT_READY"

    invoke-direct {p0, v0, v2, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 284
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 293
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 296
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 262
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "CARD_RESTRICTED"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 263
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "CARD_RESTRICTED"

    const-string v2, "CARD_RESTRICTED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 267
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 268
    goto :goto_0

    .line 251
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 252
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 254
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 255
    goto :goto_0

    .line 258
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimError(I)V

    .line 259
    goto :goto_0

    .line 247
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    .line 248
    goto :goto_0

    .line 243
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    .line 244
    goto :goto_0

    .line 239
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    .line 240
    goto :goto_0

    .line 225
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 227
    .local v1, "slotId":Ljava/lang/Integer;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 229
    .local v3, "modes":[I
    aget v2, v3, v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 230
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 232
    .end local v3    # "modes":[I
    :cond_1
    goto :goto_0

    .line 233
    :cond_2
    const-string v2, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 235
    nop

    .line 304
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "slotId":Ljava/lang/Integer;
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 497
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hot plug out or error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 500
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 504
    :cond_1
    const-string v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 505
    const-string v0, "ABSENT"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 507
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 508
    return-void
.end method

.method protected handleSimError(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 511
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 514
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 518
    :cond_1
    const-string v0, "CARD_IO_ERROR"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 519
    const-string v0, "CARD_IO_ERROR"

    const-string v1, "CARD_IO_ERROR"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 522
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 523
    return-void
.end method

.method protected handleSimLoaded(I)V
    .locals 23
    .param p1, "slotId"    # I

    move-object/from16 v0, p0

    .line 364
    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimLoaded: slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 369
    move v2, v1

    .line 370
    .local v2, "loadedSlotId":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 371
    .local v3, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v3, :cond_0

    .line 372
    const-string v4, "handleSimLoaded: IccCard null"

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 376
    .local v4, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v4, :cond_1

    .line 377
    const-string v5, "handleSimLoaded: IccRecords null"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 378
    return-void

    .line 380
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 381
    const-string v5, "handleSimLoaded: IccID null"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 382
    return-void

    .line 384
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 385
    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v1

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 389
    iget-object v5, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 390
    .local v5, "subIds":[I
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v1

    move v1, v8

    .end local p1    # "slotId":I
    .local v9, "slotId":I
    :goto_0
    if-ge v1, v7, :cond_9

    aget v10, v5, v1

    .line 391
    .local v10, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v9

    .line 392
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "operator":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v12

    if-ne v10, v12, :cond_3

    .line 396
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v12, v11, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 398
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    goto :goto_1

    .line 400
    :cond_4
    const-string v12, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 403
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 404
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 412
    .local v13, "contentResolver":Landroid/content/ContentResolver;
    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v14, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v14

    .line 414
    .local v14, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v15

    .line 416
    .local v15, "simCarrierName":Ljava/lang/String;
    const/4 v8, 0x2

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 418
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 419
    move-object v6, v15

    .local v6, "nameToSet":Ljava/lang/String;
    goto :goto_2

    .line 421
    .end local v6    # "nameToSet":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CARD "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 423
    .restart local v6    # "nameToSet":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    const-string v2, "sim name = "

    .end local v2    # "loadedSlotId":I
    .local v16, "loadedSlotId":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v6, v10}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayName(Ljava/lang/String;I)I

    .end local v6    # "nameToSet":Ljava/lang/String;
    goto :goto_3

    .line 429
    .end local v16    # "loadedSlotId":I
    .restart local v2    # "loadedSlotId":I
    :cond_6
    move/from16 v16, v2

    .end local v2    # "loadedSlotId":I
    .restart local v16    # "loadedSlotId":I
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 430
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 431
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curr_subid"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 433
    .local v6, "storedSubId":I
    if-eq v6, v10, :cond_7

    .line 434
    sget-object v17, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v17, v9

    .line 435
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .local v18, "iccCard":Lcom/android/internal/telephony/IccCard;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "preferred_network_mode"

    .end local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v19, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    const/4 v4, -0x1

    invoke-static {v8, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 439
    .local v3, "networkType":I
    nop

    .line 462
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v9

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 463
    move/from16 v20, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 462
    .end local v3    # "networkType":I
    .local v20, "networkType":I
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 467
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 468
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curr_subid"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "networkType":I
    goto :goto_4

    .line 473
    .end local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v19    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v3, "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v19    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_4
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 474
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    move-object/from16 v21, v2

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 475
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .local v21, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v22, v5

    iget v5, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 473
    .end local v5    # "subIds":[I
    .local v22, "subIds":[I
    invoke-static {v3, v4, v8, v2, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    .line 477
    iget-object v2, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    aget-boolean v2, v2, v9

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 478
    const-string v2, "LOADED"

    const/4 v4, 0x0

    invoke-direct {v0, v9, v2, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v2, 0xb

    invoke-direct {v0, v9, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 481
    const/16 v2, 0xa

    invoke-direct {v0, v9, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 482
    const-string v2, "LOADED"

    invoke-direct {v0, v9, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 483
    iget-object v2, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsRecordLoaded:[Z

    const/4 v4, 0x0

    aput-boolean v4, v2, v9

    .end local v6    # "storedSubId":I
    .end local v10    # "subId":I
    .end local v11    # "operator":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .end local v13    # "contentResolver":Landroid/content/ContentResolver;
    .end local v14    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v15    # "simCarrierName":Ljava/lang/String;
    .end local v21    # "sp":Landroid/content/SharedPreferences;
    goto :goto_5

    .line 390
    :cond_8
    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v6, v3

    move v8, v4

    move/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v22

    goto/16 :goto_0

    .line 487
    .end local v16    # "loadedSlotId":I
    .end local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v19    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v22    # "subIds":[I
    .local v2, "loadedSlotId":I
    .restart local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move v1, v9

    goto :goto_6

    .end local v9    # "slotId":I
    .restart local p1    # "slotId":I
    :cond_a
    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v2    # "loadedSlotId":I
    .end local v3    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v4    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local p1    # "slotId":I
    .local v1, "slotId":I
    .restart local v16    # "loadedSlotId":I
    .restart local v18    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v19    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_6
    return-void
.end method

.method protected handleSimLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hot plug in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 316
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 317
    .local v0, "iccId":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 318
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 319
    .local v1, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_1

    .line 320
    const-string v2, "handleSimLocked: IccCard null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 321
    return-void

    .line 323
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 324
    .local v2, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v2, :cond_2

    .line 325
    const-string v3, "handleSimLocked: IccRecords null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 326
    return-void

    .line 328
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 329
    const-string v3, "handleSimLocked: IccID null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 330
    return-void

    .line 332
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 333
    .end local v1    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v2    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_0

    .line 334
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 341
    :cond_5
    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 342
    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 343
    const/16 v1, 0xb

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimCardStateChanged(II)V

    .line 344
    invoke-static {p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimApplicationStateChanged(II)V

    .line 345
    return-void
.end method

.method protected isAllIccIdQueryDone()Z
    .locals 4

    .line 210
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_1

    .line 211
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " IccId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 213
    return v0

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_1
    const-string v0, "All IccIds query complete"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 307
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method

.method public updateEmbeddedSubscriptions()Z
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 707
    return v2

    .line 711
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccProfileInfoList()Landroid/service/euicc/GetEuiccProfileInfoListResult;

    move-result-object v1

    .line 712
    .local v1, "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    if-nez v1, :cond_1

    .line 714
    return v2

    .line 718
    :cond_1
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v3

    if-nez v3, :cond_4

    .line 719
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 720
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 723
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/euicc/EuiccProfileInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/euicc/EuiccProfileInfo;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    goto :goto_1

    .line 721
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    :cond_3
    :goto_0
    new-array v4, v2, [Landroid/service/euicc/EuiccProfileInfo;

    .line 723
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/euicc/EuiccProfileInfo;>;"
    .local v4, "embeddedProfiles":[Landroid/service/euicc/EuiccProfileInfo;
    :goto_1
    move-object v3, v4

    .line 725
    .end local v4    # "embeddedProfiles":[Landroid/service/euicc/EuiccProfileInfo;
    .local v3, "embeddedProfiles":[Landroid/service/euicc/EuiccProfileInfo;
    goto :goto_2

    .line 726
    .end local v3    # "embeddedProfiles":[Landroid/service/euicc/EuiccProfileInfo;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatedEmbeddedSubscriptions: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getResult()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listing profiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 730
    new-array v3, v2, [Landroid/service/euicc/EuiccProfileInfo;

    .line 732
    .restart local v3    # "embeddedProfiles":[Landroid/service/euicc/EuiccProfileInfo;
    :goto_2
    invoke-virtual {v1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;->getIsRemovable()Z

    move-result v4

    .line 734
    .local v4, "isRemovable":Z
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 735
    .local v5, "embeddedIccids":[Ljava/lang/String;
    move v6, v2

    .local v6, "i":I
    :goto_3
    array-length v7, v3

    if-ge v6, v7, :cond_5

    .line 736
    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 735
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 744
    .end local v6    # "i":I
    :cond_5
    const/4 v6, 0x0

    .line 749
    .local v6, "hasChanges":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    .line 750
    invoke-virtual {v7, v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionInfoListForEmbeddedSubscriptionUpdate([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 751
    .local v7, "existingSubscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 752
    .local v8, "contentResolver":Landroid/content/ContentResolver;
    array-length v9, v3

    move v10, v6

    move v6, v2

    .end local v6    # "hasChanges":Z
    .local v10, "hasChanges":Z
    :goto_4
    if-ge v6, v9, :cond_a

    aget-object v12, v3, v6

    .line 753
    .local v12, "embeddedProfile":Landroid/service/euicc/EuiccProfileInfo;
    nop

    .line 754
    invoke-virtual {v12}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->findSubscriptionInfoForIccid(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    .line 755
    .local v13, "index":I
    if-gez v13, :cond_6

    .line 757
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    .line 758
    invoke-virtual {v12}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v15

    const/4 v2, -0x1

    .line 757
    invoke-virtual {v14, v15, v2}, Lcom/android/internal/telephony/SubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_5

    .line 760
    :cond_6
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 762
    :goto_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v2, "values":Landroid/content/ContentValues;
    const-string v14, "is_embedded"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    invoke-virtual {v12}, Landroid/service/euicc/EuiccProfileInfo;->getUiccAccessRules()Ljava/util/List;

    move-result-object v14

    .line 765
    .local v14, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    const/4 v15, 0x0

    .line 766
    .local v15, "isRuleListEmpty":Z
    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_8

    .line 767
    :cond_7
    const/4 v15, 0x1

    .line 769
    :cond_8
    const-string v11, "access_rules"

    .line 770
    if-eqz v15, :cond_9

    .line 769
    const/4 v0, 0x0

    goto :goto_6

    .line 771
    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    .line 770
    invoke-static {v0}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object v0

    .line 769
    :goto_6
    invoke-virtual {v2, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 772
    const-string v0, "is_removable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 773
    const-string v0, "display_name"

    invoke-virtual {v12}, Landroid/service/euicc/EuiccProfileInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "name_source"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const/4 v10, 0x1

    .line 776
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "icc_id=\""

    .end local v1    # "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .local v17, "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v12}, Landroid/service/euicc/EuiccProfileInfo;->getIccid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v2, v1, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 752
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v12    # "embeddedProfile":Landroid/service/euicc/EuiccProfileInfo;
    .end local v13    # "index":I
    .end local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    .end local v15    # "isRuleListEmpty":Z
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_4

    .line 787
    .end local v17    # "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .restart local v1    # "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    :cond_a
    move-object/from16 v17, v1

    .end local v1    # "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .restart local v17    # "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v0, "iccidsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 790
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 791
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 792
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 795
    .end local v1    # "i":I
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icc_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 796
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "whereClause":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v2, "values":Landroid/content/ContentValues;
    const-string v6, "is_embedded"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const/4 v10, 0x1

    .line 800
    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v2, v1, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 806
    .end local v0    # "iccidsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "whereClause":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_d
    return v10
.end method

.method public updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "simStatus"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInternalIccState to simStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->internalIccStateToMessage(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "message":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :cond_0
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 15

    monitor-enter p0

    .line 530
    :try_start_0
    const-string v0, "updateSubscriptionInfoByIccId:+ Start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_0

    .line 533
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v0, v2, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v1    # "i":I
    :cond_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 537
    .local v1, "insertedSimCount":I
    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "insertedSimCount":I
    :goto_1
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v4, -0x63

    if-ge v1, v3, :cond_2

    .line 538
    const-string v3, ""

    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    add-int/lit8 v2, v2, -0x1

    .line 540
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v4, v3, v1

    .line 537
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 543
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertedSimCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList()[I

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfo()I

    .line 552
    :cond_3
    const/4 v1, 0x0

    .line 553
    .local v1, "index":I
    move v3, v1

    move v1, v0

    .local v1, "i":I
    .local v3, "index":I
    :goto_2
    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v6, 0x1

    if-ge v1, v5, :cond_7

    .line 554
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v5, v5, v1

    if-ne v5, v4, :cond_4

    .line 555
    goto :goto_4

    .line 557
    :cond_4
    const/4 v3, 0x2

    .line 558
    add-int/lit8 v5, v1, 0x1

    .local v5, "j":I
    :goto_3
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v5, v7, :cond_6

    .line 559
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v7, v7, v5

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v7, v7, v1

    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 560
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v6, v7, v1

    .line 561
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v3, v7, v5

    .line 562
    add-int/lit8 v3, v3, 0x1

    .line 558
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 553
    .end local v5    # "j":I
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 567
    .end local v1    # "i":I
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 568
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v5, v5, [Ljava/lang/String;

    .line 569
    .local v5, "oldIccId":[Ljava/lang/String;
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v7, v7, [Ljava/lang/String;

    .line 570
    .local v7, "decIccId":[Ljava/lang/String;
    move v8, v0

    .local v8, "i":I
    :goto_5
    sget v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v10, -0x1

    if-ge v8, v9, :cond_d

    .line 571
    const/4 v9, 0x0

    aput-object v9, v5, v8

    .line 572
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    .line 573
    invoke-virtual {v11, v8, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;

    move-result-object v11

    .line 574
    .local v11, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    .line 575
    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_a

    .line 576
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v8

    .line 577
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 577
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 579
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v12, v12, v8

    if-nez v12, :cond_9

    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v12, v12, v8

    aget-object v13, v5, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    aget-object v12, v7, v8

    if-eqz v12, :cond_8

    aget-object v12, v7, v8

    aget-object v13, v5, v8

    .line 580
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 581
    :cond_8
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v10, v12, v8

    .line 583
    :cond_9
    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v12, v12, v8

    if-eqz v12, :cond_c

    .line 584
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 585
    .local v12, "value":Landroid/content/ContentValues;
    const-string v13, "sim_id"

    .line 586
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 585
    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    sget-object v10, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 587
    invoke-virtual {v1, v10, v12, v13, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 592
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 593
    .end local v12    # "value":Landroid/content/ContentValues;
    goto :goto_6

    .line 595
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v9, v9, v8

    if-nez v9, :cond_b

    .line 597
    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v10, v9, v8

    .line 599
    :cond_b
    const-string v9, ""

    aput-object v9, v5, v8

    .line 600
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " last time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 570
    .end local v11    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 604
    .end local v8    # "i":I
    :cond_d
    move v6, v0

    .local v6, "i":I
    :goto_7
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v6, v8, :cond_e

    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubscriptionInfoByIccId: oldIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", sIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 604
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 610
    .end local v6    # "i":I
    :cond_e
    const/4 v6, 0x0

    .line 611
    .local v6, "nNewCardCount":I
    const/4 v8, 0x0

    .line 612
    .local v8, "nNewSimStatus":I
    move v9, v8

    move v8, v6

    move v6, v0

    .local v6, "i":I
    .local v8, "nNewCardCount":I
    .local v9, "nNewSimStatus":I
    :goto_8
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v6, v11, :cond_12

    .line 613
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v11, v11, v6

    if-ne v11, v4, :cond_f

    .line 614
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " this time"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 616
    :cond_f
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v11, v11, v6

    if-lez v11, :cond_10

    .line 619
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v13, v13, v6

    .line 620
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 619
    invoke-virtual {v11, v12, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 621
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SUB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has invalid IccId"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 623
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSubscriptionInfoByIccId: adding subscription info record: iccid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "slot: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 625
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 627
    :goto_9
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v6

    aget-object v12, v7, v6

    invoke-direct {p0, v11, v12, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 628
    add-int/lit8 v8, v8, 0x1

    .line 629
    packed-switch v6, :pswitch_data_0

    goto :goto_a

    .line 637
    :pswitch_0
    or-int/lit8 v9, v9, 0x4

    goto :goto_a

    .line 634
    :pswitch_1
    or-int/lit8 v9, v9, 0x2

    .line 635
    goto :goto_a

    .line 631
    :pswitch_2
    or-int/lit8 v9, v9, 0x1

    .line 632
    nop

    .line 644
    :goto_a
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v12, -0x2

    aput v12, v11, v6

    .line 612
    :cond_11
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 649
    .end local v6    # "i":I
    :cond_12
    move v4, v0

    .local v4, "i":I
    :goto_c
    sget v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v4, v6, :cond_14

    .line 650
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v6, v6, v4

    if-ne v6, v10, :cond_13

    .line 651
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v11, -0x3

    aput v11, v6, v4

    .line 653
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSubscriptionInfoByIccId: sInsertSimState["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v11, v11, v4

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 657
    .end local v4    # "i":I
    :cond_14
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 658
    .local v4, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v4, :cond_15

    goto :goto_d

    :cond_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 659
    .local v0, "nSubCount":I
    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateEmbeddedSubscriptions()Z

    .line 691
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 692
    const-string v6, "updateSubscriptionInfoByIccId:- SubscriptionInfo update complete"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    .line 529
    .end local v0    # "nSubCount":I
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "insertedSimCount":I
    .end local v3    # "index":I
    .end local v4    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v5    # "oldIccId":[Ljava/lang/String;
    .end local v7    # "decIccId":[Ljava/lang/String;
    .end local v8    # "nNewCardCount":I
    .end local v9    # "nNewSimStatus":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
