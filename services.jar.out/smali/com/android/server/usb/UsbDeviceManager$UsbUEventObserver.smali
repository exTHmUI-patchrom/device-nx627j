.class final Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "x1"    # Lcom/android/server/usb/UsbDeviceManager$1;

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 232
    const-string v0, "USB_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "state":Ljava/lang/String;
    const-string v1, "ACCESSORY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "accessory":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    const-string v2, "START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 240
    :cond_1
    :goto_0
    return-void
.end method
