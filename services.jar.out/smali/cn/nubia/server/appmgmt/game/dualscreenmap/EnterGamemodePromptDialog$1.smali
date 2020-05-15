.class Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;
.super Ljava/lang/Object;
.source "EnterGamemodePromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 44
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    return-void
.end method
