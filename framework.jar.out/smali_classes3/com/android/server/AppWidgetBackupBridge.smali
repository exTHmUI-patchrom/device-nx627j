.class public Lcom/android/server/AppWidgetBackupBridge;
.super Ljava/lang/Object;
.source "AppWidgetBackupBridge.java"


# static fields
.field private static sAppWidgetService:Lcom/android/server/WidgetBackupProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetParticipants(I)Ljava/util/List;
    .locals 1
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0
.end method

.method public static getWidgetState(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 41
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    invoke-interface {v0, p0, p1}, Lcom/android/server/WidgetBackupProvider;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0
.end method

.method public static register(Lcom/android/server/WidgetBackupProvider;)V
    .locals 0
    .param p0, "instance"    # Lcom/android/server/WidgetBackupProvider;

    .line 31
    sput-object p0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 32
    return-void
.end method

.method public static restoreFinished(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 59
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreFinished(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public static restoreStarting(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 47
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreStarting(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public static restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restoredState"    # [B
    .param p2, "userId"    # I

    .line 53
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/WidgetBackupProvider;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 56
    :cond_0
    return-void
.end method
