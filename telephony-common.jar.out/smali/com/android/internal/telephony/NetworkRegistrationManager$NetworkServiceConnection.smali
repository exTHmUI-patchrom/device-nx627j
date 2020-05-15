.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/NetworkRegistrationManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/NetworkRegistrationManager$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 130
    const-string v0, "service connected."

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    move-object v1, p2

    check-cast v1, Landroid/telephony/INetworkService$Stub;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$302(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService$Stub;)Landroid/telephony/INetworkService$Stub;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$402(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/INetworkService$Stub;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/INetworkService$Stub;->createNetworkServiceProvider(I)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/INetworkService$Stub;->registerForNetworkRegistrationStateChanged(ILandroid/telephony/INetworkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;->binderDied()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 143
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$200(Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService$Stub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/INetworkService$Stub;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 151
    :cond_0
    return-void
.end method
