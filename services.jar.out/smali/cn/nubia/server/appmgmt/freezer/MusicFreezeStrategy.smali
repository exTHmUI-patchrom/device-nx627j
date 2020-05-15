.class public Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "MusicFreezeStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_FREEZE:Z = false

.field private static final DOUBLE_CHECK_DURING:J = 0x7530L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIsActivePidsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMusicActive:Z

.field private mMusicWhiteAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "ApplicationFreeze_Music"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    .line 15
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mSpecialAudioList:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mMusicWhiteAppList:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsActivePidsList:Ljava/util/HashSet;

    .line 28
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 30
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 154
    return-void
.end method

.method private getDoubleCheckDuring()J
    .locals 4

    .line 81
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/AppDataManager;->mMusicCheckTime:J

    .line 82
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7530

    :goto_0
    return-wide v2
.end method

.method private getMusicActivePids()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-class v1, Landroid/media/AudioSystem;

    .line 135
    .local v1, "audio":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "getActivePids"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 136
    .local v2, "musicActivepids":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 137
    .local v4, "pids":[I
    if-eqz v4, :cond_0

    .line 138
    nop

    .line 138
    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 139
    aget v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "musicActivepids":Ljava/lang/reflect/Method;
    .end local v3    # "i":I
    .end local v4    # "pids":[I
    :cond_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "not found getActivePids"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private initSpecialAudioList()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getMusicAppList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mSpecialAudioList:Ljava/util/HashSet;

    .line 40
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppDataManager;->getMusicWhiteAppList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mMusicWhiteAppList:Ljava/util/HashSet;

    .line 42
    :cond_0
    return-void
.end method

.method private isAppInFocus(Landroid/media/AudioManager;Ljava/lang/String;)Z
    .locals 7
    .param p1, "am"    # Landroid/media/AudioManager;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 89
    .local v1, "audio":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v2, "isAppInFocus"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    .local v2, "isAppInFocus":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 93
    .end local v2    # "isAppInFocus":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 98
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    if-nez v1, :cond_1

    .line 102
    return v0

    .line 104
    :cond_1
    sget-boolean v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsMusicActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 106
    .local v1, "am":Landroid/media/AudioManager;
    iget-object v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isAppInFocus(Landroid/media/AudioManager;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 107
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isAppInFocus: true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    return v3

    .line 111
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->initSpecialAudioList()V

    .line 112
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mSpecialAudioList:Ljava/util/HashSet;

    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in blackaudiolist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_5
    return v0

    .line 117
    :cond_6
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mMusicWhiteAppList:Ljava/util/HashSet;

    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsActivePidsList:Ljava/util/HashSet;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is in WhiteAudioList and activee"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_7
    return v3

    .line 122
    :cond_8
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_9

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_b

    :cond_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsActivePidsList:Ljava/util/HashSet;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 124
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is in mIsActivePidsList: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsActivePidsList:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_a
    return v3

    .line 128
    :cond_b
    return v0

    .line 99
    .end local v1    # "am":Landroid/media/AudioManager;
    :cond_c
    :goto_0
    return v0
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .line 149
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 6
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 56
    .local v0, "now":J
    iget-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iput-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 59
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->callMeAfter(J)V

    .line 60
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " first check no music wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_0
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " first check music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->isMusicPlay(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    const/4 v2, 0x1

    return v2

    .line 70
    :cond_2
    iput-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    .line 71
    sget-boolean v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sec check music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getDoubleCheckDuring()J

    move-result-wide v2

    iget-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mCheckMusicTime:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->callMeAfter(J)V

    .line 77
    :cond_4
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public initIsActivePids()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->getMusicActivePids()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsActivePidsList:Ljava/util/HashSet;

    .line 34
    return-void
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 12
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public preCheck()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->mIsMusicActive:Z

    .line 47
    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 50
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG:Z

    .line 51
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/MusicFreezeStrategy;->DEBUG_FREEZE:Z

    .line 52
    return-void
.end method
