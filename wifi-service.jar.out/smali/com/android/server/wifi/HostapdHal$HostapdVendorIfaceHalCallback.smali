.class Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;
.super Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;
.source "HostapdHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HostapdHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostapdVendorIfaceHalCallback"
.end annotation


# instance fields
.field private mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

.field final synthetic this$0:Lcom/android/server/wifi/HostapdHal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HostapdHal;Ljava/lang/String;Lcom/android/server/wifi/WifiNative$SoftApListener;)V
    .locals 0
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 725
    iput-object p1, p0, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;->this$0:Lcom/android/server/wifi/HostapdHal;

    invoke-direct {p0}, Lvendor/qti/hardware/wifi/hostapd/V1_0/IHostapdVendorIfaceCallback$Stub;-><init>()V

    .line 726
    iput-object p3, p0, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    .line 727
    return-void
.end method


# virtual methods
.method public onStaConnected([B)V
    .locals 2
    .param p1, "bssid"    # [B

    .line 731
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "bssidStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$SoftApListener;->onStaConnected(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public onStaDisconnected([B)V
    .locals 2
    .param p1, "bssid"    # [B

    .line 737
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "bssidStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/HostapdHal$HostapdVendorIfaceHalCallback;->mSoftApListener:Lcom/android/server/wifi/WifiNative$SoftApListener;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$SoftApListener;->onStaDisconnected(Ljava/lang/String;)V

    .line 739
    return-void
.end method
