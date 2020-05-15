.class Lcom/android/server/am/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 144
    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 201
    goto/16 :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 183
    goto/16 :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1300(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 189
    goto/16 :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 203
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 204
    goto/16 :goto_0

    .line 176
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 177
    goto/16 :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 174
    goto/16 :goto_0

    .line 170
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 171
    goto/16 :goto_0

    .line 167
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 168
    goto/16 :goto_0

    .line 164
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 165
    goto/16 :goto_0

    .line 161
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 162
    goto :goto_0

    .line 197
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 198
    goto :goto_0

    .line 194
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 195
    goto :goto_0

    .line 191
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 192
    goto :goto_0

    .line 185
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 186
    goto :goto_0

    .line 179
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 180
    goto :goto_0

    .line 158
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 159
    goto :goto_0

    .line 152
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->access$000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 153
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 155
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 209
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
