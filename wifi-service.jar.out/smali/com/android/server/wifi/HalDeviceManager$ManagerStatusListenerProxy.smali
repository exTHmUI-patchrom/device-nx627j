.class Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;
.super Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerStatusListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy<",
        "Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .locals 1
    .param p2, "statusListener"    # Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1255
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    .line 1256
    const-string v0, "ManagerStatusListenerProxy"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1257
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListenerProxy;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;

    invoke-interface {v0}, Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;->onStatusChanged()V

    .line 1262
    return-void
.end method
