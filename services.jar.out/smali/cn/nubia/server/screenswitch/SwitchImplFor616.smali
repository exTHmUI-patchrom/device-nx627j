.class public Lcn/nubia/server/screenswitch/SwitchImplFor616;
.super Lcn/nubia/server/screenswitch/SwitchInterface;
.source "SwitchImplFor616.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method execImpl(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 35
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor616;->mToken:Landroid/os/IBinder;

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchImplFor616;->mToken:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public lcdStateFile()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "/sys/kernel/lcd_enhance/lcd_state"

    return-object v0
.end method

.method needSwitch(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 30
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/SwitchImplFor616;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
