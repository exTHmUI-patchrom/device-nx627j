.class public Lcom/android/internal/logging/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final COMMIT_SYS_CONFIG_FILE:I = 0x802c8

.field public static final SYSUI_ACTION:I = 0x80000

.field public static final SYSUI_COUNT:I = 0x80002

.field public static final SYSUI_HISTOGRAM:I = 0x80003

.field public static final SYSUI_LATENCY:I = 0x8ce6

.field public static final SYSUI_MULTI_ACTION:I = 0x80004

.field public static final SYSUI_VIEW_VISIBILITY:I = 0x7ffff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeCommitSysConfigFile(Ljava/lang/String;J)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "time"    # J

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x802c8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 60
    return-void
.end method

.method public static writeSysuiAction(ILjava/lang/String;)V
    .locals 3
    .param p0, "category"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/high16 v1, 0x80000

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 40
    return-void
.end method

.method public static writeSysuiCount(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "increment"    # I

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x80002

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 48
    return-void
.end method

.method public static writeSysuiHistogram(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bucket"    # I

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x80003

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 52
    return-void
.end method

.method public static writeSysuiLatency(II)V
    .locals 3
    .param p0, "action"    # I
    .param p1, "latency"    # I

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8ce6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 56
    return-void
.end method

.method public static writeSysuiMultiAction([Ljava/lang/Object;)V
    .locals 1
    .param p0, "content"    # [Ljava/lang/Object;

    .line 43
    const v0, 0x80004

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 44
    return-void
.end method

.method public static writeSysuiViewVisibility(II)V
    .locals 3
    .param p0, "category"    # I
    .param p1, "visible"    # I

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7ffff

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 36
    return-void
.end method
