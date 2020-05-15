.class Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;
.super Ljava/lang/Object;
.source "ScreenSwitchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ScreenSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateChangedRunnable"
.end annotation


# instance fields
.field private mScreenState:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ScreenSwitchController;I)V
    .locals 0
    .param p2, "state"    # I

    .line 32
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p2, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;->mScreenState:I

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;->this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ScreenSwitchController;->access$000(Lcn/nubia/server/appmgmt/ScreenSwitchController;)Lnubia/os/screenswitch/ScreenSwitchManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateChangedRunnable;->mScreenState:I

    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchManager;->noteScreenStateChanged(I)V

    .line 37
    return-void
.end method
