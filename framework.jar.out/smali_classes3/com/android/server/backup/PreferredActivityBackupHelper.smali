.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    const-string v0, "preferred-activity"

    const-string v1, "default-apps"

    const-string v2, "intent-verification"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 74
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 80
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x298b2982

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x19949e54

    if-eq v2, v3, :cond_1

    const v3, 0x4fa3eadb

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 91
    const-string v1, "PreferredBackup"

    goto :goto_1

    .line 88
    :pswitch_0
    invoke-interface {v0, p2, v4}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    .line 89
    goto :goto_2

    .line 85
    :pswitch_1
    invoke-interface {v0, p2, v4}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 86
    goto :goto_2

    .line 82
    :pswitch_2
    invoke-interface {v0, p2, v4}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    .line 83
    goto :goto_2

    .line 91
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_2
    goto :goto_3

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 56
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x298b2982

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x19949e54

    if-eq v2, v3, :cond_1

    const v3, 0x4fa3eadb

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 64
    const-string v1, "PreferredBackup"

    goto :goto_1

    .line 62
    :pswitch_0
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    move-result-object v1

    return-object v1

    .line 60
    :pswitch_1
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v1

    return-object v1

    .line 58
    :pswitch_2
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v1

    return-object v1

    .line 64
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected backup key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
