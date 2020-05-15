.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/BoostFramework$WorkloadType;,
        Landroid/util/BoostFramework$Draw;,
        Landroid/util/BoostFramework$Launch;,
        Landroid/util/BoostFramework$Scroll;
    }
.end annotation


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field public static final UXE_EVENT_BINDAPP:I = 0x2

.field public static final UXE_EVENT_DISPLAYED_ACT:I = 0x3

.field public static final UXE_EVENT_GAME:I = 0x5

.field public static final UXE_EVENT_KILL:I = 0x4

.field public static final UXE_EVENT_PKG_INSTALL:I = 0x8

.field public static final UXE_EVENT_PKG_UNINSTALL:I = 0x7

.field public static final UXE_EVENT_SUB_LAUNCH:I = 0x6

.field public static final UXE_TRIGGER:I = 0x1

.field private static final UXPERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.UxPerformance"

.field private static final UXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/UxPerformance.jar"

.field public static final VENDOR_FEEDBACK_LAUNCH_END_POINT:I = 0x1602

.field public static final VENDOR_FEEDBACK_WORKLOAD_TYPE:I = 0x1601

.field public static final VENDOR_HINT_ACTIVITY_BOOST:I = 0x1084

.field public static final VENDOR_HINT_ANIM_BOOST:I = 0x1083

.field public static final VENDOR_HINT_APP_UPDATE:I = 0x1092

.field public static final VENDOR_HINT_DRAG_BOOST:I = 0x1087

.field public static final VENDOR_HINT_FIRST_DRAW:I = 0x1042

.field public static final VENDOR_HINT_FIRST_LAUNCH_BOOST:I = 0x1081

.field public static final VENDOR_HINT_KILL:I = 0x1091

.field public static final VENDOR_HINT_MTP_BOOST:I = 0x1086

.field public static final VENDOR_HINT_PACKAGE_INSTALL_BOOST:I = 0x1088

.field public static final VENDOR_HINT_ROTATION_ANIM_BOOST:I = 0x1090

.field public static final VENDOR_HINT_ROTATION_LATENCY_BOOST:I = 0x1089

.field public static final VENDOR_HINT_SCROLL_BOOST:I = 0x1080

.field public static final VENDOR_HINT_SUBSEQ_LAUNCH_BOOST:I = 0x1082

.field public static final VENDOR_HINT_TAP_EVENT:I = 0x1043

.field public static final VENDOR_HINT_TOUCH_BOOST:I = 0x1085

.field private static sAcquireFunc:Ljava/lang/reflect/Method;

.field private static sFeedbackFunc:Ljava/lang/reflect/Method;

.field private static sIOPStart:Ljava/lang/reflect/Method;

.field private static sIOPStop:Ljava/lang/reflect/Method;

.field private static sIopv2:I

.field private static sIsLoaded:Z

.field private static sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sPerfHintFunc:Ljava/lang/reflect/Method;

.field private static sReleaseFunc:Ljava/lang/reflect/Method;

.field private static sReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static sUXEngineEvents:Ljava/lang/reflect/Method;

.field private static sUXEngineTrigger:Ljava/lang/reflect/Method;

.field private static sUxIOPStart:Ljava/lang/reflect/Method;

.field private static sUxIsLoaded:Z

.field private static sUxPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mPerf:Ljava/lang/Object;

.field private mUxPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->sIsLoaded:Z

    .line 51
    const/4 v1, 0x0

    sput-object v1, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 52
    sput-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 53
    sput-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 54
    sput-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 55
    sput-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 56
    sput-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 58
    const/4 v2, -0x1

    sput v2, Landroid/util/BoostFramework;->sIopv2:I

    .line 59
    sput-object v1, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 60
    sput-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    .line 61
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 62
    sput-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    .line 64
    sput-boolean v0, Landroid/util/BoostFramework;->sUxIsLoaded:Z

    .line 65
    sput-object v1, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 66
    sput-object v1, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 135
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 138
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 141
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BoostFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFramework() : Exception_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 152
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 155
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 157
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 160
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BoostFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFramework() : Exception_3 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .param p1, "isUntrustedDomain"    # Z

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    .line 171
    invoke-direct {p0}, Landroid/util/BoostFramework;->initFunctions()V

    .line 174
    :try_start_0
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 176
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_0

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 179
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_1
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BoostFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFramework() : Exception_5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initFunctions()V
    .locals 9

    .line 189
    const-class v0, Landroid/util/BoostFramework;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-boolean v1, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "com.qualcomm.qti.Performance"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    .line 194
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    const-class v6, [I

    aput-object v6, v5, v3

    .line 195
    .local v5, "argClasses":[Ljava/lang/Class;
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfLockAcquire"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 197
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    move-object v5, v7

    .line 198
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfHint"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    .line 200
    new-array v7, v4, [Ljava/lang/Class;

    move-object v5, v7

    .line 201
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockRelease"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 203
    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    move-object v5, v7

    .line 204
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfLockReleaseHandler"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 206
    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    move-object v5, v7

    .line 207
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfGetFeedback"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    .line 209
    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    move-object v5, v7

    .line 210
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfIOPrefetchStart"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    .line 212
    new-array v7, v4, [Ljava/lang/Class;

    move-object v5, v7

    .line 213
    sget-object v7, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v8, "perfIOPrefetchStop"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    move-object v5, v6

    .line 217
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_events"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    .line 220
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    move-object v5, v6

    .line 221
    sget-object v6, Landroid/util/BoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v7, "perfUXEngine_trigger"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v6

    .line 224
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "BoostFramework"

    const-string v8, "BoostFramework() : Exception_4 = PreferredApps not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    sput-boolean v3, Landroid/util/BoostFramework;->sIsLoaded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    .end local v5    # "argClasses":[Ljava/lang/Class;
    goto :goto_1

    .line 229
    :catch_1
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BoostFramework() : Exception_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v5, "com.qualcomm.qti.UxPerformance"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    .line 237
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 238
    .local v1, "argUxClasses":[Ljava/lang/Class;
    sget-object v2, Landroid/util/BoostFramework;->sUxPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfIOPrefetchStart"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    .line 240
    sput-boolean v3, Landroid/util/BoostFramework;->sUxIsLoaded:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    .end local v1    # "argUxClasses":[Ljava/lang/Class;
    goto :goto_2

    .line 242
    :catch_2
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFramework() Ux Perf: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method


# virtual methods
.method public perfGetFeedback(ILjava/lang/String;)I
    .locals 6
    .param p1, "req"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;

    .line 317
    const/4 v0, -0x1

    .line 319
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Landroid/util/BoostFramework;->sFeedbackFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 325
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfHint(ILjava/lang/String;)I
    .locals 1
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;

    .line 293
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;I)I
    .locals 1
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData"    # I

    .line 298
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public perfHint(ILjava/lang/String;II)I
    .locals 6
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .line 303
    const/4 v0, -0x1

    .line 305
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 306
    sget-object v1, Landroid/util/BoostFramework;->sPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 311
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 331
    const/4 v0, -0x1

    .line 333
    .local v0, "ret":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    sget-object v5, Landroid/util/BoostFramework;->sIOPStart:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object p2, v7, v2

    aput-object p3, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 334
    .local v5, "retVal":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 337
    .end local v5    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 335
    :catch_0
    move-exception v5

    .line 336
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v5, Landroid/util/BoostFramework;->sUxIOPStart:Ljava/lang/reflect/Method;

    iget-object v6, p0, Landroid/util/BoostFramework;->mUxPerf:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 340
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 343
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ux Perf Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public perfIOPrefetchStop()I
    .locals 5

    .line 350
    const/4 v0, -0x1

    .line 352
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sIOPStop:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 353
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 356
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 6
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 251
    const/4 v0, -0x1

    .line 253
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 254
    sget-object v1, Landroid/util/BoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 259
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfLockRelease()I
    .locals 5

    .line 265
    const/4 v0, -0x1

    .line 267
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Landroid/util/BoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 273
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfLockReleaseHandler(I)I
    .locals 6
    .param p1, "handle"    # I

    .line 279
    const/4 v0, -0x1

    .line 281
    .local v0, "ret":I
    :try_start_0
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Landroid/util/BoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 283
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 287
    .end local v1    # "retVal":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public perfUXEngine_events(IILjava/lang/String;I)I
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I

    .line 362
    const/4 v0, -0x1

    .line 363
    .local v0, "ret":I
    sget v1, Landroid/util/BoostFramework;->sIopv2:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 364
    const-string/jumbo v1, "vendor.iop.enable_uxe"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/util/BoostFramework;->sIopv2:I

    .line 367
    :cond_0
    :try_start_0
    sget v1, Landroid/util/BoostFramework;->sIopv2:I

    if-eqz v1, :cond_2

    sget-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_0

    .line 370
    :cond_1
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineEvents:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object p3, v4, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 374
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1

    .line 368
    :cond_2
    :goto_0
    return v0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public perfUXEngine_trigger(I)Ljava/lang/String;
    .locals 6
    .param p1, "opcode"    # I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "ret":Ljava/lang/String;
    sget v1, Landroid/util/BoostFramework;->sIopv2:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 383
    const-string/jumbo v1, "vendor.iop.enable_uxe"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/util/BoostFramework;->sIopv2:I

    .line 386
    :cond_0
    :try_start_0
    sget v1, Landroid/util/BoostFramework;->sIopv2:I

    if-eqz v1, :cond_2

    sget-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    sget-object v1, Landroid/util/BoostFramework;->sUXEngineTrigger:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 390
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 393
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1

    .line 387
    :cond_2
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
