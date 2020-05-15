.class Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareNativeManager;->start(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 81
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$100(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$100(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 91
    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$200(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$300(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/os/Handler;

    move-result-object v3

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    .line 95
    :goto_0
    return-void
.end method
