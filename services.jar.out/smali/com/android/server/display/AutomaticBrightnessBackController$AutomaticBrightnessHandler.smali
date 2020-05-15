.class final Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessBackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessBackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessBackController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessBackController;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1223
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 1224
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1225
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1239
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$1200(Lcom/android/server/display/AutomaticBrightnessBackController;)V

    goto :goto_0

    .line 1235
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$1100(Lcom/android/server/display/AutomaticBrightnessBackController;)V

    .line 1236
    goto :goto_0

    .line 1231
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessBackController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->access$1000(Lcom/android/server/display/AutomaticBrightnessBackController;)V

    .line 1232
    nop

    .line 1242
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
