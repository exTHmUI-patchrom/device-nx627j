.class final Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;
.super Ljava/lang/Object;
.source "DataServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDataServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$002(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2}, Landroid/telephony/data/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$302(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$402(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$602(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$700(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/telephony/data/IDataService;->createDataServiceProvider(I)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$700(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {v4, v5, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    invoke-interface {v0, v2, v4}, Landroid/telephony/data/IDataService;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$900(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 161
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;->binderDied()V

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/data/IDataService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$302(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$602(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->access$900(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
