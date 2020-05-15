.class final Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
.super Landroid/telephony/data/IDataServiceCallback$Stub;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDataServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public onDataCallListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 222
    return-void
.end method

.method public onDeactivateDataCallComplete(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 193
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    .line 194
    return-void
.end method

.method public onGetDataCallListComplete(ILjava/util/List;)V
    .locals 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p2, "dataCallList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 215
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    .line 216
    return-void
.end method

.method public onSetDataProfileComplete(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 207
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    .line 208
    return-void
.end method

.method public onSetInitialAttachApnComplete(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 200
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    .line 201
    return-void
.end method

.method public onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 181
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const-string v2, "Unable to find the message for setup call response."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void
.end method
