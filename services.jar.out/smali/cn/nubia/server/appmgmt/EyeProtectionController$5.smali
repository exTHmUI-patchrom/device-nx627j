.class Lcn/nubia/server/appmgmt/EyeProtectionController$5;
.super Landroid/os/Handler;
.source "EyeProtectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 240
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 290
    invoke-static {}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "EyeProtectionController"

    const-string/jumbo v1, "the msg is invalid !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EyeProtectionController"

    const-string v2, "AOD OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 274
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 276
    .local v0, "cameraMode":I
    if-eq v0, v1, :cond_2

    .line 277
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v4, "aod_off_secondScreen isRunningCamera"

    invoke-static {v3, v0, v4}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v4, "aod_off_secondScreen isRunningCamera"

    invoke-static {v3, v1, v4}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 280
    .end local v0    # "cameraMode":I
    :cond_2
    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1200(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 282
    .local v0, "recoverMode":I
    if-eq v0, v1, :cond_6

    .line 283
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v3, "aod_off_secondScreen"

    invoke-static {v1, v0, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 283
    .end local v0    # "recoverMode":I
    goto :goto_1

    .line 268
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1600(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->recoverNightDisplay()V

    .line 269
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 270
    .local v0, "currentMode":I
    if-eqz v0, :cond_5

    .line 271
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v3, "aod_off_mainscreen"

    invoke-static {v1, v2, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 273
    .end local v0    # "currentMode":I
    :cond_5
    nop

    .line 287
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$702(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z

    .line 288
    goto/16 :goto_3

    .line 250
    :pswitch_1
    invoke-static {}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "EyeProtectionController"

    const-string v2, "AOD ON"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 252
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 253
    .local v0, "backMode":I
    if-eq v0, v1, :cond_9

    .line 254
    if-eqz v0, :cond_8

    .line 255
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v3, "aod_on mCurrentScreen=1"

    invoke-static {v2, v0, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 257
    :cond_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string v3, "aod_on mCurrentScreen=1"

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 259
    .end local v0    # "backMode":I
    :cond_9
    goto :goto_2

    .line 260
    :cond_a
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1600(Lcn/nubia/server/appmgmt/EyeProtectionController;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->resetNightDisplay()V

    .line 262
    :goto_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$702(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z

    .line 263
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$300(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1700(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    goto :goto_3

    .line 244
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 245
    .local v0, "displayId":I
    invoke-static {}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "EyeProtectionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start displayId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_b
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1400(Lcn/nubia/server/appmgmt/EyeProtectionController;I)V

    .line 247
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$5;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1500(Lcn/nubia/server/appmgmt/EyeProtectionController;I)V

    .line 248
    nop

    .line 293
    .end local v0    # "displayId":I
    :cond_c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
