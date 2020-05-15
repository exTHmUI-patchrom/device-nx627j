.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_miscActivity(ILjava/lang/String;II)F
.end method

.method private native native_at_pauseActivity(Ljava/lang/String;)V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;I)I
.end method

.method private native native_at_stopActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public activityMiscTrigger(ILjava/lang/String;II)F
    .locals 1
    .param p1, "func"    # I
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "type"    # I

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ActivityTrigger;->native_at_miscActivity(ILjava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 81
    .local v1, "activity":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_pauseActivity(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "IsInFullScreen"    # Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 68
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 70
    .local v1, "activity":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_resumeActivity(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "IsInFullScreen"    # Z

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "reserved":I
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 57
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 59
    .local v2, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_startActivity(Ljava/lang/String;I)I

    .line 62
    return-void
.end method

.method public activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 88
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 92
    .local v1, "activity":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActivityTrigger;->native_at_stopActivity(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->native_at_deinit()V

    .line 50
    return-void
.end method
