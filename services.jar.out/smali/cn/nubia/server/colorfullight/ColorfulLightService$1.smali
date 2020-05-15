.class Lcn/nubia/server/colorfullight/ColorfulLightService$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 150
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] mSystemReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", getLightLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 157
    invoke-virtual {v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 161
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "status":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$400(Lcn/nubia/server/colorfullight/ColorfulLightService;)V

    .line 167
    .end local v1    # "status":I
    goto :goto_1

    .line 165
    .restart local v1    # "status":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkBatteryState()V

    .line 169
    .end local v1    # "status":I
    :goto_1
    goto/16 :goto_2

    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$500(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->handleKeyguardOn()V

    .line 171
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkMissEventState()V

    .line 172
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkBatteryState()V

    goto/16 :goto_2

    .line 173
    :cond_4
    const-string v1, "com.nubia.deskclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v1, :cond_6

    .line 174
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 175
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-lt v5, v1, :cond_c

    .line 176
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$700(Lcn/nubia/server/colorfullight/ColorfulLightService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v2, 0x67

    iget-object v5, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 178
    invoke-static {v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$800(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->getAlarmMode()I

    move-result v5

    .line 177
    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 180
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    goto/16 :goto_2

    .line 183
    :cond_6
    const-string v1, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_7

    .line 184
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 185
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 186
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 189
    :cond_7
    const-string v1, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 191
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 192
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_2

    .line 195
    :cond_8
    const-string v1, "com.nubia.deskclock.ALARM_TOUI_DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 197
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 198
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_2

    .line 201
    :cond_9
    const-string v1, "com.nubia.deskclock.ALARM_DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 202
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 203
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 204
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_2

    .line 207
    :cond_a
    const-string v1, "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 209
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 210
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_2

    .line 213
    :cond_b
    const-string v1, "com.nubia.deskclock.ALARM_MISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 214
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-static {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z

    .line 215
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 216
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1, v2, v5, v4, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 220
    :cond_c
    :goto_2
    return-void
.end method
