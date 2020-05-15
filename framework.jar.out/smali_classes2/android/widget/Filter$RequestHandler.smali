.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 216
    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 217
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    .line 230
    .local v0, "what":I
    const v1, -0x2f2f0ff3

    const v2, -0x21524111

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 252
    :cond_0
    iget-object v1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v1}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 255
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/Filter;->access$402(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 257
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 232
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Filter$RequestArguments;

    .line 234
    .local v1, "args":Landroid/widget/Filter$RequestArguments;
    :try_start_1
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    iget-object v4, v1, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    :goto_0
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 240
    .local v3, "message":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 242
    goto :goto_1

    .line 239
    .end local v3    # "message":Landroid/os/Message;
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 235
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v4, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    .line 237
    const-string v4, "Filter"

    const-string v5, "An exception occured during performFiltering()!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 244
    .local v3, "message":Landroid/os/Message;
    :goto_1
    iget-object v4, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v4}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 245
    :try_start_3
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 246
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 247
    .local v2, "finishMessage":Landroid/os/Message;
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .end local v2    # "finishMessage":Landroid/os/Message;
    :cond_3
    monitor-exit v4

    .line 250
    nop

    .line 260
    .end local v1    # "args":Landroid/widget/Filter$RequestArguments;
    .end local v3    # "message":Landroid/os/Message;
    :goto_2
    return-void

    .line 249
    .restart local v1    # "args":Landroid/widget/Filter$RequestArguments;
    .restart local v3    # "message":Landroid/os/Message;
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 239
    .end local v3    # "message":Landroid/os/Message;
    :goto_3
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 240
    .restart local v3    # "message":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    throw v2
.end method
