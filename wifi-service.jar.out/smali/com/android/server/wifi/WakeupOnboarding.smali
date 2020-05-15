.class public Lcom/android/server/wifi/WakeupOnboarding;
.super Ljava/lang/Object;
.source "WakeupOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;,
        Lcom/android/server/wifi/WakeupOnboarding$IsOnboardedDataSource;
    }
.end annotation


# static fields
.field static final NOTIFICATIONS_UNTIL_ONBOARDED:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final NOT_SHOWN_TIMESTAMP:J = -0x1L

.field static final REQUIRED_NOTIFICATION_DELAY:J = 0x5265c00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WakeupOnboarding"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsNotificationShowing:Z

.field private mIsOnboarded:Z

.field private mLastShownTimestamp:J

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mTotalNotificationsShown:I

.field private final mWakeupNotificationFactory:Lcom/android/server/wifi/WakeupNotificationFactory;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/WakeupNotificationFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p5, "wakeupNotificationFactory"    # Lcom/android/server/wifi/WakeupNotificationFactory;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mLastShownTimestamp:J

    .line 68
    new-instance v0, Lcom/android/server/wifi/WakeupOnboarding$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WakeupOnboarding$1;-><init>(Lcom/android/server/wifi/WakeupOnboarding;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/wifi/WakeupOnboarding;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p4, p0, Lcom/android/server/wifi/WakeupOnboarding;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 103
    iput-object p5, p0, Lcom/android/server/wifi/WakeupOnboarding;->mWakeupNotificationFactory:Lcom/android/server/wifi/WakeupNotificationFactory;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.server.wifi.wakeup.TURN_OFF_WIFI_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.server.wifi.wakeup.DISMISS_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.server.wifi.wakeup.OPEN_WIFI_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WakeupOnboarding;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WakeupOnboarding;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;

    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mFrameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WakeupOnboarding;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupOnboarding;->dismissNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WakeupOnboarding;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsOnboarded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WakeupOnboarding;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsOnboarded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WakeupOnboarding;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;

    .line 45
    iget v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mTotalNotificationsShown:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WakeupOnboarding;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mTotalNotificationsShown:I

    return p1
.end method

.method private dismissNotification(Z)V
    .locals 2
    .param p1, "shouldOnboard"    # Z

    .line 166
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsNotificationShowing:Z

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupOnboarding;->setOnboarded()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupOnboarding;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsNotificationShowing:Z

    .line 177
    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mNotificationManager:Landroid/app/NotificationManager;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private incrementTotalNotificationsShown()V
    .locals 2

    .line 143
    iget v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mTotalNotificationsShown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mTotalNotificationsShown:I

    .line 144
    iget v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mTotalNotificationsShown:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupOnboarding;->setOnboarded()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 149
    :goto_0
    return-void
.end method

.method private shouldShowNotification(J)Z
    .locals 6
    .param p1, "timestamp"    # J

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupOnboarding;->isOnboarded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsNotificationShowing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    iget-wide v2, p0, Lcom/android/server/wifi/WakeupOnboarding;->mLastShownTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/wifi/WakeupOnboarding;->mLastShownTimestamp:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 153
    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public getIsOnboadedDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/android/server/wifi/WakeupOnboarding$IsOnboardedDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WakeupOnboarding$IsOnboardedDataSource;-><init>(Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WakeupOnboarding$1;)V

    return-object v0
.end method

.method public getNotificationsDataSource()Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;-><init>(Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WakeupOnboarding$1;)V

    return-object v0
.end method

.method public isOnboarded()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsOnboarded:Z

    return v0
.end method

.method public maybeShowNotification()V
    .locals 2

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WakeupOnboarding;->maybeShowNotification(J)V

    .line 119
    return-void
.end method

.method maybeShowNotification(J)V
    .locals 5
    .param p1, "timestamp"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WakeupOnboarding;->shouldShowNotification(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    const-string v0, "WakeupOnboarding"

    const-string v1, "Showing onboarding notification."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupOnboarding;->incrementTotalNotificationsShown()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsNotificationShowing:Z

    .line 130
    iput-wide p1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mLastShownTimestamp:J

    .line 132
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WakeupOnboarding;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WakeupOnboarding;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/android/server/wifi/WakeupOnboarding;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/android/server/wifi/WakeupOnboarding;->mWakeupNotificationFactory:Lcom/android/server/wifi/WakeupNotificationFactory;

    .line 135
    invoke-virtual {v2}, Lcom/android/server/wifi/WakeupNotificationFactory;->createOnboardingNotification()Landroid/app/Notification;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WakeupOnboarding;->dismissNotification(Z)V

    .line 163
    return-void
.end method

.method public setOnboarded()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsOnboarded:Z

    if-eqz v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    const-string v0, "WakeupOnboarding"

    const-string v1, "Setting user as onboarded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mIsOnboarded:Z

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    .line 187
    return-void
.end method
