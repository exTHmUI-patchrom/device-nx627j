.class public Lcn/nubia/server/appmgmt/LightEffectController;
.super Ljava/lang/Object;
.source "LightEffectController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/LightEffectController$Data;,
        Lcn/nubia/server/appmgmt/LightEffectController$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHAT_SYSTEM_ANIMATION_STATE_CHANGE:I = 0x1

.field private static final WHAT_UPDATE_AUDIO_STATE:I


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mGameEffect:I

.field private mHandler:Landroid/os/Handler;

.field private mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;

.field private mLock:Ljava/lang/Object;

.field private mMusicEffect:I

.field private mPhoneEffect:I

.field private states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 284
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcn/nubia/server/appmgmt/LightEffectController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mDumpDebugLog:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->states:Landroid/util/SparseArray;

    .line 41
    iput v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mMusicEffect:I

    .line 42
    iput v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mPhoneEffect:I

    .line 43
    iput v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mGameEffect:I

    .line 46
    iput-object p1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mHandler:Landroid/os/Handler;

    .line 50
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mActivityManager:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/LightEffectController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/LightEffectController;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/LightEffectController;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/LightEffectController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/LightEffectController;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/server/appmgmt/LightEffectController;Lnubia/os/IAudioPlayCallback;)Lnubia/os/IAudioPlayCallback;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/LightEffectController;
    .param p1, "x1"    # Lnubia/os/IAudioPlayCallback;

    .line 27
    iput-object p1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;

    return-object p1
.end method

.method private chooseBestPkgs(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 254
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 258
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0

    .line 260
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 261
    .local v0, "proceName":Ljava/lang/String;
    :goto_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 262
    sget-object v1, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning process pkgList was null, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", processName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 265
    :cond_3
    iget-object v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 266
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 267
    return-object v5

    .line 265
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 270
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v1, v1, v2

    return-object v1
.end method

.method private getMusicActivePids()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/media/AudioSystem;->getActivePids()[I

    move-result-object v1

    .line 245
    .local v1, "pids":[I
    if-eqz v1, :cond_0

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 247
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private notifyClientAudioChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .local v1, "callback":Lnubia/os/IAudioPlayCallback;
    if-eqz v1, :cond_0

    .line 194
    :try_start_1
    invoke-interface {v1, p1}, Lnubia/os/IAudioPlayCallback;->onAudioPlayChange(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v1    # "callback":Lnubia/os/IAudioPlayCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifyClientSystemAnimationChange(Z)V
    .locals 3
    .param p1, "execute"    # Z

    .line 203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .local v1, "callback":Lnubia/os/IAudioPlayCallback;
    if-eqz v1, :cond_0

    .line 207
    :try_start_1
    invoke-interface {v1, p1}, Lnubia/os/IAudioPlayCallback;->noteAppTransitionAnimation(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v1    # "callback":Lnubia/os/IAudioPlayCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 1

    .line 77
    monitor-enter p0

    .line 78
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mGameEffect:I

    iput v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mPhoneEffect:I

    iput v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mMusicEffect:I

    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePlayAudioState()V
    .locals 10

    .line 216
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/LightEffectController;->getMusicActivePids()Ljava/util/Set;

    move-result-object v0

    .line 217
    .local v0, "playAudioPidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    const-string v2, "Play audio pid was empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/LightEffectController;->notifyClientAudioChange(Ljava/util/List;)V

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "process":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 227
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v2, "playAudioPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 229
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 230
    .local v5, "pid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    invoke-direct {p0, v4}, Lcn/nubia/server/appmgmt/LightEffectController;->chooseBestPkgs(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v7, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pkg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " play audio."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "pid":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 236
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    sget-object v3, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "These "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pids wasn\'t find package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/LightEffectController;->notifyClientAudioChange(Ljava/util/List;)V

    .line 240
    return-void

    .line 224
    .end local v2    # "playAudioPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    sget-object v2, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    const-string v3, "Running process list was empty, shit this never happen!!!."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method private writeAodNode(ZLjava/lang/String;)V
    .locals 8
    .param p1, "isAod"    # Z
    .param p2, "filename"    # Ljava/lang/String;

    .line 274
    sget-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeAodNode isAod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", filename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v0, 0x18

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 276
    const/4 v3, 0x0

    .line 278
    .local v3, "aodMode":I
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    .local v4, "br":Ljava/io/BufferedReader;
    nop

    .line 279
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 281
    if-eqz v5, :cond_0

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    .line 284
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v2, v4}, Lcn/nubia/server/appmgmt/LightEffectController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 284
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    move-object v6, v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    :catchall_1
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    :goto_0
    :try_start_4
    invoke-static {v6, v4}, Lcn/nubia/server/appmgmt/LightEffectController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 284
    .end local v4    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 285
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    const-string v6, "Read aod node exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    if-ne v3, v1, :cond_1

    .line 290
    return-void

    .line 291
    :cond_1
    if-eq v3, v0, :cond_2

    .line 292
    return-void

    .line 297
    .end local v3    # "aodMode":I
    :cond_2
    :try_start_5
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 296
    .local v3, "bw":Ljava/io/BufferedWriter;
    nop

    .line 298
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 300
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 301
    :try_start_7
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/LightEffectController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 304
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 301
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 296
    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 301
    :goto_3
    :try_start_9
    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/LightEffectController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 301
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    const-string v2, "Write aod node exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method public getLightEffectState(I)I
    .locals 4
    .param p1, "type"    # I

    .line 142
    const/4 v0, -0x1

    .line 143
    .local v0, "state":I
    monitor-enter p0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->states:Landroid/util/SparseArray;

    goto :goto_0

    .line 154
    :pswitch_0
    iget v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mMusicEffect:I

    move v0, v1

    .line 155
    goto :goto_1

    .line 150
    :pswitch_1
    iget v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mGameEffect:I

    move v0, v1

    .line 151
    goto :goto_1

    .line 146
    :pswitch_2
    iget v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mPhoneEffect:I

    move v0, v1

    .line 147
    goto :goto_1

    .line 157
    :goto_0
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .line 160
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    sget-object v1, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightEffectState type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0

    .line 160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/LightEffectController;->updatePlayAudioState()V

    goto :goto_0

    .line 183
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    .line 184
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/LightEffectController;->notifyClientSystemAnimationChange(Z)V

    .line 186
    :cond_1
    :goto_0
    return v1
.end method

.method public isLightEffectOpened()Z
    .locals 2

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mMusicEffect:I

    iget v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mPhoneEffect:I

    or-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mGameEffect:I

    or-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 3
    .param p1, "execute"    # Z

    .line 54
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteAppTransitionAnimation execute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    return-void
.end method

.method public notePlayAudioChange(IIII)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "sessionId"    # I
    .param p3, "streamType"    # I
    .param p4, "state"    # I

    .line 61
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notePlayAudioChange what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", streamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/appmgmt/LightEffectController$Data;

    invoke-direct {v2, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/LightEffectController$Data;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    return-void
.end method

.method public registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 4
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 118
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 119
    return v0

    .line 121
    :cond_0
    new-instance v1, Lcn/nubia/server/appmgmt/LightEffectController$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/appmgmt/LightEffectController$Callback;-><init>(Lcn/nubia/server/appmgmt/LightEffectController;Lcn/nubia/server/appmgmt/LightEffectController$1;)V

    .line 123
    .local v1, "callback":Lcn/nubia/server/appmgmt/LightEffectController$Callback;
    :try_start_0
    invoke-interface {p1}, Lnubia/os/IAudioPlayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 124
    iget-object v2, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    iput-object p1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;

    .line 126
    monitor-exit v2

    .line 127
    const/4 v0, 0x1

    return v0

    .line 126
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    return v0
.end method

.method public setLightEffectState(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 83
    sget-object v0, Lcn/nubia/server/appmgmt/LightEffectController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLightEffectState type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    monitor-enter p0

    .line 85
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    :try_start_0
    iput p2, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mMusicEffect:I

    .line 96
    goto :goto_0

    .line 91
    :pswitch_1
    iput p2, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mGameEffect:I

    .line 92
    goto :goto_0

    .line 87
    :pswitch_2
    iput p2, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mPhoneEffect:I

    .line 88
    nop

    .line 101
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->states:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    monitor-exit p0

    .line 103
    const/4 v0, 0x1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 2
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 135
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController;->mIAudioPlayCallback:Lnubia/os/IAudioPlayCallback;

    .line 137
    monitor-exit v0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
