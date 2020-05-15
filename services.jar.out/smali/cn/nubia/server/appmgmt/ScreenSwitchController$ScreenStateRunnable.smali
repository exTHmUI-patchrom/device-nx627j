.class Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;
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
    name = "ScreenStateRunnable"
.end annotation


# instance fields
.field private mScreenState:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ScreenSwitchController;I)V
    .locals 0
    .param p2, "state"    # I

    .line 42
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;->this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;->mScreenState:I

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;->this$0:Lcn/nubia/server/appmgmt/ScreenSwitchController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ScreenSwitchController;->access$000(Lcn/nubia/server/appmgmt/ScreenSwitchController;)Lnubia/os/screenswitch/ScreenSwitchManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/ScreenSwitchController$ScreenStateRunnable;->mScreenState:I

    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchManager;->noteScreenState(I)V

    .line 47
    return-void
.end method
