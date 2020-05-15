.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;->f$1:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$1NcQfkLN2A3T-gWX_qB4iMe_lh4;->f$1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$setWifiApConfiguration$6(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
