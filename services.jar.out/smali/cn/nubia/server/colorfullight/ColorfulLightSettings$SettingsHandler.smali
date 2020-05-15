.class Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "ColorfulLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 111
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] handleMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", LightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 118
    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x6d

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] Unknown request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$202(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Z)Z

    .line 145
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v4, 0x4

    if-ne v4, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v4, 0x2

    if-ne v4, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v4, 0x5

    if-ne v4, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$202(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Z)Z

    .line 131
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v4, 0x3

    if-ne v4, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$202(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Z)Z

    .line 123
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
