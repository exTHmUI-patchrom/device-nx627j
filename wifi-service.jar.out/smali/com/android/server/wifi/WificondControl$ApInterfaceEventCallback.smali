.class Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;
.super Landroid/net/wifi/IApInterfaceEventCallback$Stub;
.source "WificondControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WificondControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApInterfaceEventCallback"
.end annotation


# instance fields
.field private mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

.field final synthetic this$0:Lcom/android/server/wifi/WificondControl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WifiNative$SoftApListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 150
    iput-object p1, p0, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;->this$0:Lcom/android/server/wifi/WificondControl;

    invoke-direct {p0}, Landroid/net/wifi/IApInterfaceEventCallback$Stub;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 152
    return-void
.end method


# virtual methods
.method public onNumAssociatedStationsChanged(I)V
    .locals 1
    .param p1, "numStations"    # I

    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SoftApListener;->onNumAssociatedStationsChanged(I)V

    .line 157
    return-void
.end method

.method public onSoftApChannelSwitched(II)V
    .locals 1
    .param p1, "frequency"    # I
    .param p2, "bandwidth"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/WificondControl$ApInterfaceEventCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/WifiNative$SoftApListener;->onSoftApChannelSwitched(II)V

    .line 162
    return-void
.end method
