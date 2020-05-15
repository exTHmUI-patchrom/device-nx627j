.class public Lcom/android/internal/os/logging/MetricsLoggerWrapper;
.super Ljava/lang/Object;
.source "MetricsLoggerWrapper.java"


# static fields
.field private static final METRIC_VALUE_DISMISSED_BY_DRAG:I = 0x1

.field private static final METRIC_VALUE_DISMISSED_BY_TAP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 74
    const/4 v0, -0x1

    .line 76
    .local v0, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v2, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 79
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 80
    :goto_0
    return v0
.end method

.method public static logAppOverlayEnter(ILjava/lang/String;ZIZ)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 108
    if-eqz p2, :cond_1

    .line 109
    const/16 v0, 0x7f6

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-eq p3, v0, :cond_0

    .line 110
    invoke-static {v1, p0, p1, v2, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    goto :goto_0

    .line 112
    :cond_0
    if-nez p4, :cond_1

    .line 113
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public static logAppOverlayExit(ILjava/lang/String;ZIZ)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 120
    if-eqz p2, :cond_1

    .line 121
    const/16 v0, 0x7f6

    const/4 v1, 0x2

    const/16 v2, 0x3b

    if-eq p3, v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-static {v2, p0, p1, v0, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    goto :goto_0

    .line 124
    :cond_0
    if-nez p4, :cond_1

    .line 125
    const/4 v0, 0x0

    invoke-static {v2, p0, p1, v0, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public static logPictureInPictureDismissByDrag(Landroid/content/Context;Landroid/util/Pair;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "topActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const/16 v0, 0x336

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 53
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 55
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 53
    const/16 v2, 0x34

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 57
    return-void
.end method

.method public static logPictureInPictureDismissByTap(Landroid/content/Context;Landroid/util/Pair;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "topActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const/16 v0, 0x336

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 42
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 44
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 42
    const/16 v2, 0x34

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 46
    return-void
.end method

.method public static logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "shortComponentName"    # Ljava/lang/String;
    .param p3, "supportsEnterPipOnTaskSwitch"    # Z

    .line 90
    const/16 v0, 0x333

    invoke-static {p0, v0, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 92
    const/16 v0, 0x34

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 95
    return-void
.end method

.method public static logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "shortComponentName"    # Ljava/lang/String;

    .line 99
    const/16 v0, 0x334

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 101
    const/16 v0, 0x34

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 105
    return-void
.end method

.method public static logPictureInPictureMenuVisible(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuStateFull"    # Z

    .line 84
    const/16 v0, 0x337

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public static logPictureInPictureMinimize(Landroid/content/Context;ZLandroid/util/Pair;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isMinimized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p2, "topActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    const/16 v0, 0x335

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 63
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 65
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 63
    const/16 v2, 0x34

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 67
    return-void
.end method
