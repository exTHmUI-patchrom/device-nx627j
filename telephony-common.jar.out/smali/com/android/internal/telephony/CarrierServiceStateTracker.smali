.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;,
        Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    }
.end annotation


# static fields
.field protected static final CARRIER_EVENT_BASE:I = 0x64

.field protected static final CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CSST"

.field public static final NOTIFICATION_EMERGENCY_NETWORK:I = 0x3e9

.field public static final NOTIFICATION_PREF_NETWORK:I = 0x3e8

.field private static final UNINITIALIZED_DELAY_VALUE:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefNetworkModeObserver:Landroid/database/ContentObserver;

.field private mPreviousSubId:I

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    .line 91
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;Landroid/os/Looper;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerNotificationTypes()V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerPrefNetworkModeObserver()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneRegisteredForWifiCalling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPreviousSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->registerPrefNetworkModeObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handlePrefNetworkModeChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneStillRegistered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isPhoneVoiceRegistered()Z

    move-result v0

    return v0
.end method

.method private evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .locals 4
    .param p1, "notificationType"    # Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, "notificationMsg":Landroid/os/Message;
    const-string v1, "CSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting timer for notifications."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    .end local v0    # "notificationMsg":Landroid/os/Message;
    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification(I)V

    .line 233
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void
.end method

.method private handleConfigChanges()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 215
    .local v2, "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;>;"
    .end local v2    # "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private handlePrefNetworkModeChanged()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 221
    .local v0, "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessageOrCancelNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    .line 224
    :cond_0
    return-void
.end method

.method private isGlobalMode()Z
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x1

    .line 201
    .local v1, "preferredNetworkSetting":I
    nop

    .line 202
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 204
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 202
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 208
    nop

    .line 209
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CSST"

    const-string v5, "Unable to get PREFERRED_NETWORK_MODE."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v2
.end method

.method private isPhoneRegisteredForWifiCalling()Z
    .locals 3

    .line 173
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneRegisteredForWifiCalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method private isPhoneStillRegistered()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 162
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    .line 161
    :cond_2
    :goto_0
    return v1
.end method

.method private isPhoneVoiceRegistered()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private registerNotificationTypes()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$PrefNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$EmergencyNetworkNotification;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private registerPrefNetworkModeObserver()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 108
    .local v0, "subId":I
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterPrefNetworkModeObserver()V

    .line 109
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 110
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    :cond_0
    return-void
.end method

.method private unregisterPrefNetworkModeObserver()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 2
    .param p1, "notificationId"    # I

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->removeMessages(I)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 312
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->unregisterPrefNetworkModeObserver()V

    .line 319
    return-void
.end method

.method public evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z
    .locals 1
    .param p1, "notificationType"    # Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 242
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->sendMessage()Z

    move-result v0

    return v0
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getDelay(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)I
    .locals 1
    .param p1, "notificationType"    # Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getDelay()I

    move-result v0

    return v0
.end method

.method public getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "notificationType"    # Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 258
    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getNotificationTypeMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 148
    :pswitch_0
    const-string v0, "CSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending notification after delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mNotificationTypeMap:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 150
    .local v0, "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V

    .end local v0    # "notificationType":Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    .line 145
    nop

    .line 155
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isRadioOffOrAirplaneMode()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x1

    .line 185
    .local v1, "airplaneMode":I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 190
    nop

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    nop

    :cond_1
    :goto_0
    return v2

    .line 187
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CSST"

    const-string v5, "Unable to get AIRPLACE_MODE_ON."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v2
.end method

.method public sendNotification(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)V
    .locals 5
    .param p1, "notificationType"    # Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->evaluateSendingMessage(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationBuilder(Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 296
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 297
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    .line 298
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->getTypeId()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 303
    return-void
.end method
