.class Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListener"
.end annotation


# instance fields
.field public active:Z

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->active:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p2, "x1"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    iget-boolean v0, v0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "WifiAwareNativeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface was destroyed: mWifiNanIface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$500(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->active:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$500(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->makeAwareDown()V

    .line 225
    :cond_1
    return-void
.end method
