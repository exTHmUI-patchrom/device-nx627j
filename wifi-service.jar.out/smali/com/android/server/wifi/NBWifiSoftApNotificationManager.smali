.class public Lcom/android/server/wifi/NBWifiSoftApNotificationManager;
.super Ljava/lang/Object;
.source "NBWifiSoftApNotificationManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final HOTSPOT_NOTIFICATION:Ljava/lang/String; = "HOTSPOT_NOTIFICATION"

.field private static final ICON_ID:I = 0x3070070

.field private static final NUBIA_LAST_SOFT_AP_NOTIFICATION_ID:Ljava/lang/String; = "nubia_last_soft_ap_notification_id"

.field private static final TAG:Ljava/lang/String; = "NBWifiSoftApNotificationManager"

.field private static sWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;


# instance fields
.field private final mChannelName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mLastSoftApNotificationId:I

.field private mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiServiceImpl"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 78
    const v0, 0x30c0031

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mChannelName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private clearSoftApClientsNotification()V
    .locals 3

    .line 156
    iget v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 161
    const-string v1, "NBWifiSoftApNotificationManager"

    const-string v2, "clearSoftApClientsNotification: null notification manager, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_0
    const-string v1, "NBWifiSoftApNotificationManager"

    const-string v2, "clearSoftApClientsNotification: cancel notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mChannelName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    .line 169
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/NBWifiSoftApNotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiServiceImpl"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 83
    sget-object v0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->sWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V

    sput-object v0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->sWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->sWifiSoftApNotificationManager:Lcom/android/server/wifi/NBWifiSoftApNotificationManager;

    return-object v0
.end method

.method private isWifiApOpened()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v0

    .line 93
    .local v0, "state":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private showSoftApClientsNotification(I)V
    .locals 12
    .param p1, "numClients"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 101
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 102
    const-string v1, "NBWifiSoftApNotificationManager"

    const-string v2, "showSoftApClientsNotification: null notification manager, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 106
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "NBWifiSoftApNotificationManager"

    const-string v3, "showSoftApClientsNotification: cancel notification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mChannelName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 110
    iput v2, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    .line 113
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.TetherSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v3, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 121
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 122
    .local v4, "ap":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    const v6, 0x30c0033

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    const v8, 0x30c0032

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "message":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v6, :cond_2

    .line 126
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v8, "HOTSPOT_NOTIFICATION"

    iget-object v9, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mChannelName:Ljava/lang/String;

    invoke-direct {v6, v8, v9, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 128
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 129
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "HOTSPOT_NOTIFICATION"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

    .line 130
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v8, "sort":Landroid/os/Bundle;
    const-string v9, "nubiaSort"

    const-string v10, "Running"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v9, "use_custom_icon"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget-object v9, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 134
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x3050002

    .line 135
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 137
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 138
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v9, "d0"

    .line 139
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v9, "status"

    .line 140
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 142
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    .end local v8    # "sort":Landroid/os/Bundle;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

    const v7, 0x3070070

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 143
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 144
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 145
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x2

    .line 146
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 148
    const v6, 0x307007a

    iput v6, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    .line 150
    const-string v6, "NBWifiSoftApNotificationManager"

    const-string v7, "showSoftApClientsNotification: show notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mChannelName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mLastSoftApNotificationId:I

    iget-object v8, p0, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->mSoftApNotificationBuilder:Landroid/app/Notification$Builder;

    .line 152
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 151
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 3
    .param p1, "numClients"    # I

    .line 55
    const-string v0, "NBWifiSoftApNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNumClientsChanged: numClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 61
    const-string v0, "NBWifiSoftApNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStaConnected: Macaddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", numClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->isWifiApOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p2}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->showSoftApClientsNotification(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numClients"    # I

    .line 69
    const-string v0, "NBWifiSoftApNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStaDisconnected: Macaddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", numClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->isWifiApOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p2}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->showSoftApClientsNotification(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public onStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 37
    const-string v0, "NBWifiSoftApNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", failureReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    goto :goto_0

    .line 40
    :pswitch_1
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/NBWifiSoftApNotificationManager;->clearSoftApClientsNotification()V

    .line 47
    nop

    .line 51
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
