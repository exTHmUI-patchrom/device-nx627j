.class Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;
.super Ljava/lang/Object;
.source "EnterGamemodePromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 51
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 54
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "never_ask_again_enter_gamemode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "virtual_game_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 59
    return-void
.end method
