.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "Trace"

.field public static final TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final TRACE_TAG_ADB:J = 0x400000L

.field public static final TRACE_TAG_AIDL:J = 0x1000000L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP:J = 0x1000L

.field public static final TRACE_TAG_AUDIO:J = 0x100L

.field public static final TRACE_TAG_BIONIC:J = 0x10000L

.field public static final TRACE_TAG_CAMERA:J = 0x400L

.field public static final TRACE_TAG_DALVIK:J = 0x4000L

.field public static final TRACE_TAG_DATABASE:J = 0x100000L

.field public static final TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final TRACE_TAG_HAL:J = 0x800L

.field public static final TRACE_TAG_INPUT:J = 0x4L

.field public static final TRACE_TAG_NETWORK:J = 0x200000L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field private static final TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final TRACE_TAG_PACKAGE_MANAGER:J = 0x40000L

.field public static final TRACE_TAG_POWER:J = 0x20000L

.field public static final TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final TRACE_TAG_RS:J = 0x8000L

.field public static final TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final TRACE_TAG_SYSTEM_SERVER:J = 0x80000L

.field public static final TRACE_TAG_VIBRATOR:J = 0x800000L

.field public static final TRACE_TAG_VIDEO:J = 0x200L

.field public static final TRACE_TAG_VIEW:J = 0x8L

.field public static final TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile sEnabledTags:J

.field private static sZygoteDebugFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 103
    const/4 v0, 0x0

    sput v0, Landroid/os/Trace;->sZygoteDebugFlags:I

    .line 130
    sget-object v0, Landroid/os/-$$Lambda$Trace$2zLZ-Lc2kAXsVjw_nLYeNhqmGq0;->INSTANCE:Landroid/os/-$$Lambda$Trace$2zLZ-Lc2kAXsVjw_nLYeNhqmGq0;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 267
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    .line 270
    :cond_0
    return-void
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 284
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    .line 287
    :cond_0
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "sectionName"    # Ljava/lang/String;

    .line 301
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 305
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sectionName is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    :goto_0
    return-void
.end method

.method private static cacheEnabledTags()J
    .locals 2

    .line 156
    invoke-static {}, Landroid/os/Trace;->nativeGetEnabledTags()J

    move-result-wide v0

    .line 157
    .local v0, "tags":J
    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 158
    return-wide v0
.end method

.method public static endSection()V
    .locals 3

    .line 317
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {v0, v1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 320
    :cond_0
    return-void
.end method

.method public static isTagEnabled(J)Z
    .locals 6
    .param p0, "traceTag"    # J

    .line 170
    sget-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 171
    .local v0, "tags":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    move-result-wide v0

    .line 174
    :cond_0
    and-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$static$0()V
    .locals 4

    .line 131
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 132
    sget v0, Landroid/os/Trace;->sZygoteDebugFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 133
    const-wide/16 v0, 0x1

    const-string v2, "java_debuggable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 135
    :cond_0
    return-void
.end method

.method private static native nativeAsyncTraceBegin(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeAsyncTraceEnd(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetEnabledTags()J
.end method

.method private static native nativeNoteBenchIsMarkRunning(Z)V
.end method

.method private static native nativeSetAppTracingAllowed(Z)V
.end method

.method private static native nativeSetTracingEnabled(Z)V
.end method

.method private static native nativeTraceBegin(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeTraceCounter(JLjava/lang/String;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeTraceEnd(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static noteBenchMarkIsRunning(Z)V
    .locals 0
    .param p0, "isRuning"    # Z

    .line 327
    invoke-static {p0}, Landroid/os/Trace;->nativeNoteBenchIsMarkRunning(Z)V

    .line 328
    return-void
.end method

.method public static setAppTracingAllowed(Z)V
    .locals 0
    .param p0, "allowed"    # Z

    .line 199
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    .line 203
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 204
    return-void
.end method

.method public static setTracingEnabled(ZI)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "debugFlags"    # I

    .line 215
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    .line 216
    sput p1, Landroid/os/Trace;->sZygoteDebugFlags:I

    .line 220
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 221
    return-void
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .line 234
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .locals 1
    .param p0, "traceTag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    .line 187
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;I)V

    .line 190
    :cond_0
    return-void
.end method

.method public static traceEnd(J)V
    .locals 1
    .param p0, "traceTag"    # J

    .line 248
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 251
    :cond_0
    return-void
.end method
