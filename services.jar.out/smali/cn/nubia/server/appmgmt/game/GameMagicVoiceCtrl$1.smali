.class Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;
.super Ljava/lang/Object;
.source "GameMagicVoiceCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->updateMagicVoiceRecordPackageName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    .line 114
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_magic_voice_record_package_name"

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GameMagicVoiceCtrl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    return-void
.end method
