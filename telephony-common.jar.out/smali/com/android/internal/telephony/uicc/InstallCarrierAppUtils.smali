.class public Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;
.super Ljava/lang/Object;
.source "InstallCarrierAppUtils.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final ACTIVATE_CELL_SERVICE_NOTIFICATION_ID:I = 0xc

.field private static sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    nop

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_app_names"

    .line 166
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "whitelistSetting":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "mapString"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 181
    const-string v0, "\\s*;\\s*"

    .line 182
    .local v0, "pairDelim":Ljava/lang/String;
    const-string v1, "\\s*:\\s*"

    .line 184
    .local v1, "keyValueDelim":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 185
    return-object v3

    .line 188
    :cond_0
    const-string v2, "\\s*;\\s*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "keyValuePairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    return-object v3

    .line 194
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, "keyValueString":Ljava/lang/String;
    const-string v6, "\\s*:\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 198
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    const/4 v3, 0x1

    aget-object v3, v6, v3

    return-object v3

    .line 202
    .end local v5    # "keyValueString":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 203
    :cond_3
    return-object v3
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 206
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method static getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "storeIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method static hideAllNotifications(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 94
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 96
    .local v1, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v1, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 101
    .local v4, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 102
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 100
    .end local v4    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method

.method static hideNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method static isPackageInstallNotificationActive(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 154
    nop

    .line 155
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 157
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 158
    .local v4, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 159
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v4    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return v2
.end method

.method static registerPackageInstallReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10402a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "title":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "appName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 59
    const v3, 0x10402a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "message":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    const v3, 0x10402a6

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .restart local v3    # "message":Ljava/lang/String;
    :goto_0
    const v6, 0x10402a4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "downloadButtonText":Ljava/lang/String;
    nop

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "install_carrier_app_notification_persistent"

    .line 66
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 70
    .local v5, "persistent":Z
    :goto_1
    nop

    .line 71
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x8000000

    .line 70
    invoke-static {p0, v4, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 73
    .local v4, "goToStore":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v6, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 74
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 76
    .local v7, "goToStoreAction":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$Builder;

    const-string v9, "sim"

    invoke-direct {v8, p0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 79
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x10804d5

    .line 80
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 81
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 82
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, -0x1

    .line 83
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 84
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 86
    .local v8, "notification":Landroid/app/Notification;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, p1, v10, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 90
    return-void
.end method

.method static showNotificationIfNotInstalledDelayed(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "delayMillis"    # J

    .line 122
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 123
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    nop

    .line 126
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    nop

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 128
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 132
    return-void
.end method

.method static unregisterPackageInstallReceiver(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 149
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    .line 151
    return-void
.end method
