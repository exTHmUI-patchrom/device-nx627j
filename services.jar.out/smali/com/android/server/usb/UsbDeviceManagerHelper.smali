.class public Lcom/android/server/usb/UsbDeviceManagerHelper;
.super Ljava/lang/Object;
.source "UsbDeviceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;
    }
.end annotation


# static fields
.field private static final CHARGE_SOUND:Ljava/lang/String; = "/system/media/audio/ui/charge.ogg"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbDMHelper"


# instance fields
.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

.field private mIsChanging:Z

.field private mSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mStreamId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    .line 64
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->init()V

    .line 66
    new-instance v0, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;-><init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManagerHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;

    .line 26
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/usb/UsbDeviceManagerHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManagerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManagerHelper;

    .line 26
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->playSound()V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 170
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 171
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 174
    .local v3, "ri":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    return-object v1

    .line 176
    .end local v3    # "ri":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    return-object v1
.end method

.method private init()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->initSound()V

    .line 71
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->initReceiver()V

    .line 72
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .line 88
    const-string v0, "UsbDMHelper"

    const-string/jumbo v1, "initReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/android/server/usb/UsbDeviceManagerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManagerHelper$1;-><init>(Lcom/android/server/usb/UsbDeviceManagerHelper;)V

    .line 104
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private initSound()V
    .locals 4

    .line 75
    const-string v0, "UsbDMHelper"

    const-string/jumbo v1, "initSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 79
    .local v0, "attributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    .line 80
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/charge.ogg"

    invoke-virtual {v2, v3, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    .line 81
    const-string v1, "UsbDMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSoundId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    if-nez v1, :cond_0

    .line 83
    const-string v1, "UsbDMHelper"

    const-string v2, "failed to load sound from /system/media/audio/ui/charge.ogg"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method private isInCallUI(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 180
    if-eqz p1, :cond_0

    const-string v0, "com.android.incallui.InCallActivity"

    .line 181
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0
.end method

.method private isInHome(Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 189
    .local v2, "defaultHome":Landroid/content/ComponentName;
    if-nez v2, :cond_4

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 191
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v0

    .line 194
    .local v6, "isHome":Z
    :goto_1
    if-eqz v6, :cond_2

    return v5

    .line 195
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "isHome":Z
    :cond_2
    goto :goto_0

    .line 199
    :cond_3
    return v0

    .line 197
    :cond_4
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isInSplitScreen()Z
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ss_multi_window_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "multiWindow":I
    const-string v1, "UsbDMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInSplitScreen [multiWindow] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private markChanging()V
    .locals 4

    .line 138
    const-string v0, "UsbDMHelper"

    const-string/jumbo v1, "markChanging"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mHandler:Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManagerHelper$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method

.method private playSound()V
    .locals 9

    .line 108
    const-string v0, "UsbDMHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStreamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 110
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    if-nez v0, :cond_0

    .line 111
    const-string v0, "UsbDMHelper"

    const-string v1, "failed to load sound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "UsbDMHelper"

    const-string/jumbo v1, "play sound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSound:Landroid/media/SoundPool;

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mSoundId:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 115
    .local v0, "id":I
    monitor-enter p0

    .line 116
    :try_start_0
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mStreamId:I

    .line 117
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 119
    .end local v0    # "id":I
    :cond_1
    :goto_0
    return-void
.end method

.method private satisfyShow()Z
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mIsChanging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 154
    .local v0, "topActivity":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->isInCallUI(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    return v1

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->isInSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    return v1

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 162
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->isInHome(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 162
    :goto_1
    return v1

    .line 152
    .end local v0    # "topActivity":Landroid/content/ComponentName;
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public markBootCompleted()V
    .locals 1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mBootCompleted:Z

    .line 145
    return-void
.end method

.method public settingAdbEnable(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "curEnabled"    # Z

    .line 122
    if-eq p1, p2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    .line 125
    :cond_0
    return-void
.end method

.method public settingEnabledFunctions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "curFunctions"    # Ljava/lang/String;

    .line 128
    if-nez p1, :cond_0

    .line 129
    if-eqz p2, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    goto :goto_0

    .line 132
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->markChanging()V

    .line 135
    :cond_1
    :goto_0
    return-void
.end method

.method public showOptions(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "isConnected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 148
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerHelper;->satisfyShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerHelper;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 149
    :cond_0
    return-void
.end method
