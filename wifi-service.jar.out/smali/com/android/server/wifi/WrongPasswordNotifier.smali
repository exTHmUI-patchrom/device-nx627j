.class public Lcom/android/server/wifi/WrongPasswordNotifier;
.super Ljava/lang/Object;
.source "WrongPasswordNotifier.java"


# static fields
.field private static final CANCEL_TIMEOUT_MILLISECONDS:J = 0x493e0L

.field public static final NOTIFICATION_ID:I = 0x2a
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mWrongPasswordDetected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    return-void
.end method

.method private dismissNotification()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifi_start_connect_ssid"

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 87
    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 93
    const v2, 0x3070160

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 95
    const v3, 0x10406d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v3, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 98
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/server/wifi/FrameworkFacade;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 102
    .local v1, "builder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onNewConnectionAttempt()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WrongPasswordNotifier;->dismissNotification()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    .line 74
    :cond_0
    return-void
.end method

.method public onWrongPasswordError(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WrongPasswordNotifier;->showNotification(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WrongPasswordNotifier;->mWrongPasswordDetected:Z

    .line 64
    return-void
.end method
