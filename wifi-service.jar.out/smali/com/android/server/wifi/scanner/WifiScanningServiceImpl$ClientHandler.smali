.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;
.super Lcom/android/server/wifi/util/WifiHandler;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 135
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/util/WifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 141
    invoke-super {p0, p1}, Lcom/android/server/wifi/util/WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 177
    .local v0, "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v0, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->cleanup()V

    .line 183
    :cond_0
    return-void

    .line 169
    .end local v0    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 170
    .restart local v0    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    if-eqz v0, :cond_1

    .line 171
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->access$200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 173
    :cond_1
    return-void

    .line 144
    .end local v0    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v1, "msg.replyTo is null"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 146
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 149
    .restart local v0    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    const v2, 0x11002

    if-eqz v0, :cond_3

    .line 150
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate client connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", messenger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->access$200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 154
    return-void

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v1

    const-string v3, "WifiScanningService"

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/FrameworkFacade;->makeWifiAsyncChannel(Ljava/lang/String;)Lcom/android/server/wifi/util/WifiAsyncChannel;

    move-result-object v1

    .line 158
    .local v1, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$400(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3, p0, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 160
    new-instance v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    iget v5, p1, Landroid/os/Message;->sendingUid:I

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    move-object v0, v3

    .line 161
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->register()V

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 165
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 166
    return-void

    .line 188
    .end local v0    # "client":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
    .end local v1    # "ac":Lcom/android/internal/util/AsyncChannel;
    :goto_0
    :try_start_1
    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$600(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    nop

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x27004

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 201
    return-void

    .line 203
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2701d

    if-ne v0, v1, :cond_5

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 205
    return-void

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 209
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    if-nez v0, :cond_6

    .line 210
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find client info for message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, -0x2

    const-string v3, "Could not find listener"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 212
    return-void

    .line 215
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 238
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, -0x3

    const-string v3, "Invalid request"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    .line 234
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v2, "deregisterScanListener"

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    .line 236
    goto :goto_1

    .line 229
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string v2, "registerScanListener"

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1100(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 232
    goto :goto_1

    .line 222
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 223
    goto :goto_1

    .line 226
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$800(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    move-result-object v1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 227
    goto :goto_1

    .line 218
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$700(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    move-result-object v1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 219
    nop

    .line 241
    :goto_1
    return-void

    .line 189
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to authorize app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const/4 v2, -0x4

    const-string v3, "Not authorized"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 192
    return-void

    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x27002 -> :sswitch_4
        0x27003 -> :sswitch_4
        0x27015 -> :sswitch_3
        0x27016 -> :sswitch_3
        0x27018 -> :sswitch_2
        0x27019 -> :sswitch_2
        0x2701b -> :sswitch_1
        0x2701c -> :sswitch_0
    .end sparse-switch
.end method
