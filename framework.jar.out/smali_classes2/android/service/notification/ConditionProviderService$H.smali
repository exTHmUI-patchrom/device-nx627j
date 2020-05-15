.class final Landroid/service/notification/ConditionProviderService$H;
.super Landroid/os/Handler;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final ON_CONNECTED:I = 0x1

.field private static final ON_SUBSCRIBE:I = 0x3

.field private static final ON_UNSUBSCRIBE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/notification/ConditionProviderService;
    .param p2, "x1"    # Landroid/service/notification/ConditionProviderService$1;

    .line 233
    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Landroid/service/notification/ConditionProviderService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    const-string/jumbo v1, "onUnsubscribe"

    move-object v0, v1

    .line 256
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V

    goto :goto_0

    .line 251
    :pswitch_1
    const-string/jumbo v1, "onSubscribe"

    move-object v0, v1

    .line 252
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    .line 253
    goto :goto_0

    .line 247
    :cond_1
    const-string/jumbo v1, "onConnected"

    move-object v0, v1

    .line 248
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 261
    :goto_0
    goto :goto_1

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v2}, Landroid/service/notification/ConditionProviderService;->access$300(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
