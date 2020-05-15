.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;-><init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

.field final synthetic val$this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/CellularNetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->access$000(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkServiceCallback;

    .line 84
    .local v0, "callback":Landroid/telephony/NetworkServiceCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->notifyNetworkRegistrationStateChanged()V

    .line 116
    goto :goto_3

    .line 87
    :pswitch_1
    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 89
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v3, 0x2

    :goto_0
    move v2, v3

    .line 92
    .local v2, "domain":I
    iget-object v3, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 93
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->access$100(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationState;

    move-result-object v3

    .line 96
    .local v3, "netState":Landroid/telephony/NetworkRegistrationState;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    const/4 v4, 0x5

    .line 99
    .local v4, "resultCode":I
    :goto_2
    nop

    .line 108
    :try_start_0
    invoke-virtual {v0, v4, v3}, Landroid/telephony/NetworkServiceCallback;->onGetNetworkRegistrationStateComplete(ILandroid/telephony/NetworkRegistrationState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_3

    .line 110
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;->this$1:Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;

    iget-object v6, v6, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/CellularNetworkService;->access$200(Lcom/android/internal/telephony/CellularNetworkService;Ljava/lang/String;)V

    .line 113
    .end local v5    # "e":Ljava/lang/Exception;
    nop

    .line 120
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "domain":I
    .end local v3    # "netState":Landroid/telephony/NetworkRegistrationState;
    .end local v4    # "resultCode":I
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
