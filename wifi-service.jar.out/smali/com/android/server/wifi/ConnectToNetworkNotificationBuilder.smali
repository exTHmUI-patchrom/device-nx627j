.class public Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;
.super Ljava/lang/Object;
.source "ConnectToNetworkNotificationBuilder.java"


# static fields
.field public static final ACTION_CONNECT_TO_NETWORK:Ljava/lang/String; = "com.android.server.wifi.ConnectToNetworkNotification.CONNECT_TO_NETWORK"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK"

.field public static final ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE:Ljava/lang/String; = "com.android.server.wifi.ConnectToNetworkNotification.PICK_NETWORK_AFTER_FAILURE"

.field public static final ACTION_USER_DISMISSED_NOTIFICATION:Ljava/lang/String; = "com.android.server.wifi.ConnectToNetworkNotification.USER_DISMISSED_NOTIFICATION"

.field public static final AVAILABLE_NETWORK_NOTIFIER_TAG:Ljava/lang/String; = "com.android.server.wifi.ConnectToNetworkNotification.AVAILABLE_NETWORK_NOTIFIER_TAG"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "framework"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mResources:Landroid/content/res/Resources;

    .line 65
    iput-object p2, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 66
    return-void
.end method

.method private createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "content"    # Ljava/lang/CharSequence;
    .param p3, "extraData"    # Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "sort":Landroid/os/Bundle;
    const-string v1, "nubiaSort"

    const-string v2, "Notify"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 175
    const v2, 0x3070160

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.USER_DISMISSED_NOTIFICATION"

    .line 180
    invoke-direct {p0, v2, p3}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 181
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "z0"

    .line 185
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 187
    const v4, 0x1060156

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 169
    return-object v1
.end method

.method private getNotifierRequestCode(Ljava/lang/String;)I
    .locals 4
    .param p1, "notifierTag"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2375bd71

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x783f84d5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WifiOpenNetworkNotifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "WifiCarrierNetworkNotifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 160
    return v3

    .line 158
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 156
    :pswitch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extraData"    # Ljava/lang/String;

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 194
    .local v1, "requestCode":I
    if-eqz p2, :cond_0

    .line 195
    const-string v2, "com.android.server.wifi.ConnectToNetworkNotification.AVAILABLE_NETWORK_NOTIFIER_TAG"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getNotifierRequestCode(Ljava/lang/String;)I

    move-result v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public createConnectToAvailableNetworkNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;
    .locals 6
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/wifi/ScanResult;

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2375bd71

    if-eq v0, v1, :cond_1

    const v1, 0x783f84d5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WifiOpenNetworkNotifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "WifiCarrierNetworkNotifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 89
    const-string v0, "ConnectToNetworkNotificationBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown network notifier."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v1

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    const v2, 0x10406ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 83
    .end local v0    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    const v2, 0x10406d1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .restart local v0    # "title":Ljava/lang/CharSequence;
    nop

    .line 91
    :goto_2
    nop

    .line 93
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v4, 0x10406cd

    .line 94
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "com.android.server.wifi.ConnectToNetworkNotification.CONNECT_TO_NETWORK"

    .line 95
    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 96
    .local v2, "connectAction":Landroid/app/Notification$Action;
    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mResources:Landroid/content/res/Resources;

    const v5, 0x10406cc

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK"

    .line 98
    invoke-direct {p0, v5, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 99
    .local v1, "allNetworksAction":Landroid/app/Notification$Action;
    iget-object v3, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0, v3, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "com.android.server.wifi.ConnectToNetworkNotification.PICK_WIFI_NETWORK"

    .line 100
    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 99
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createNetworkConnectedNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;
    .locals 2
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/wifi/ScanResult;

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 131
    const v1, 0x10406d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 130
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public createNetworkConnectingNotification(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Landroid/app/Notification;
    .locals 3
    .param p1, "notifierTag"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/wifi/ScanResult;

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 116
    const v1, 0x10406d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 115
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public createNetworkFailedNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p1, "notifierTag"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 144
    const v1, 0x10406d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->mContext:Landroid/content/Context;

    .line 145
    const v2, 0x10406cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 143
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->createNotificationBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "com.android.server.wifi.ConnectToNetworkNotification.PICK_NETWORK_AFTER_FAILURE"

    .line 147
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/ConnectToNetworkNotificationBuilder;->getPrivateBroadcast(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 143
    return-object v0
.end method
