.class Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$3;
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

    .line 62
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 65
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 66
    return-void
.end method
