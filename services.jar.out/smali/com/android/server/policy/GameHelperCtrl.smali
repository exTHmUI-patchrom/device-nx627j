.class public Lcom/android/server/policy/GameHelperCtrl;
.super Ljava/lang/Object;
.source "GameHelperCtrl.java"

# interfaces
.implements Lcom/android/server/policy/IKeyBeforeDispatchingHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-wide/16 v1, -0x1

    const/16 v3, 0x120

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x121

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x85

    if-eq v0, v3, :cond_2

    .line 22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v4, 0x86

    if-eq v0, v4, :cond_2

    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/16 v4, 0xb7

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 29
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isGameKeyEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    return-wide v1

    .line 25
    :cond_2
    :goto_0
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.netease.zjz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    return-wide v1

    .line 18
    :cond_3
    :goto_1
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isGameKeyEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    return-wide v1

    .line 33
    :cond_4
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
