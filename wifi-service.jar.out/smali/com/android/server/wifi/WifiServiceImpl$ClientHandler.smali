.class Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
.super Lcom/android/server/wifi/util/WifiHandler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 276
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/android/server/wifi/util/WifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 278
    return-void
.end method

.method private checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "replyWhat"    # I

    .line 406
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$400(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/util/WifiPermissionsUtil;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkChangePermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientHandler.handleMessage ignoring unauthorized msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    .line 409
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private replyFailed(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "why"    # I

    .line 415
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "reply":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 418
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 420
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 424
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 282
    invoke-super {p0, p1}, Lcom/android/server/wifi/util/WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 389
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 382
    :sswitch_0
    const v0, 0x25016

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 376
    :sswitch_1
    const v0, 0x25012

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 369
    :sswitch_2
    const v0, 0x2500f

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 372
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 363
    :sswitch_3
    const v0, 0x2500c

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 335
    :sswitch_4
    const v0, 0x25008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 338
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 339
    .local v3, "networkId":I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAVE nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 344
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 349
    :cond_0
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientHandler.handleMessage ignoring invalid msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    .line 353
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkId":I
    :goto_0
    goto/16 :goto_3

    .line 357
    :sswitch_5
    const v0, 0x25005

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 310
    :sswitch_6
    const v0, 0x25002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->checkChangePermissionAndReplyIfNotAuthorized(Landroid/os/Message;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 313
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 314
    .restart local v3    # "networkId":I
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT  nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 319
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 323
    :cond_1
    if-nez v2, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 327
    :cond_2
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientHandler.handleMessage ignoring invalid msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->replyFailed(Landroid/os/Message;II)V

    .line 331
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "networkId":I
    :goto_1
    goto/16 :goto_3

    .line 296
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 297
    const-string v0, "WifiService"

    const-string v1, "Send failed, client connection lost"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 299
    :cond_3
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client connection lost with reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    .line 302
    goto :goto_3

    .line 305
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    const-string v1, "WifiService"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/FrameworkFacade;->makeWifiAsyncChannel(Ljava/lang/String;)Lcom/android/server/wifi/util/WifiAsyncChannel;

    move-result-object v0

    .line 306
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 307
    goto :goto_3

    .line 285
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 286
    const-string v0, "WifiService"

    const-string v1, "New client listening to asynchronous messages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    goto :goto_3

    .line 291
    :cond_4
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client connection failure, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    nop

    .line 393
    :cond_5
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_9
        0x11001 -> :sswitch_8
        0x11004 -> :sswitch_7
        0x25001 -> :sswitch_6
        0x25004 -> :sswitch_5
        0x25007 -> :sswitch_4
        0x2500a -> :sswitch_3
        0x2500e -> :sswitch_2
        0x25011 -> :sswitch_1
        0x25014 -> :sswitch_0
    .end sparse-switch
.end method
