.class Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
.super Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<",
        "Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/String;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)V
    .locals 1
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "destroyedListener"    # Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2056
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    .line 2057
    const-string v0, "InterfaceDestroyedListenerProxy"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2058
    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->mIfaceName:Ljava/lang/String;

    .line 2059
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 2

    .line 2063
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->mIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    .line 2064
    return-void
.end method
