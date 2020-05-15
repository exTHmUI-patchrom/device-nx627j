.class Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2$1;
.super Ljava/lang/Object;
.source "GameMagicVoiceCtrl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;

    .line 153
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2$1;->this$1:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2$1;->this$1:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;

    iget-object v0, v0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->access$200(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 157
    return-void
.end method
