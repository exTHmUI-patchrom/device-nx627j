.class Lcn/nubia/server/appmgmt/game/GameModeController$1;
.super Landroid/database/ContentObserver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 233
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 236
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 237
    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_game_mode"

    sget v3, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    .line 236
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$002(Lcn/nubia/server/appmgmt/game/GameModeController;I)I

    .line 239
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... GameModeController onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$000(Lcn/nubia/server/appmgmt/game/GameModeController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$000(Lcn/nubia/server/appmgmt/game/GameModeController;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 244
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v2

    invoke-static {v0, v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 245
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v2

    invoke-static {v0, v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$700(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$800(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 252
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v2

    invoke-static {v0, v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 253
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v2

    invoke-static {v0, v2, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$700(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$502(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 256
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v3

    invoke-static {v0, v3, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$600(Lcn/nubia/server/appmgmt/game/GameModeController;ZZ)V

    .line 259
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$900(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$300(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$000(Lcn/nubia/server/appmgmt/game/GameModeController;)I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 262
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1000(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 264
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$400(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$1;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1100(Lcn/nubia/server/appmgmt/game/GameModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1200(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    .line 267
    :cond_5
    return-void
.end method
