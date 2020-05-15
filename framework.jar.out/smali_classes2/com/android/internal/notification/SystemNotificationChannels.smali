.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static ACCOUNT:Ljava/lang/String;

.field public static ALERTS:Ljava/lang/String;

.field public static CAR_MODE:Ljava/lang/String;

.field public static DEVELOPER:Ljava/lang/String;

.field public static DEVICE_ADMIN:Ljava/lang/String;

.field public static DO_NOT_DISTURB:Ljava/lang/String;

.field public static FOREGROUND_SERVICE:Ljava/lang/String;

.field public static HEAVY_WEIGHT_APP:Ljava/lang/String;

.field public static NETWORK_ALERTS:Ljava/lang/String;

.field public static NETWORK_AVAILABLE:Ljava/lang/String;

.field public static NETWORK_STATUS:Ljava/lang/String;

.field public static PHYSICAL_KEYBOARD:Ljava/lang/String;

.field public static RETAIL_MODE:Ljava/lang/String;

.field public static SECURITY:Ljava/lang/String;

.field public static SYSTEM_CHANGES:Ljava/lang/String;

.field public static UPDATES:Ljava/lang/String;

.field public static USB:Ljava/lang/String;

.field public static VIRTUAL_KEYBOARD:Ljava/lang/String;

.field public static VPN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    .line 36
    const-string v0, "PHYSICAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    .line 37
    const-string v0, "SECURITY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 38
    const-string v0, "CAR_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    .line 39
    const-string v0, "ACCOUNT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 40
    const-string v0, "DEVELOPER"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    .line 41
    const-string v0, "UPDATES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    .line 42
    const-string v0, "NETWORK_STATUS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 43
    const-string v0, "NETWORK_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 44
    const-string v0, "NETWORK_AVAILABLE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    .line 45
    const-string v0, "VPN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 46
    const-string v0, "DEVICE_ADMIN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 47
    const-string v0, "ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 48
    const-string v0, "RETAIL_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    .line 49
    const-string v0, "USB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 50
    const-string v0, "FOREGROUND_SERVICE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    .line 51
    const-string v0, "HEAVY_WEIGHT_APP"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    .line 52
    const-string v0, "SYSTEM_CHANGES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    .line 53
    const-string v0, "DO_NOT_DISTURB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 184
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 186
    .local v0, "iNotificationManager":Landroid/app/INotificationManager;
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    const/4 v3, 0x0

    .line 187
    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 186
    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    move-object/from16 v0, p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 57
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "channelsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    .line 60
    const v5, 0x1040400

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 62
    .local v3, "keyboard":Landroid/app/NotificationChannel;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    .line 67
    const v8, 0x10403f8

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v5, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 69
    .local v5, "physicalKeyboardChannel":Landroid/app/NotificationChannel;
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v7, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 71
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 72
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 76
    const v10, 0x10403fa

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    .local v7, "security":Landroid/app/NotificationChannel;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    .line 82
    const v11, 0x10403ec

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 84
    .local v8, "car":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 85
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    .line 91
    const v12, 0x10403ed

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 93
    .local v10, "developer":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 94
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v11, Landroid/app/NotificationChannel;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    .line 98
    const v13, 0x10403fe

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v11, "updates":Landroid/app/NotificationChannel;
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v12, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 104
    const v14, 0x10403f7

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 106
    .local v12, "network":Landroid/app/NotificationChannel;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 110
    const v15, 0x10403f5

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v9, 0x4

    invoke-direct {v13, v14, v15, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 112
    .local v13, "networkAlertsChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v13, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 113
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    .line 117
    const v9, 0x10403f6

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v15, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v9, v14

    .line 119
    .local v9, "networkAvailable":Landroid/app/NotificationChannel;
    invoke-virtual {v9, v4}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 120
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 124
    const v4, 0x1040402

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v15, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v4, v14

    .line 126
    .local v4, "vpn":Landroid/app/NotificationChannel;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 130
    move-object/from16 v16, v3

    const v3, 0x10403ee

    .end local v3    # "keyboard":Landroid/app/NotificationChannel;
    .local v16, "keyboard":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v15, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v14

    .line 132
    .local v3, "deviceAdmin":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 136
    const v6, 0x10403ea

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v3

    const/4 v3, 0x3

    invoke-direct {v14, v15, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .end local v3    # "deviceAdmin":Landroid/app/NotificationChannel;
    .local v17, "deviceAdmin":Landroid/app/NotificationChannel;
    move-object v3, v14

    .line 138
    .local v3, "alertsChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    .line 142
    const v15, 0x10403f9

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v3

    const/4 v3, 0x2

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .end local v3    # "alertsChannel":Landroid/app/NotificationChannel;
    .local v18, "alertsChannel":Landroid/app/NotificationChannel;
    move-object v3, v6

    .line 144
    .local v3, "retail":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 148
    const v15, 0x10403ff

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v3

    const/4 v3, 0x1

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .end local v3    # "retail":Landroid/app/NotificationChannel;
    .local v19, "retail":Landroid/app/NotificationChannel;
    move-object v3, v6

    .line 150
    .local v3, "usb":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    .line 154
    const v15, 0x10403f1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v3

    const/4 v3, 0x2

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .end local v3    # "usb":Landroid/app/NotificationChannel;
    .local v20, "usb":Landroid/app/NotificationChannel;
    move-object v3, v6

    .line 156
    .local v3, "foregroundChannel":Landroid/app/NotificationChannel;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 157
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    .line 161
    const v15, 0x10403f2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v3

    const/4 v3, 0x3

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .end local v3    # "foregroundChannel":Landroid/app/NotificationChannel;
    .local v21, "foregroundChannel":Landroid/app/NotificationChannel;
    move-object v3, v6

    .line 163
    .local v3, "heavyWeightChannel":Landroid/app/NotificationChannel;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 164
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 165
    const/4 v14, 0x4

    invoke-virtual {v6, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 166
    const/16 v14, 0xa

    invoke-virtual {v6, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 167
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 164
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    .line 171
    const v15, 0x10403fd

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v3

    const/4 v3, 0x2

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 173
    .end local v3    # "heavyWeightChannel":Landroid/app/NotificationChannel;
    .local v6, "systemChanges":Landroid/app/NotificationChannel;
    .local v22, "heavyWeightChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    .line 176
    move-object/from16 v23, v4

    const v4, 0x10403ef

    .end local v4    # "vpn":Landroid/app/NotificationChannel;
    .local v23, "vpn":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v15, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v14

    .line 178
    .local v3, "dndChanges":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 181
    return-void
.end method

.method private static newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 196
    const v2, 0x10403e9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 194
    return-object v0
.end method
