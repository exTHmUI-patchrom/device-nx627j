.class public Lcom/android/internal/app/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final HARMFUL_APP_WARNING_LAUNCH_ANYWAY:I = 0xcf09

.field public static final HARMFUL_APP_WARNING_UNINSTALL:I = 0xcf08


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeHarmfulAppWarningLaunchAnyway(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 24
    const v0, 0xcf09

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 25
    return-void
.end method

.method public static writeHarmfulAppWarningUninstall(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 20
    const v0, 0xcf08

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 21
    return-void
.end method
