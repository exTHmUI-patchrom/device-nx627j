.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

.field final handlerId:I

.field final settings:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

.field final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V
    .locals 0
    .param p2, "clientInfo"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p3, "handlerId"    # I
    .param p4, "requestedWorkSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I",
            "Landroid/os/WorkSource;",
            "TT;)V"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    .local p5, "settings":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 363
    iput p3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    .line 364
    iput-object p5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    .line 365
    invoke-static {p1, p2, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$1300(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->workSource:Landroid/os/WorkSource;

    .line 366
    return-void
.end method


# virtual methods
.method reportEvent(IILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 369
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    .line 370
    return-void
.end method
