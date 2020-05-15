.class public Lcn/nubia/server/policy/AntiMisOperationCtrl;
.super Ljava/lang/Object;
.source "AntiMisOperationCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

.field public static sIsScreenSaverShow:Z


# instance fields
.field private final PACKNAME:Ljava/lang/String;

.field private final SERVICE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAvoidMistouchObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mScreenSaverReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->sIsScreenSaverShow:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "AntiMisoperation"

    iput-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->PACKNAME:Ljava/lang/String;

    .line 27
    const-string v0, "com.android.systemui.screensaver.ScreenSaverService"

    iput-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->SERVICE_NAME:Ljava/lang/String;

    .line 59
    new-instance v0, Lcn/nubia/server/policy/AntiMisOperationCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl$1;-><init>(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V

    iput-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/AntiMisOperationCtrl$2;-><init>(Lcn/nubia/server/policy/AntiMisOperationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mAvoidMistouchObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    iput-object p2, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->initScreenSaver()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/AntiMisOperationCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 20
    iget-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->stopScreenSaverService()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/AntiMisOperationCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/AntiMisOperationCtrl;

    .line 20
    invoke-direct {p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->startScreenSaverService()V

    return-void
.end method

.method private createDataBaseListener()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_palmrejection"

    .line 46
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mAvoidMistouchObserver:Landroid/database/ContentObserver;

    .line 45
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method

.method private initScreenSaver()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->createDataBaseListener()V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method private startScreenSaverService()V
    .locals 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.screensaver.ScreenSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method private stopScreenSaverService()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.screensaver.ScreenSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public initScreenSaverService()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_palmrejection"

    .line 51
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 54
    .local v0, "avoidMistouchEnable":Z
    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcn/nubia/server/policy/AntiMisOperationCtrl;->startScreenSaverService()V

    .line 57
    :cond_1
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 98
    sget-boolean v0, Lcn/nubia/server/policy/AntiMisOperationCtrl;->sIsScreenSaverShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 99
    const-wide/16 v0, 0x0

    return-wide v0

    .line 101
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
