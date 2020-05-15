.class final Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameKeysPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/GameModeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/game/GameModeController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/game/GameModeController$1;

    .line 396
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;-><init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 399
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 421
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Call State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$500(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GameModeService"

    const-string v2, "[PHONE] CALL_STATE_OFFHOOK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2000(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 416
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1902(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    goto :goto_0

    .line 409
    :pswitch_1
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GameModeService"

    const-string v1, "[PHONE] onCallStateChanged: CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1900(Lcn/nubia/server/appmgmt/game/GameModeController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GameModeService"

    const-string v2, "[PHONE] CALL_STATE_IDLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$2000(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 404
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$GameKeysPhoneStateListener;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1902(Lcn/nubia/server/appmgmt/game/GameModeController;Z)Z

    .line 425
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
