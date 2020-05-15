.class public final Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;
.super Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;
.source "ScreenSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/screenswitch/ScreenSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchScreenCallbackWrapper"
.end annotation


# instance fields
.field private callback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;


# direct methods
.method public constructor <init>(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;)V
    .locals 0
    .param p1, "callback"    # Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    .line 248
    invoke-direct {p0}, Lnubia/os/screenswitch/IScreenSwitchCallback$Stub;-><init>()V

    .line 249
    iput-object p1, p0, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;->callback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    .line 250
    return-void
.end method


# virtual methods
.method public onSwitch(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 253
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;->callback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;->onSwitch(I)V

    .line 254
    return-void
.end method
