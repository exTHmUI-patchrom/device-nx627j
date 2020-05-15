.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "google.com"

    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "MasterClear"

    const-string v1, "Ignoring master clear request -- not from trusted server."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 60
    :cond_0
    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "MasterClear"

    const-string v1, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "MasterClear"

    const-string v1, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.FACTORY_RESET"

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    :cond_3
    const-string v0, "MasterClear"

    const-string/jumbo v1, "zhb MasterClearReceiver:onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string/jumbo v0, "persist.sys.enterprisecustom.complete"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    const-string/jumbo v0, "true"

    const-string v1, "ByUserManaul"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zhb MasterClearReceiver:onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "issupportFactoryreset"

    invoke-static {v2}, Lnubia/enterprisecustom/EnterpriseCustomManager;->isSupportFactoryReset(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v0, "issupportFactoryreset"

    invoke-static {v0}, Lnubia/enterprisecustom/EnterpriseCustomManager;->isSupportFactoryReset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    const-string v0, "MasterClear"

    const-string v1, "For enterprise custom version, now not allow to do facotry reset or master clear work by manual"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 85
    :cond_4
    const-string/jumbo v0, "shutdown"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, "shutdown":Z
    const-string v2, "android.intent.extra.REASON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "reason":Ljava/lang/String;
    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 88
    const-string v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 89
    const-string v2, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.extra.FORCE_FACTORY_RESET"

    .line 90
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v9, v1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v2, 0x1

    move v9, v2

    .line 93
    .local v9, "forceWipe":Z
    :goto_1
    const-string v2, "extra.deletedata.args"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "args":Ljava/lang/String;
    const-string v2, "MasterClear"

    const-string v3, "!!! FACTORY RESET !!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v12, Lcom/android/server/MasterClearReceiver$1;

    const-string v4, "Reboot"

    move-object v2, v12

    move-object v3, p0

    move-object v5, v11

    move-object v6, p1

    move v7, v0

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 122
    .local v2, "thr":Ljava/lang/Thread;
    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v3, :cond_7

    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 124
    :cond_8
    :goto_2
    new-instance v3, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    :goto_3
    return-void
.end method
