.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$OnVmViolationListener;,
        Landroid/os/StrictMode$OnThreadViolationListener;,
        Landroid/os/StrictMode$ViolationLogger;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0x3f

.field private static final ALL_VM_DETECT_BITS:I = -0x3fff0100

.field public static final CLEARTEXT_DETECTED_MSG:Ljava/lang/String; = "Detected cleartext network traffic from UID "

.field private static final CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_RESOURCE_MISMATCH:I = 0x10

.field public static final DETECT_UNBUFFERED_IO:I = 0x20

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x400

.field public static final DETECT_VM_CLEARTEXT_NETWORK:I = 0x4000

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x200

.field public static final DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION:I = 0x8000

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x100

.field public static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x2000

.field public static final DETECT_VM_INSTANCE_LEAKS:I = 0x800

.field public static final DETECT_VM_NON_SDK_API_USAGE:I = 0x40000000

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x1000

.field public static final DETECT_VM_UNTAGGED_SOCKET:I = -0x80000000

.field private static final DISABLE:Z = false

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final MIN_VM_INTERVAL_MS:J = 0x3e8L

.field public static final NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final NETWORK_POLICY_LOG:I = 0x1

.field public static final NETWORK_POLICY_REJECT:I = 0x2

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final PENALTY_DEATH:I = 0x40000

.field public static final PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x2000000

.field public static final PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x4000000

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x1000000

.field public static final PENALTY_DIALOG:I = 0x20000

.field public static final PENALTY_DROPBOX:I = 0x200000

.field public static final PENALTY_FLASH:I = 0x100000

.field public static final PENALTY_GATHER:I = 0x400000

.field public static final PENALTY_LOG:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_HANDLER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_PENALTY_MASK:I = 0x1770000

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0x6250000

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "StrictMode.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sLogger:Landroid/os/StrictMode$ViolationLogger;

.field private static final sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadViolationExecutor:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadViolationListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$OnThreadViolationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 143
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 363
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 373
    sget-object v0, Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;->INSTANCE:Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;

    sput-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 384
    sget-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    sput-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 386
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 388
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 421
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    sget-object v0, Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;->INSTANCE:Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;

    sput-object v0, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    .line 1077
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1404
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1413
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    .line 1421
    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    .line 1835
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 1836
    sput-boolean v1, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1837
    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2033
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 2236
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 2259
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 2267
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 2383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/os/StrictMode$ViolationInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/StrictMode$ViolationInfo;

    .line 141
    invoke-static {p0}, Landroid/os/StrictMode;->shouldSkipLogViolation(Landroid/os/StrictMode$ViolationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Landroid/os/StrictMode$ViolationLogger;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    return-object v0
.end method

.method static synthetic access$1400(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/os/StrictMode$ViolationInfo;

    .line 141
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1500(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/os/StrictMode$ViolationInfo;

    .line 141
    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    .line 141
    invoke-static {}, Landroid/os/StrictMode;->allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()J
    .locals 2

    .line 141
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic access$1902(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 141
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic access$2500()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 141
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Landroid/util/Singleton;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/ThreadLocal;
    .locals 1

    .line 141
    sget-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 141
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 5

    .line 1198
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1199
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1200
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1201
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    .line 1198
    return-object v0
.end method

.method public static allowThreadDiskReadsMask()I
    .locals 2

    .line 1206
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1207
    .local v0, "oldPolicyMask":I
    and-int/lit8 v1, v0, -0x3

    .line 1208
    .local v1, "newPolicyMask":I
    if-eq v1, v0, :cond_0

    .line 1209
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1211
    :cond_0
    return v0
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 5

    .line 1174
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1175
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1176
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1177
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    .line 1174
    return-object v0
.end method

.method public static allowThreadDiskWritesMask()I
    .locals 2

    .line 1182
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1183
    .local v0, "oldPolicyMask":I
    and-int/lit8 v1, v0, -0x4

    .line 1184
    .local v1, "newPolicyMask":I
    if-eq v1, v0, :cond_0

    .line 1185
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1187
    :cond_0
    return v0
.end method

.method private static allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;
    .locals 2

    .line 1215
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1216
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1217
    return-object v0
.end method

.method private static allowVmViolations()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    .line 1221
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 1222
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    sget-object v1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1223
    return-object v0
.end method

.method static clearGatheredViolations()V
    .locals 2

    .line 1806
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1807
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .locals 11

    .line 1811
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 1812
    .local v0, "policy":Landroid/os/StrictMode$VmPolicy;
    iget-object v1, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1813
    .local v1, "policySize":I
    if-nez v1, :cond_0

    .line 1814
    return-void

    .line 1817
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1818
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1819
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1823
    iget-object v2, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    .line 1824
    .local v2, "classes":[Ljava/lang/Class;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v4

    .line 1825
    .local v4, "instanceCounts":[J
    nop

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 1826
    aget-object v5, v2, v3

    .line 1827
    .local v5, "klass":Ljava/lang/Class;
    iget-object v6, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1828
    .local v6, "limit":I
    aget-wide v7, v4, v3

    .line 1829
    .local v7, "instances":J
    int-to-long v9, v6

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 1830
    new-instance v9, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v9, v5, v7, v8, v6}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v9}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1825
    .end local v5    # "klass":Ljava/lang/Class;
    .end local v6    # "limit":I
    .end local v7    # "instances":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1833
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 6
    .param p0, "klass"    # Ljava/lang/Class;

    .line 2414
    if-nez p0, :cond_0

    .line 2415
    return-void

    .line 2419
    :cond_0
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2420
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    .line 2421
    monitor-exit v0

    return-void

    .line 2424
    :cond_1
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2425
    .local v1, "expected":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    .line 2426
    .local v3, "newExpected":I
    :goto_1
    if-nez v3, :cond_4

    .line 2427
    sget-object v4, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2429
    :cond_4
    sget-object v4, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 2435
    .end local v1    # "expected":Ljava/lang/Integer;
    .local v3, "limit":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 2439
    .local v0, "actual":I
    if-gt v0, v3, :cond_5

    .line 2440
    return-void

    .line 2451
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2452
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2453
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2455
    invoke-static {p0, v2}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v1

    .line 2456
    .local v1, "instances":J
    int-to-long v4, v3

    cmp-long v4, v1, v4

    if-lez v4, :cond_6

    .line 2457
    new-instance v4, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v4, p0, v1, v2, v3}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v4}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2459
    :cond_6
    return-void

    .line 2435
    .end local v0    # "actual":I
    .end local v1    # "instances":J
    .end local v3    # "limit":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static disableDeathOnFileUriExposure()V
    .locals 7

    .line 1368
    new-instance v6, Landroid/os/StrictMode$VmPolicy;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const v1, -0x4002001

    and-int/2addr v1, v0

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    sput-object v6, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1376
    return-void
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1745
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1746
    .local v0, "outstanding":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1749
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1750
    return-void

    .line 1753
    :cond_0
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_1

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/os/-$$Lambda$StrictMode$yZJXPvy2veRNA-xL_SWdXzX_OLg;

    invoke-direct {v2, p0, p1}, Landroid/os/-$$Lambda$StrictMode$yZJXPvy2veRNA-xL_SWdXzX_OLg;-><init>(ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1760
    return-void
.end method

.method public static enableDeathOnFileUriExposure()V
    .locals 7

    .line 1351
    new-instance v6, Landroid/os/StrictMode$VmPolicy;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    or-int/lit16 v0, v0, 0x2000

    const/high16 v1, 0x4000000

    or-int/2addr v1, v0

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    sput-object v6, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1359
    return-void
.end method

.method public static enableDefaults()V
    .locals 1

    .line 1921
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1922
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1923
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 2288
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 2289
    sget-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    return-object v0

    .line 2291
    :cond_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2294
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$ThreadSpanState;

    .line 2295
    .local v0, "state":Landroid/os/StrictMode$ThreadSpanState;
    const/4 v1, 0x0

    .line 2296
    .local v1, "span":Landroid/os/StrictMode$Span;
    monitor-enter v0

    .line 2297
    :try_start_0
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_1

    .line 2298
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    move-object v1, v2

    .line 2299
    invoke-static {v1}, Landroid/os/StrictMode$Span;->access$2100(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2300
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    goto :goto_0

    .line 2303
    :cond_1
    new-instance v2, Landroid/os/StrictMode$Span;

    invoke-direct {v2, v0}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    move-object v1, v2

    .line 2305
    :goto_0
    invoke-static {v1, p0}, Landroid/os/StrictMode$Span;->access$2202(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 2306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/os/StrictMode$Span;->access$2302(Landroid/os/StrictMode$Span;J)J

    .line 2307
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2308
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->access$2402(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2309
    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2310
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2311
    invoke-static {v1}, Landroid/os/StrictMode$Span;->access$2100(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2312
    invoke-static {v1}, Landroid/os/StrictMode$Span;->access$2100(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/StrictMode$Span;->access$2402(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2314
    :cond_2
    sget-boolean v2, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v2, :cond_3

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Span enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_3
    monitor-exit v0

    .line 2316
    return-object v1

    .line 2315
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2292
    .end local v0    # "state":Landroid/os/StrictMode$ThreadSpanState;
    .end local v1    # "span":Landroid/os/StrictMode$Span;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must be non-null and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 5

    .line 1158
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1159
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1160
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1161
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    .line 1158
    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    .line 1149
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    .line 1908
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 1909
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v0

    return-object v1

    .line 1910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1764
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1770
    .local v0, "oldMask":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1772
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1773
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_0

    .line 1774
    const-string v2, "StrictMode"

    const-string v3, "No activity manager; failed to Dropbox violation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1776
    :cond_0
    nop

    .line 1777
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v2

    .line 1776
    invoke-interface {v1, v2, p0, p1}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "am":Landroid/app/IActivityManager;
    goto :goto_0

    .line 1786
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1779
    :catch_0
    move-exception v1

    .line 1780
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_1

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1783
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "StrictMode"

    const-string v3, "RemoteException handling StrictMode violation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1786
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1787
    nop

    .line 1788
    return-void

    .line 1786
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method static hasGatheredViolations()Z
    .locals 1

    .line 1798
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    .line 2397
    if-nez p0, :cond_0

    .line 2398
    return-void

    .line 2401
    :cond_0
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2402
    :try_start_0
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    .line 2403
    monitor-exit v0

    return-void

    .line 2406
    :cond_1
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2407
    .local v1, "expected":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2408
    .local v2, "newExpected":Ljava/lang/Integer;
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    .end local v1    # "expected":Ljava/lang/Integer;
    .end local v2    # "newExpected":Ljava/lang/Integer;
    monitor-exit v0

    .line 2410
    return-void

    .line 2409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1270
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1272
    .local v0, "builder":Landroid/os/StrictMode$ThreadPolicy$Builder;
    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    .line 1275
    .local v1, "targetSdkVersion":I
    :goto_0
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 1276
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1277
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1280
    :cond_1
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_4

    const-string/jumbo v2, "persist.sys.strictmode.disable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v2, :cond_3

    .line 1284
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1285
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1286
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1287
    const-string/jumbo v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1289
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1291
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    goto :goto_1

    .line 1294
    :cond_3
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_4

    .line 1296
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1297
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1298
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1299
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1300
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1304
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1305
    return-void
.end method

.method public static initVmDefaults(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1313
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 1315
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    .line 1318
    .local v1, "targetSdkVersion":I
    :goto_0
    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 1319
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1320
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1323
    :cond_1
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_4

    const-string/jumbo v2, "persist.sys.strictmode.disable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1325
    :cond_2
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v2, :cond_3

    .line 1328
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1329
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1330
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1331
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    goto :goto_1

    .line 1333
    :cond_3
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_4

    .line 1335
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1336
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1337
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1338
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1342
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1343
    return-void
.end method

.method public static isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1239
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1242
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1244
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.chrome"

    .line 1245
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1252
    return v2

    .line 1255
    :cond_2
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android."

    .line 1256
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android."

    .line 1257
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1258
    :cond_3
    return v0

    .line 1246
    :cond_4
    :goto_0
    return v2

    .line 1261
    :cond_5
    return v2

    .line 1241
    :cond_6
    :goto_1
    return v0
.end method

.method static synthetic lambda$dropboxViolationAsync$2(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1756
    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1757
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 1758
    .local v0, "outstandingInner":I
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_0

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropbox complete; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_0
    return-void
.end method

.method static synthetic lambda$onVmPolicyViolation$3(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V
    .locals 2
    .param p0, "listener"    # Landroid/os/StrictMode$OnVmViolationListener;
    .param p1, "violation"    # Landroid/os/strictmode/Violation;

    .line 2103
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 2105
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnVmViolationListener;->onVmViolation(Landroid/os/strictmode/Violation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2108
    nop

    .line 2109
    return-void

    .line 2107
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw v1
.end method

.method static synthetic lambda$static$0(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 376
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode policy violation; ~duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v0, "StrictMode policy violation:"

    .line 381
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_0
    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 428
    new-instance v0, Landroid/os/strictmode/NonSdkApiUsedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/NonSdkApiUsedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public static noteDiskRead()V
    .locals 2

    .line 2364
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2365
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2367
    return-void

    .line 2369
    :cond_0
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 2370
    return-void
.end method

.method public static noteDiskWrite()V
    .locals 2

    .line 2374
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2375
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2377
    return-void

    .line 2379
    :cond_0
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 2380
    return-void
.end method

.method public static noteResourceMismatch(Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;

    .line 2344
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2345
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2347
    return-void

    .line 2349
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    .line 2350
    return-void
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2327
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2328
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2330
    return-void

    .line 2332
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    .line 2333
    return-void
.end method

.method public static noteUnbufferedIO()V
    .locals 2

    .line 2354
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2355
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2357
    return-void

    .line 2359
    :cond_0
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onUnbufferedIO()V

    .line 2360
    return-void
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0
    .param p0, "newPolicy"    # I

    .line 2161
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 2162
    return-void
.end method

.method public static onCleartextNetworkDetected([B)V
    .locals 6
    .param p0, "firstPacket"    # [B

    .line 2001
    const/4 v0, 0x0

    .line 2002
    .local v0, "rawAddr":[B
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 2003
    array-length v2, p0

    const/16 v3, 0x14

    const/16 v4, 0x10

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    .line 2005
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2006
    invoke-static {p0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 2007
    :cond_0
    array-length v2, p0

    const/16 v3, 0x28

    if-lt v2, v3, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x60

    if-ne v2, v3, :cond_1

    .line 2009
    new-array v0, v4, [B

    .line 2010
    const/16 v2, 0x18

    invoke-static {p0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2014
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2015
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected cleartext network traffic from UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2016
    .local v3, "msg":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2018
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 2020
    goto :goto_1

    .line 2019
    :catch_0
    move-exception v4

    .line 2022
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2023
    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v4, v4, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    nop

    .line 2024
    .local v1, "forceDeath":Z
    :cond_3
    new-instance v4, Landroid/os/strictmode/CleartextNetworkViolation;

    invoke-direct {v4, v3}, Landroid/os/strictmode/CleartextNetworkViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2025
    return-void
.end method

.method public static onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "location"    # Ljava/lang/String;

    .line 1992
    new-instance v0, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1993
    return-void
.end method

.method public static onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "location"    # Ljava/lang/String;

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " exposed beyond app through "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1986
    new-instance v1, Landroid/os/strictmode/FileUriExposedViolation;

    invoke-direct {v1, v0}, Landroid/os/strictmode/FileUriExposedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1988
    return-void

    .line 1984
    :cond_0
    new-instance v1, Landroid/os/FileUriExposedException;

    invoke-direct {v1, v0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 1972
    new-instance v0, Landroid/os/strictmode/IntentReceiverLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/IntentReceiverLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1973
    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 1977
    new-instance v0, Landroid/os/strictmode/ServiceConnectionLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/ServiceConnectionLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1978
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .line 1962
    new-instance v0, Landroid/os/strictmode/SqliteObjectLeakedViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/SqliteObjectLeakedViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1963
    return-void
.end method

.method public static onUntaggedSocket()V
    .locals 1

    .line 2029
    new-instance v0, Landroid/os/strictmode/UntaggedSocketViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UntaggedSocketViolation;-><init>()V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2030
    return-void
.end method

.method public static onVmPolicyViolation(Landroid/os/strictmode/Violation;)V
    .locals 1
    .param p0, "originStack"    # Landroid/os/strictmode/Violation;

    .line 2037
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2038
    return-void
.end method

.method public static onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V
    .locals 17
    .param p0, "violation"    # Landroid/os/strictmode/Violation;
    .param p1, "forceDeath"    # Z

    move-object/from16 v1, p0

    .line 2042
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    move v5, v0

    .line 2043
    .local v5, "penaltyDropbox":Z
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x40000

    and-int/2addr v0, v6

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    move v7, v0

    .line 2044
    .local v7, "penaltyDeath":Z
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v8, 0x10000

    and-int/2addr v0, v8

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 2045
    .local v3, "penaltyLog":Z
    :goto_3
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    sget-object v8, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v8, v8, Landroid/os/StrictMode$VmPolicy;->mask:I

    invoke-direct {v0, v1, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    move-object v8, v0

    .line 2048
    .local v8, "info":Landroid/os/StrictMode$ViolationInfo;
    iput v4, v8, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2049
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2050
    iput-object v0, v8, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2052
    invoke-virtual {v8}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2053
    .local v4, "fingerprint":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2055
    .local v9, "now":J
    const-wide v11, 0x7fffffffffffffffL

    .line 2056
    .local v11, "timeSinceLastViolationMillis":J
    sget-object v13, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v13

    .line 2057
    :try_start_0
    sget-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2058
    sget-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2059
    .local v14, "lastViolationTime":J
    sub-long v11, v9, v14

    .line 2061
    .end local v14    # "lastViolationTime":J
    :cond_4
    const-wide/16 v14, 0x3e8

    cmp-long v0, v11, v14

    if-lez v0, :cond_5

    .line 2062
    sget-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_5
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    cmp-long v0, v11, v14

    if-gtz v0, :cond_6

    .line 2067
    return-void

    .line 2071
    :cond_6
    if-eqz v3, :cond_7

    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    if-eqz v0, :cond_7

    cmp-long v0, v11, v14

    if-lez v0, :cond_7

    invoke-static {v8}, Landroid/os/StrictMode;->shouldSkipLogViolation(Landroid/os/StrictMode$ViolationInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2072
    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    invoke-interface {v0, v8}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2076
    :cond_7
    const v0, -0x3fff0100

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/2addr v0, v2

    const/high16 v2, 0x200000

    or-int/2addr v2, v0

    .line 2078
    .local v2, "violationMaskSubset":I
    if-eqz v5, :cond_9

    .line 2079
    if-eqz v7, :cond_8

    .line 2080
    invoke-static {v2, v8}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_4

    .line 2085
    :cond_8
    invoke-static {v2, v8}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 2089
    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 2090
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2091
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2092
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2097
    :cond_a
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v0, v0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v0, v0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_b

    .line 2098
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v0, v0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    move-object v13, v0

    .line 2100
    .local v13, "listener":Landroid/os/StrictMode$OnVmViolationListener;
    :try_start_1
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v0, v0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v14, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;

    invoke-direct {v14, v13, v1}, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;-><init>(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v0, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2112
    goto :goto_5

    .line 2110
    :catch_0
    move-exception v0

    .line 2111
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v14, "StrictMode"

    const-string v15, "VmPolicy penaltyCallback failed"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v13    # "listener":Landroid/os/StrictMode$OnVmViolationListener;
    :cond_b
    :goto_5
    return-void

    .line 2064
    .end local v2    # "violationMaskSubset":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 1967
    new-instance v0, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1968
    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1389
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string/jumbo v1, "policy="

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1392
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1393
    .local v1, "spaceIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1394
    return v0

    .line 1396
    :cond_1
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "policyString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 1399
    :catch_0
    move-exception v3

    .line 1400
    .local v3, "e":Ljava/lang/NumberFormatException;
    return v0

    .line 1390
    .end local v1    # "spaceIndex":I
    .end local v2    # "policyString":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return v0
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 10
    .param p0, "p"    # Landroid/os/Parcel;

    .line 2139
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2140
    .local v0, "localCallSite":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 2141
    .local v1, "policyMask":I
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2143
    .local v2, "currentlyGathering":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2144
    .local v5, "size":I
    move v6, v3

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 2145
    new-instance v7, Landroid/os/StrictMode$ViolationInfo;

    if-nez v2, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    invoke-direct {v7, p0, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2146
    .local v7, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {v7, v0}, Landroid/os/StrictMode$ViolationInfo;->addLocalStack(Ljava/lang/Throwable;)V

    .line 2147
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v8

    .line 2148
    .local v8, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v9, v8, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v9, :cond_2

    .line 2149
    move-object v9, v8

    check-cast v9, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v9, v7}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2144
    .end local v7    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v8    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2152
    .end local v6    # "i":I
    :cond_3
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 2
    .param p0, "policyMask"    # I

    .line 1119
    if-nez p0, :cond_0

    .line 1120
    sget-object v0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1121
    return-void

    .line 1123
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1125
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v1, :cond_1

    .line 1126
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .local v1, "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    goto :goto_0

    .line 1128
    .end local v1    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :cond_1
    sget-object v1, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 1129
    .restart local v1    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1131
    :goto_0
    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    .line 1132
    return-void
.end method

.method private static setCloseGuardEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 1136
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 1139
    :cond_0
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 1140
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 2
    .param p0, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 1099
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1100
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1101
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1102
    return-void
.end method

.method public static setThreadPolicyMask(I)V
    .locals 0
    .param p0, "policyMask"    # I

    .line 1111
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1114
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 1115
    return-void
.end method

.method public static setViolationLogger(Landroid/os/StrictMode$ViolationLogger;)V
    .locals 0
    .param p0, "listener"    # Landroid/os/StrictMode$ViolationLogger;

    .line 411
    if-nez p0, :cond_0

    .line 412
    sget-object p0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 414
    :cond_0
    sput-object p0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 415
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 8
    .param p0, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .line 1856
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 1857
    :try_start_0
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1858
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v1

    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1860
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1861
    .local v1, "looper":Landroid/os/Looper;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1862
    iget-object v4, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 1863
    .local v4, "mq":Landroid/os/MessageQueue;
    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x6250000

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    sget-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v5, :cond_2

    .line 1868
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1869
    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1869
    .end local v4    # "mq":Landroid/os/MessageQueue;
    goto :goto_1

    .line 1865
    .restart local v4    # "mq":Landroid/os/MessageQueue;
    :cond_1
    :goto_0
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1866
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1873
    .end local v4    # "mq":Landroid/os/MessageQueue;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 1874
    .local v4, "networkPolicy":I
    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_5

    .line 1875
    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1879
    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    .line 1877
    :cond_4
    :goto_2
    const/4 v4, 0x2

    .line 1883
    :cond_5
    :goto_3
    const-string/jumbo v5, "network_management"

    .line 1885
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1884
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    .local v5, "netd":Landroid/os/INetworkManagementService;
    if-eqz v5, :cond_6

    .line 1888
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1889
    :catch_0
    move-exception v6

    .line 1890
    :goto_4
    goto :goto_5

    .line 1891
    :cond_6
    if-eqz v4, :cond_7

    .line 1892
    :try_start_2
    const-string v6, "StrictMode"

    const-string v7, "Dropping requested network policy due to missing service!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_7
    :goto_5
    sget-object v6, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v6, v6, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    .line 1897
    sget-object v3, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 1898
    invoke-static {v2}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    goto :goto_6

    .line 1900
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 1901
    invoke-static {v3}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    .line 1903
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v4    # "networkPolicy":I
    .end local v5    # "netd":Landroid/os/INetworkManagementService;
    :goto_6
    monitor-exit v0

    .line 1904
    return-void

    .line 1903
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static shouldSkipLogViolation(Landroid/os/StrictMode$ViolationInfo;)Z
    .locals 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 2838
    const-string v0, "1"

    const-string/jumbo v1, "sys.nubia.cts.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2839
    return v1

    .line 2841
    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_4

    invoke-static {p0}, Landroid/os/StrictMode$ViolationInfo;->access$2600(Landroid/os/StrictMode$ViolationInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 2845
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode$ViolationInfo;->access$2600(Landroid/os/StrictMode$ViolationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2846
    .local v2, "stackTrace":Ljava/lang/String;
    const-string v3, "java.io.File.exists"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.lastModified"

    .line 2847
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.server.pm.PMSFunc.queryIntentActivitiesHook"

    .line 2848
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.server.pm.CMIntentResolver.queryIntent"

    .line 2849
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.isDirectory"

    .line 2850
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.isFile"

    .line 2851
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.app.Activity.startActivity"

    .line 2852
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.app.ContextImpl.getSharedPreferences"

    .line 2853
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.util.BoostFramework"

    .line 2854
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.app.SharedPreferencesImpl.get"

    .line 2855
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.app.SharedPreferencesImpl.contains"

    .line 2856
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.app.SharedPreferencesImpl.edit"

    .line 2857
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.getTotalSpace"

    .line 2858
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.getCanonicalPath"

    .line 2859
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.canRead"

    .line 2860
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.canWrite"

    .line 2861
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.length"

    .line 2862
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "java.io.File.getUsableSpace"

    .line 2863
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "libcore.io.BlockGuardOs.stat"

    .line 2864
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "libcore.io.BlockGuardOs.mkdir"

    .line 2865
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.os.StatFs"

    .line 2866
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2846
    :cond_2
    move v0, v1

    goto :goto_1

    .line 2866
    :cond_3
    :goto_0
    nop

    .line 2846
    :goto_1
    return v0

    .line 2842
    .end local v2    # "stackTrace":Ljava/lang/String;
    :cond_4
    :goto_2
    return v0
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    .line 1430
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "instance"    # Ljava/lang/Object;

    .line 2392
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmCleartextNetworkEnabled()Z
    .locals 1

    .line 1947
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .locals 1

    .line 1932
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmContentUriWithoutPermissionEnabled()Z
    .locals 2

    .line 1952
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmFileUriExposureEnabled()Z
    .locals 1

    .line 1942
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .locals 1

    .line 1937
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 1

    .line 1927
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vmUntaggedSocketEnabled()Z
    .locals 2

    .line 1957
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p0, "p"    # Landroid/os/Parcel;

    .line 2118
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2119
    .local v0, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2125
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2126
    .local v2, "size":I
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2128
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v4, p0, v1}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2131
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    sget-object v1, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2132
    return-void
.end method
