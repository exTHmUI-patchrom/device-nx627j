.class public Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pnoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .line 1528
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPnoChanged()V
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$pnoListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startScreenOffPnoScan()V

    .line 1531
    return-void
.end method
