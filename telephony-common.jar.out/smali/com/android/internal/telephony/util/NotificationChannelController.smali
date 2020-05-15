.class public Lcom/android/internal/telephony/util/NotificationChannelController;
.super Ljava/lang/Object;
.source "NotificationChannelController.java"


# static fields
.field public static final CHANNEL_ID_ALERT:Ljava/lang/String; = "alert"

.field public static final CHANNEL_ID_CALL_FORWARD:Ljava/lang/String; = "callForward"

.field private static final CHANNEL_ID_MOBILE_DATA_ALERT_DEPRECATED:Ljava/lang/String; = "mobileDataAlert"

.field public static final CHANNEL_ID_MOBILE_DATA_STATUS:Ljava/lang/String; = "mobileDataAlertNew"

.field public static final CHANNEL_ID_SIM:Ljava/lang/String; = "sim"

.field public static final CHANNEL_ID_SMS:Ljava/lang/String; = "sms"

.field public static final CHANNEL_ID_VOICE_MAIL:Ljava/lang/String; = "voiceMail"

.field public static final CHANNEL_ID_WFC:Ljava/lang/String; = "wfc"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/android/internal/telephony/util/NotificationChannelController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController$1;-><init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static createAll(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "alert"

    .line 57
    const v2, 0x10403f4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 59
    .local v0, "alertChannel":Landroid/app/NotificationChannel;
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 60
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 64
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v5, "mobileDataAlertNew"

    .line 66
    const v6, 0x10403f3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 69
    .local v2, "mobileDataStatusChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 71
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "sim"

    .line 73
    const v8, 0x10403fb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v5, v6, v8, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    .local v5, "simChannel":Landroid/app/NotificationChannel;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 79
    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/app/NotificationChannel;

    new-instance v9, Landroid/app/NotificationChannel;

    const-string v10, "callForward"

    .line 82
    const v11, 0x10403eb

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Landroid/app/NotificationChannel;

    const-string v10, "sms"

    .line 85
    const v11, 0x10403fc

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v9, v8, v1

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v9, "wfc"

    .line 88
    const v10, 0x1040403

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v1, v9, v10, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v8, v7

    aput-object v0, v8, v3

    aput-object v2, v8, v12

    aput-object v5, v8, v4

    .line 80
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 94
    const-string v1, "voiceMail"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    .line 99
    :cond_0
    const-string v1, "mobileDataAlert"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v3, "mobileDataAlert"

    .line 101
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 103
    :cond_1
    return-void
.end method

.method public static getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 1
    .param p0, "channelId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 115
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method private static migrateVoicemailNotificationSettings(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "voiceMail"

    .line 129
    const v2, 0x1040401

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 131
    .local v0, "voiceMailChannel":Landroid/app/NotificationChannel;
    nop

    .line 132
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 133
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "sound":Landroid/net/Uri;
    nop

    .line 135
    if-nez v1, :cond_0

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x5

    .line 136
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 137
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 138
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 139
    return-void
.end method
