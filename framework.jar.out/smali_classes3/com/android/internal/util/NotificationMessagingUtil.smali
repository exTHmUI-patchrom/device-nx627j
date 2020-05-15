.class public Lcom/android/internal/util/NotificationMessagingUtil;
.super Ljava/lang/Object;
.source "NotificationMessagingUtil.java"


# static fields
.field private static final DEFAULT_SMS_APP_SETTING:Ljava/lang/String; = "sms_default_application"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSmsApp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil$1;

    new-instance v1, Landroid/os/Handler;

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/NotificationMessagingUtil$1;-><init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    .line 46
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/NotificationMessagingUtil;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/NotificationMessagingUtil;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    return-void
.end method

.method private cacheDefaultSmsApp(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 72
    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    .line 72
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method private hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 88
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 93
    const-string v0, "msg"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 63
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 64
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 66
    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 64
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "importance"    # I

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 51
    return v0

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMessaging(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
