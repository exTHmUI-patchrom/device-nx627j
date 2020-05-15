.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

.field public static final CARD_ID:Ljava/lang/String; = "card_id"

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_PROVISIONED:I = 0x0

.field public static final SIM_PROVISIONING_STATUS:Ljava/lang/String; = "sim_provisioning_status"

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z = false

.field public static final VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mNetworkPolicy:Landroid/net/INetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 589
    return-void
.end method

.method private createRefreshSubscriptionIntent(I)Landroid/content/Intent;
    .locals 6
    .param p1, "subId"    # I

    .line 1914
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "owner":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1918
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v2

    .line 1919
    .local v2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 1921
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1923
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1927
    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1928
    return-object v1

    .line 1931
    :cond_2
    return-object v3
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    const-string/jumbo v0, "telephony_subscription_service"

    .line 598
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 597
    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 1668
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1671
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1672
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1676
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    return p2
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 3

    .line 1395
    const/4 v0, -0x1

    .line 1402
    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISub()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1404
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1405
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1409
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1407
    :catch_0
    move-exception v1

    .line 1412
    :goto_0
    return v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 3

    .line 1342
    const/4 v0, -0x1

    .line 1345
    .local v0, "subId":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1346
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1347
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1351
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1349
    :catch_0
    move-exception v1

    .line 1354
    :goto_0
    return v0
.end method

.method public static getDefaultSubscriptionId()I
    .locals 3

    .line 1261
    const/4 v0, -0x1

    .line 1268
    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISub()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1270
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1271
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1275
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1278
    :goto_0
    return v0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    .line 1331
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 3

    .line 1289
    const/4 v0, -0x1

    .line 1292
    .local v0, "subId":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1293
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1294
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1298
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1296
    :catch_0
    move-exception v1

    .line 1301
    :goto_0
    return v0
.end method

.method private static getISub()Lcom/android/internal/telephony/ISub;
    .locals 1

    .line 2013
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 1689
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1692
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1693
    :catch_0
    move-exception v1

    .line 1694
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1697
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return p2
.end method

.method private final getNetworkPolicy()Landroid/net/INetworkPolicyManager;
    .locals 1

    .line 602
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_0

    .line 603
    const-string/jumbo v0, "netpolicy"

    .line 604
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method public static getPhoneId(I)I
    .locals 3
    .param p0, "subId"    # I

    .line 1219
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1223
    return v1

    .line 1226
    :cond_0
    move v0, v1

    .line 1233
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISub()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1235
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1236
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1240
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1238
    :catch_0
    move-exception v1

    .line 1243
    :goto_0
    return v0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 1708
    nop

    .line 1709
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1711
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1712
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1713
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1714
    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 1716
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1717
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_0

    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1719
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1720
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1721
    .local v4, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1722
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIndex(I)I
    .locals 3
    .param p0, "slotIndex"    # I

    .line 1605
    const/4 v0, 0x0

    .line 1608
    .local v0, "simState":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1609
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1610
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIndex(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1613
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1612
    :catch_0
    move-exception v1

    .line 1615
    :goto_0
    return v0
.end method

.method public static getSlotIndex(I)I
    .locals 3
    .param p0, "subId"    # I

    .line 1175
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 1181
    const/4 v0, -0x1

    .line 1184
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1185
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1186
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSlotIndex(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1190
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1188
    :catch_0
    move-exception v1

    .line 1192
    :goto_0
    return v0
.end method

.method public static getSubId(I)[I
    .locals 3
    .param p0, "slotIndex"    # I

    .line 1198
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1199
    const-string v0, "[getSubId]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1200
    return-object v1

    .line 1203
    :cond_0
    move-object v0, v1

    .line 1206
    .local v0, "subId":[I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1207
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1208
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1212
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1210
    :catch_0
    move-exception v1

    .line 1214
    :goto_0
    return-object v0
.end method

.method private getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 1802
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 1645
    const/4 v0, 0x0

    .line 1647
    .local v0, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1648
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1649
    nop

    .line 1650
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-interface {v1, p0, p1, v2}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1654
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1652
    :catch_0
    move-exception v1

    .line 1655
    :goto_0
    return-object v0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 1
    .param p0, "subId"    # I

    .line 1505
    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 1515
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSlotIndex(I)Z
    .locals 1
    .param p0, "slotIndex"    # I

    .line 1510
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .line 1496
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1248
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 1520
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1521
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1522
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_0

    .line 1524
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1526
    :goto_0
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 1531
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1533
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .line 1627
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1628
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1629
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1631
    :catch_0
    move-exception v0

    .line 1634
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 618
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 626
    .local v0, "pkgName":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 628
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_1

    .line 629
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1
    goto :goto_1

    .line 631
    :catch_0
    move-exception v1

    .line 634
    :goto_1
    return-void
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I

    .line 1014
    if-nez p1, :cond_0

    .line 1015
    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1017
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1022
    :cond_1
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1023
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 1025
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I

    goto :goto_0

    .line 1027
    :cond_2
    const-string v1, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_0
    goto :goto_1

    .line 1029
    :catch_0
    move-exception v0

    .line 1034
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    .line 1462
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1463
    return v1

    .line 1465
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    return v1

    .line 1468
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1469
    return v1

    .line 1471
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 1972
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1989
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1992
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1993
    return v1

    .line 1995
    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1998
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 2000
    nop

    .line 2002
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    .line 2003
    .local v4, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2005
    return v6

    .line 2007
    .end local v4    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_1
    goto :goto_0

    .line 2008
    :cond_2
    return v1

    .line 1999
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2000
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1990
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an embedded subscription"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 1

    .line 1482
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1483
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1484
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1489
    :goto_0
    return-void
.end method

.method public clearSubscriptionInfo()V
    .locals 1

    .line 1448
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1449
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1456
    :goto_0
    return-void
.end method

.method public createManageSubscriptionIntent(I)Landroid/content/Intent;
    .locals 6
    .param p1, "subId"    # I

    .line 1891
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "owner":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1895
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v2

    .line 1896
    .local v2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 1898
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1899
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1903
    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1904
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1905
    return-object v1

    .line 1908
    :cond_2
    return-object v3
.end method

.method public getAccessibleSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 894
    const/4 v0, 0x0

    .line 897
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 898
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 899
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 903
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 901
    :catch_0
    move-exception v1

    .line 904
    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 3

    .line 1545
    const/4 v0, 0x0

    .line 1552
    .local v0, "subId":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISub()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1554
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1555
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1559
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1557
    :catch_0
    move-exception v1

    .line 1561
    :goto_0
    if-nez v0, :cond_1

    .line 1562
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 1565
    :cond_1
    return-object v0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "subId"    # I

    .line 676
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 680
    return-object v1

    .line 683
    :cond_0
    move-object v0, v1

    .line 686
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 687
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 688
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 692
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 690
    :catch_0
    move-exception v1

    .line 694
    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 3

    .line 966
    const/4 v0, 0x0

    .line 973
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISub()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 975
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 976
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 980
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 978
    :catch_0
    move-exception v1

    .line 982
    :goto_0
    return v0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 3

    .line 991
    const/4 v0, 0x0

    .line 994
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 995
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 996
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1000
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 998
    :catch_0
    move-exception v1

    .line 1002
    :goto_0
    return v0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 707
    const-string v1, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 708
    return-object v0

    .line 711
    :cond_0
    nop

    .line 714
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 715
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 716
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 720
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    .line 722
    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "slotIndex"    # I

    .line 739
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 740
    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 741
    return-object v1

    .line 744
    :cond_0
    move-object v0, v1

    .line 747
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 748
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 749
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 750
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 754
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 752
    :catch_0
    move-exception v1

    .line 756
    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 812
    const/4 v0, 0x0

    .line 815
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 816
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 817
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 821
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 819
    :catch_0
    move-exception v1

    .line 822
    :goto_0
    return-object v0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 3

    .line 938
    const/4 v0, 0x0

    .line 941
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 942
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 943
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 947
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 945
    :catch_0
    move-exception v1

    .line 949
    :goto_0
    return v0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 767
    const/4 v0, 0x0

    .line 770
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 771
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 772
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 776
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 774
    :catch_0
    move-exception v1

    .line 778
    :goto_0
    if-nez v0, :cond_1

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 781
    :cond_1
    return-object v0
.end method

.method public getAvailableSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 856
    const/4 v0, 0x0

    .line 859
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 860
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 861
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 865
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    .line 866
    :goto_0
    return-object v0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .line 1442
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 1437
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .line 1384
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 1379
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 1326
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionPlans(I)Ljava/util/List;
    .locals 2
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 1760
    nop

    .line 1761
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 1762
    .local v0, "subscriptionPlans":[Landroid/telephony/SubscriptionPlan;
    if-nez v0, :cond_0

    .line 1763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :goto_0
    return-object v1

    .line 1764
    .end local v0    # "subscriptionPlans":[Landroid/telephony/SubscriptionPlan;
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveSubId(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 1732
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1733
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1734
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1737
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1736
    :catch_0
    move-exception v0

    .line 1738
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 1579
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1580
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 1582
    const/4 v1, 0x0

    return v1

    .line 1584
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public isSubscriptionPlansRefreshSupported(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 1942
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->createRefreshSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 644
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 652
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 654
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_1

    .line 655
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1
    goto :goto_1

    .line 657
    :catch_0
    move-exception v1

    .line 660
    :goto_1
    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 921
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 922
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 923
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 928
    :goto_0
    return-void
.end method

.method public requestSubscriptionPlansRefresh(I)V
    .locals 5
    .param p1, "subId"    # I

    .line 1956
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->createRefreshSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1957
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1958
    .local v1, "options":Landroid/app/BroadcastOptions;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1959
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1960
    return-void
.end method

.method public setDataRoaming(II)I
    .locals 3
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .line 1149
    if-ltz p1, :cond_2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1157
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1158
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1159
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1163
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1161
    :catch_0
    move-exception v1

    .line 1165
    :goto_0
    return v0

    .line 1150
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const-string v0, "[setDataRoaming]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1151
    const/4 v0, -0x1

    return v0
.end method

.method public setDefaultDataSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 1419
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1420
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1421
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1426
    :goto_0
    return-void
.end method

.method public setDefaultSmsSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 1361
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1362
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1363
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1368
    :goto_0
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 1308
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1309
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1310
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1315
    :goto_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 1075
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .line 1092
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    const-string v0, "[setDisplayName]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1094
    const/4 v0, -0x1

    return v0

    .line 1097
    :cond_0
    const/4 v0, 0x0

    .line 1100
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1101
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1102
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1106
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1108
    :goto_0
    return v0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 1120
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1125
    :cond_0
    const/4 v0, 0x0

    .line 1128
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1129
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1130
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1134
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1132
    :catch_0
    move-exception v1

    .line 1136
    :goto_0
    return v0

    .line 1121
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1122
    const/4 v0, -0x1

    return v0
.end method

.method public setIconTint(II)I
    .locals 3
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .line 1047
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    const-string v0, "[setIconTint]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1049
    const/4 v0, -0x1

    return v0

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "result":I
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1056
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1057
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1061
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1059
    :catch_0
    move-exception v1

    .line 1063
    :goto_0
    return v0
.end method

.method public setSubscriptionOverrideCongested(IZJ)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1871
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1872
    .local v4, "overrideValue":I
    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1873
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1872
    move v2, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(IIIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    .end local v4    # "overrideValue":I
    nop

    .line 1877
    return-void

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSubscriptionOverrideUnmetered(IZJ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1835
    move v3, p2

    .line 1836
    .local v3, "overrideValue":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1837
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1836
    move v1, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(IIIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    .end local v3    # "overrideValue":I
    nop

    .line 1841
    return-void

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSubscriptionPlans(ILjava/util/List;)V
    .locals 3
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .line 1792
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    .line 1793
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/SubscriptionPlan;

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1792
    invoke-interface {v0, p1, v1, v2}, Landroid/net/INetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    nop

    .line 1797
    return-void

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
