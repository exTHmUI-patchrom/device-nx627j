.class public Lcn/nubia/server/breathinglight/MissEventObserver;
.super Ljava/lang/Object;
.source "MissEventObserver.java"


# static fields
.field private static final ACTION_NO_DISTURB_EVENING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

.field private static final ACTION_NO_DISTURB_MORNING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final ID:Ljava/lang/String; = "_ID"

.field private static final NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

.field private static final NOTIFICATION_SWITCH_FLAG:I = 0x9

.field private static final NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

.field private static final NO_DISTURB_EVENING_HOUR_OF_DAY:I = 0x16

.field private static final NO_DISTURB_EVENING_REQUESTCODE:I = 0x1

.field private static final NO_DISTURB_MORNING_HOUR_OF_DAY:I = 0x7

.field private static final NO_DISTURB_MORNING_REQUESTCODE:I = 0x0

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field private static final TAG:Ljava/lang/String; = "MissEventObserver"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mIsDoubleInstance:Z

.field private mIsNoDisturb:Z

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/INotificationManager;

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mUsingMiddleLight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "_ID"

    const-string v1, "PKG_NAME"

    const-string v2, "FLAG"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p3, "settings"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p4, "notification"    # Landroid/app/INotificationManager;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 59
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    .line 73
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$1;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$2;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 98
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 100
    iput-object p3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 101
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 102
    invoke-static {}, Lcn/nubia/server/breathinglight/MissEventObserver;->isInDoubleInstanceMode()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    .line 104
    iput-object p4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    .line 106
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 106
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .line 36
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/MissEventObserver;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private cancelAlarm(Ljava/lang/String;I)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 177
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 177
    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    return-void
.end method

.method private cancelNoDisturb()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 155
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method private getNotificationPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 264
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "pkgName":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsDoubleInstance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->isCloneInstance(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, ":nubia_clone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    return-object v0
.end method

.method private static getSmartContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "clonehelper":Ljava/lang/Object;
    :try_start_0
    const-string v1, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 359
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 360
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 363
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 239
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 245
    :cond_0
    return-void
.end method

.method private handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->missEventsChangeToNull()V

    .line 253
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 255
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 256
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    .line 261
    :cond_0
    return-void
.end method

.method private static isCloneInstance(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 368
    const/4 v0, 0x0

    move v1, v0

    .line 370
    .local v1, "isCloneInstance":Z
    :try_start_0
    const-string v2, "com.cmx.cmplus.sdk.CloneHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 371
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "isCloneInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 372
    .local v3, "getLabel":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 373
    nop

    .line 374
    invoke-static {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->getSmartContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    .line 373
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 377
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getLabel":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private static isInDoubleInstanceMode()Z
    .locals 4

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "isDoubleInstance":Z
    :try_start_0
    const-string v1, "com.cmx.cmplus.SmartContainerConfig"

    .line 390
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 391
    .local v1, "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "WITH_OUT_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 392
    .local v2, "withoutMultiProcess":Ljava/lang/reflect/Field;
    nop

    .line 393
    invoke-virtual {v2, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 396
    .end local v1    # "powermoConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "withoutMultiProcess":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private isNoDisturb()Z
    .locals 6

    .line 222
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    .line 223
    .local v0, "isNoDisturbEnable":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-lt v1, v5, :cond_1

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 227
    .local v1, "isNoDisturbTime":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method

.method private isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 235
    :cond_1
    return v0
.end method

.method private registerNoDisturbReceiver()V
    .locals 3

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method private scheduleAlarm()V
    .locals 3

    .line 146
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 148
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 150
    return-void
.end method

.method private scheduleAlarm(Ljava/lang/String;II)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hourOfDay"    # I

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 164
    .local v3, "curHourOfDay":I
    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 165
    if-lt v3, p3, :cond_0

    .line 166
    const/16 v4, 0x18

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 169
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 171
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 169
    invoke-static {v2, p2, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 172
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 173
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 174
    return-void
.end method

.method private scheduleNoDisturb()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->registerNoDisturbReceiver()V

    .line 133
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    .line 134
    return-void
.end method


# virtual methods
.method public closeBreathingLight()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 210
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    goto :goto_0

    .line 214
    :cond_0
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void
.end method

.method public handleBootCompleted()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->setNoDisturb()V

    .line 119
    return-void
.end method

.method public handleUserPresent()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 185
    return-void
.end method

.method public isUseingMiddleLight()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    return v0
.end method

.method public requestBreathingLight()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 195
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 197
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 198
    const-string v0, "MissEventObserver"

    const-string/jumbo v1, "requestBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 203
    const-string v0, "MissEventObserver"

    const-string/jumbo v1, "requestBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void
.end method

.method public setNoDisturb()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 124
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleNoDisturb()V

    goto :goto_0

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 127
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelNoDisturb()V

    .line 129
    :cond_1
    :goto_0
    return-void
.end method
