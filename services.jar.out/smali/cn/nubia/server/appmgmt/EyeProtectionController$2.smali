.class Lcn/nubia/server/appmgmt/EyeProtectionController$2;
.super Ljava/lang/Object;
.source "EyeProtectionController.java"

# interfaces
.implements Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 130
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$2;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$2;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$200(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lnubia/os/screenswitch/ScreenSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$2;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$100(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnubia/os/screenswitch/ScreenSwitchManager;->reportCallBackComplete(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$2;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$300(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method
