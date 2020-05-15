.class Lcom/android/server/wifi/WifiNative$1;
.super Ljava/lang/Object;
.source "WifiNative.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$InterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNative;->setupFstInterface(Lcom/android/server/wifi/WifiNative$Iface;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNative;

    .line 895
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$1;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 898
    return-void
.end method

.method public onDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 901
    return-void
.end method

.method public onUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 904
    return-void
.end method
