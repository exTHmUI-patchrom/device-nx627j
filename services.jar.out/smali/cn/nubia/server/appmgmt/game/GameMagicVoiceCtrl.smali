.class public Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;
.super Ljava/lang/Object;
.source "GameMagicVoiceCtrl.java"


# static fields
.field private static final ACTION_INTENT_EVENT_TYPE:Ljava/lang/String; = "nubia_game_magic_voice_event_type"

.field private static final ACTION_INTENT_PACKAGE_NAME:Ljava/lang/String; = "nubia_game_magic_voice_package_name"

.field private static final DB_MAGIC_VOICE_RECORD_PACKAGE_NAME:Ljava/lang/String; = "db_magic_voice_record_package_name"

.field private static DEBUG:Z = false

.field private static final GAME_MAGICVOICE_PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.game.magicvoice"

.field private static final GAME_MAGICVOICE_SERVICE_NAME:Ljava/lang/String; = "cn.nubia.game.magicvoice.GameMagicVoiceService"

.field private static final TAG:Ljava/lang/String; = "GameMagicVoiceCtrl"

.field private static final TYPE_INTENT_EVENT_CLEAR_VOICE:I = 0x3

.field private static final TYPE_INTENT_EVENT_MAGIC_VOICE_CLOSE:I = 0x2

.field private static final TYPE_INTENT_EVENT_SETTINGS_VOICE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lnubia/widget/NubiaCenterAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mRecordFailProcessName:Ljava/lang/String;

.field private mRecordingProcessName:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mUiHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;Lnubia/widget/NubiaCenterAlertDialog;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;
    .param p1, "x1"    # Lnubia/widget/NubiaCenterAlertDialog;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object p1
.end method

.method private checkMagicVoiceAppIsExist()Z
    .locals 3

    .line 195
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 197
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v1, "cn.nubia.game.magicvoice"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v1, 0x1

    return v1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private isGameKeyNodeOn()Z
    .locals 2

    .line 170
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/game/GameKeysHelper;->readNodeValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "gameKeyStatus":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 172
    const-string v0, "0"

    .line 174
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private notifyMagicVoiceSettings(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.game.magicvoice"

    const-string v2, "cn.nubia.game.magicvoice.GameMagicVoiceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v1, "nubia_game_magic_voice_event_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "nubia_game_magic_voice_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GameMagicVoiceCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServiceException action = clean magic voice , exception = :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showAudioRecordErrorToast()V
    .locals 2

    .line 145
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;-><init>(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateMagicVoiceRecordPackageName()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;-><init>(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method private updateRecordFailProcessName(ILandroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "runinfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 95
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordFailProcessName:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 98
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordFailProcessName:Ljava/lang/String;

    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method private updateRecordingProcessName(ILandroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "runinfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 106
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    iget-object v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateMagicVoiceRecordPackageName()V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public noteGameMagicVoice(II)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pid"    # I

    .line 61
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->checkMagicVoiceAppIsExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    const-string v0, "GameMagicVoiceCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteGameMagicVoice type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->getRunningAppProcessesForPid(I)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    .line 67
    .local v0, "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->isGameKeyNodeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordFailProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->showAudioRecordErrorToast()V

    .line 69
    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateRecordFailProcessName(ILandroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 70
    return-void

    .line 72
    :cond_1
    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateRecordFailProcessName(ILandroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateRecordingProcessName(ILandroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 74
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    const-string v2, "GameMagicVoiceCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteGameMagicVoice appInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateMagicVoiceRecordPackageName()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->isGameKeyNodeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isGameAppOnForeground()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateMagicVoiceRecordPackageName()V

    .line 80
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceSettings(Ljava/lang/String;I)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 83
    .local v1, "audioManager":Landroid/media/AudioManager;
    const-string v2, "clearMagicVoiceInfo=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "runinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    :goto_0
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyMagicVoiceWithGamekey(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .line 123
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->checkMagicVoiceAppIsExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    const-string v0, "GameMagicVoiceCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMagicVoiceWithGamekey isOpen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mRecordingProcessName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isGameAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    if-eqz p1, :cond_2

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceSettings(Ljava/lang/String;I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceSettings(Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->mRecordingProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    if-nez p1, :cond_4

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->notifyMagicVoiceSettings(Ljava/lang/String;I)V

    .line 141
    :cond_4
    :goto_0
    return-void
.end method
