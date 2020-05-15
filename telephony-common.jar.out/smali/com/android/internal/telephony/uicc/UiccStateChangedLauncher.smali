.class public Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;
.super Landroid/os/Handler;
.source "UiccStateChangedLauncher.java"


# static fields
.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sDeviceProvisioningPackage:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRestricted:[Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/telephony/uicc/UiccController;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 55
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method private notifyStateChanged()V
    .locals 4

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->sDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "shouldNotify":Z
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_0
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "shouldNotify":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 71
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 72
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    aget-boolean v6, v6, v0

    if-eq v5, v6, :cond_3

    .line 75
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->mIsRestricted:[Z

    aget-boolean v6, v6, v0

    xor-int/2addr v6, v1

    aput-boolean v6, v5, v0

    .line 76
    const/4 v3, 0x1

    .line 68
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;->notifyStateChanged()V

    .line 86
    .end local v3    # "shouldNotify":Z
    :cond_5
    return-void

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected event not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
