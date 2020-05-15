.class final Lcom/android/server/am/ActivityGameCallHelper;
.super Ljava/lang/Object;
.source "ActivityGameCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;,
        Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;
    }
.end annotation


# static fields
.field private static final RESTART_STARTINFO_ID:Ljava/lang/String; = "nubia_locked_startinfo_id"

.field private static final TAG:Ljava/lang/String; = "ActivityGameCallHelper"

.field private static final WITHOUT_SMARTCONTAINER:Z

.field private static mRid:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityGameCallHelper;->withoutSmartContainer()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityGameCallHelper;->WITHOUT_SMARTCONTAINER:Z

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityGameCallHelper;->mRid:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityGameCallHelper;->mRestartActivity:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityGameCallHelper;->mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/ActivityGameCallHelper;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private makeId()I
    .locals 1

    .line 113
    sget v0, Lcom/android/server/am/ActivityGameCallHelper;->mRid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityGameCallHelper;->mRid:I

    return v0
.end method

.method private markIntentRestricted(Landroid/content/Intent;Z)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "restricted"    # Z

    .line 198
    :try_start_0
    const-string v0, "com.cmx.cmplus.SmartContainerManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 200
    .local v1, "get":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v3, "smartContainer":Ljava/lang/Object;
    const-string v4, "com.cmx.cmplus.ISmartContainerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 202
    .local v4, "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "markIntentRestricted"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 203
    .local v5, "markIntentRestriced":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "smartContainerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "smartContainer":Ljava/lang/Object;
    .end local v4    # "iSmartContainer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "markIntentRestriced":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static withoutSmartContainer()Z
    .locals 4

    .line 186
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.cmx.cmplus.SmartContainerConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 187
    .local v1, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "WITH_OUT_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 188
    .local v2, "filed":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 190
    .end local v1    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "filed":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public getGameCallStartIntentInfo(Ljava/lang/String;)Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/server/am/ActivityGameCallHelper;->mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;

    .line 93
    .local v0, "r":Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;
    const/4 v1, 0x0

    .line 94
    .local v1, "info":Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, v0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityGameCallHelper;->mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v1
.end method

.method isRestartIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isRestart":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityGameCallHelper;->mRestartActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityGameCallHelper;->mRestartActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityGameCallHelper;->mRestartActivity:Ljava/lang/String;

    .line 109
    :cond_0
    return v0
.end method

.method notifyGameCallStart(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/android/server/am/ActivityGameCallHelper;->mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;

    .line 46
    .local v0, "verifyRecord":Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityGameCallHelper;->restartLockedActivity(Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;)V

    .line 49
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method redirectGameCallActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 20
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Ljava/lang/Object;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "pkgName"    # Ljava/lang/String;

    .line 81
    new-instance v19, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;-><init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/Object;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v6, v19

    .line 86
    .local v6, "restartInfo":Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;
    new-instance v7, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityGameCallHelper;->makeId()I

    move-result v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v4, p19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityGameCallHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;)V

    .line 88
    .local v0, "r":Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityGameCallHelper;->mGameCallRecords:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v3, p19

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method restartLockedActivity(Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;

    .line 53
    iget-object v0, p1, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "restartIntent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityGameCallHelper;->mRestartActivity:Ljava/lang/String;

    .line 60
    :cond_0
    const-string/jumbo v2, "nubia_locked_startinfo_id"

    iget v3, p1, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    sget-boolean v2, Lcom/android/server/am/ActivityGameCallHelper;->WITHOUT_SMARTCONTAINER:Z

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/server/am/ActivityGameCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityGameCallHelper;->markIntentRestricted(Landroid/content/Intent;Z)V

    .line 67
    iget-object v2, p0, Lcom/android/server/am/ActivityGameCallHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/server/am/ActivityGameCallHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;

    iget v4, v4, Lcom/android/server/am/ActivityGameCallHelper$StartIntentInfo;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    .end local v0    # "restartIntent":Landroid/content/Intent;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return-void
.end method
