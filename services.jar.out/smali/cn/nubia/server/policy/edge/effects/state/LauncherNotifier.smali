.class public Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;
.super Ljava/lang/Object;
.source "LauncherNotifier.java"


# instance fields
.field private mHasShown:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    .line 12
    const-string v0, "content://cn.nubia.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    .line 16
    return-void
.end method


# virtual methods
.method public canAnimate()V
    .locals 5

    .line 41
    const-string v0, "State"

    const-string/jumbo v1, "notify launcher can animate"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "launcherFit"

    const-string/jumbo v3, "toForeground"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    .line 45
    return-void
.end method

.method public canPrepare(Z)V
    .locals 5
    .param p1, "isLeft"    # Z

    .line 19
    const-string v0, "State"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify launcher can prepare isLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string/jumbo v3, "launcherFit"

    const-string/jumbo v4, "init"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    return-void
.end method

.method public canShow()V
    .locals 5

    .line 31
    const-string v0, "State"

    const-string/jumbo v1, "notify launcher can show"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "launcherFit"

    const-string/jumbo v3, "show"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    .line 34
    return-void
.end method

.method public cancelPrepare()V
    .locals 5

    .line 26
    const-string v0, "State"

    const-string/jumbo v1, "notify launcher cancel prepare"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "launcherFit"

    const-string v3, "cancel"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 28
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/state/LauncherNotifier;->mHasShown:Z

    return v0
.end method
