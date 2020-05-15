.class Lcom/android/server/wifi/scanner/WificondScannerImpl$2;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;->startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WificondScannerImpl;

    .line 231
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$2;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->access$100(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    .line 234
    return-void
.end method
