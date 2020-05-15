.class Lcom/android/internal/telephony/DeviceStateMonitor$1;
.super Ljava/lang/Object;
.source "DeviceStateMonitor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 119
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result v0

    .line 127
    .local v0, "screenOn":Z
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 128
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 129
    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 122
    return-void
.end method
