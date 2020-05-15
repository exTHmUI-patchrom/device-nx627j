.class public Lcom/android/server/wifi/WakeupNotificationFactory;
.super Ljava/lang/Object;
.source "WakeupNotificationFactory.java"


# static fields
.field public static final ACTION_DISMISS_NOTIFICATION:Ljava/lang/String; = "com.android.server.wifi.wakeup.DISMISS_NOTIFICATION"

.field public static final ACTION_OPEN_WIFI_PREFERENCES:Ljava/lang/String; = "com.android.server.wifi.wakeup.OPEN_WIFI_PREFERENCES"

.field public static final ACTION_OPEN_WIFI_SETTINGS:Ljava/lang/String; = "com.android.server.wifi.wakeup.OPEN_WIFI_SETTINGS"

.field public static final ACTION_TURN_OFF_WIFI_WAKE:Ljava/lang/String; = "com.android.server.wifi.wakeup.TURN_OFF_WIFI_WAKE"

.field public static final ONBOARD_ID:I = 0x2b


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 50
    return-void
.end method

.method private getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createOnboardingNotification()Landroid/app/Notification;
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    const v1, 0x10406f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    const v2, 0x10406ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 58
    .local v1, "content":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    const v3, 0x10406ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 59
    .local v2, "disableText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1060156

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 62
    .local v3, "color":I
    new-instance v4, Landroid/app/Notification$Action$Builder;

    const-string v5, "com.android.server.wifi.wakeup.TURN_OFF_WIFI_WAKE"

    .line 63
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WakeupNotificationFactory;->getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v2, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 64
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    .line 66
    .local v4, "disableAction":Landroid/app/Notification$Action;
    iget-object v5, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v6, p0, Lcom/android/server/wifi/WakeupNotificationFactory;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/FrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 68
    const v6, 0x10804fc

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 70
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "com.android.server.wifi.wakeup.OPEN_WIFI_PREFERENCES"

    .line 72
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WakeupNotificationFactory;->getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "com.android.server.wifi.wakeup.DISMISS_NOTIFICATION"

    .line 73
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WakeupNotificationFactory;->getPrivateBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 75
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 76
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 66
    return-object v5
.end method
