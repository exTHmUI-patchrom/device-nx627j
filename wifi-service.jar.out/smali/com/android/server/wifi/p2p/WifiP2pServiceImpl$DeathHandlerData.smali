.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathHandlerData"
.end annotation


# instance fields
.field mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/IBinder$DeathRecipient;Landroid/os/Messenger;)V
    .locals 0
    .param p2, "dr"    # Landroid/os/IBinder$DeathRecipient;
    .param p3, "m"    # Landroid/os/Messenger;

    .line 385
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 387
    iput-object p3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;->mMessenger:Landroid/os/Messenger;

    .line 388
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deathRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messenger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$DeathHandlerData;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
