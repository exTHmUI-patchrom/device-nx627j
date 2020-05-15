.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalClientInfo"
.end annotation


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "c"    # Lcom/android/internal/util/AsyncChannel;

    .line 1924
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1925
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    .line 1922
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    .line 1926
    iput-object p4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1928
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;

    .line 1916
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 1939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    .line 1940
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1000(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->removePnoSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    .line 1941
    invoke-super {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->cleanup()V

    .line 1942
    return-void
.end method

.method public reportEvent(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1932
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ExternalClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1935
    :cond_0
    return-void
.end method
