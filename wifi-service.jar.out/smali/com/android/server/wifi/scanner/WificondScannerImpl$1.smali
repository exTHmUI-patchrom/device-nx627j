.class Lcom/android/server/wifi/scanner/WificondScannerImpl$1;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    .line 220
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$1;->this$0:Lcom/android/server/wifi/scanner/WificondScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->access$000(Lcom/android/server/wifi/scanner/WificondScannerImpl;)V

    .line 223
    return-void
.end method
