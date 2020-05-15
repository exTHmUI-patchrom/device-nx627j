.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_JDWP:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final DISABLE_VERIFIER:I = 0x200

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field public static final ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final PROFILE_SYSTEM_SERVER:I = 0x4000

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    nop

    .line 70
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    .line 85
    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 5
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 255
    .local v2, "arg":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    const-string v4, "\'\\\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method private static callPostForkChildHooks(IZZLjava/lang/String;)V
    .locals 1
    .param p0, "runtimeFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "isZygote"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    .line 217
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-c"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 238
    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "fdsToClose"    # [I
    .param p9, "fdsToIgnore"    # [I
    .param p10, "startChildZygote"    # Z
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 138
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 139
    invoke-static/range {p0 .. p12}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "pid":I
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x1

    move v2, p3

    invoke-static {v1, v2}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 147
    const-wide/16 v3, 0x40

    const-string v1, "PostFork"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    move v2, p3

    :goto_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 150
    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 2
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .line 187
    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 189
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    .line 190
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 193
    .local v0, "pid":I
    if-nez v0, :cond_0

    .line 194
    const/4 v1, 0x1

    invoke-static {v1, p3}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    .line 196
    :cond_0
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 197
    return v0
.end method

.method protected static native nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method static native nativePreApplicationInit()V
.end method

.method static native nativeSecurityInit()V
.end method

.method protected static native nativeUnmountStorageOnInit()V
.end method

.method static resetNicePriority()V
    .locals 2

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 226
    return-void
.end method
