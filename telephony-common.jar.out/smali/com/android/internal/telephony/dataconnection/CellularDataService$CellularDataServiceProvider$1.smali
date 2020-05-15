.class Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

.field final synthetic val$this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/dataconnection/CellularDataService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->access$000(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 87
    .local v0, "callback":Landroid/telephony/data/DataServiceCallback;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 88
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_0

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->access$200(Lcom/android/internal/telephony/dataconnection/CellularDataService;Ljava/lang/String;)V

    .line 127
    return-void

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->access$100(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    .line 124
    goto :goto_5

    .line 112
    :pswitch_1
    nop

    .line 113
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 114
    nop

    .line 116
    move v3, v4

    goto :goto_0

    .line 115
    :cond_0
    nop

    .line 116
    :goto_0
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x0

    goto :goto_1

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->access$100(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 112
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/telephony/data/DataServiceCallback;->onGetDataCallListComplete(ILjava/util/List;)V

    .line 120
    goto :goto_5

    .line 107
    :pswitch_2
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 108
    nop

    .line 107
    move v3, v4

    goto :goto_2

    .line 109
    :cond_2
    nop

    .line 107
    :goto_2
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    .line 110
    goto :goto_5

    .line 102
    :pswitch_3
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 103
    nop

    .line 102
    move v3, v4

    goto :goto_3

    .line 104
    :cond_3
    nop

    .line 102
    :goto_3
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    .line 105
    goto :goto_5

    .line 97
    :pswitch_4
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 98
    nop

    .line 97
    move v3, v4

    goto :goto_4

    .line 99
    :cond_4
    nop

    .line 97
    :goto_4
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 100
    goto :goto_5

    .line 90
    :pswitch_5
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 91
    .local v2, "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 92
    nop

    .line 93
    move v3, v4

    nop

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    .line 94
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v4

    .line 91
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 95
    nop

    .line 129
    .end local v2    # "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
