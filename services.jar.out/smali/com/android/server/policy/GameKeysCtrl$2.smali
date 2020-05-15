.class Lcom/android/server/policy/GameKeysCtrl$2;
.super Ljava/lang/Object;
.source "GameKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameKeysCtrl;->isOpenGameKeysDB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameKeysCtrl;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameKeysCtrl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 160
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    iput-boolean p2, p0, Lcom/android/server/policy/GameKeysCtrl$2;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->val$isOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$100(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/game/GameKeysHelper;->openSub(Landroid/content/Context;I)V

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$500(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/game/GameModeHelper;->openSub(Landroid/content/Context;I)V

    .line 166
    const-string/jumbo v0, "persist.sys.game.super.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$600(Lcom/android/server/policy/GameKeysCtrl;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "game_mode_enabled=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$700(Lcom/android/server/policy/GameKeysCtrl;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$100(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/game/GameKeysHelper;->closeSub(Landroid/content/Context;I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$500(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/game/GameModeHelper;->closeSub(Landroid/content/Context;I)V

    .line 172
    const-string/jumbo v0, "persist.sys.game.super.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$2;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$600(Lcom/android/server/policy/GameKeysCtrl;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "game_mode_enabled=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void
.end method
