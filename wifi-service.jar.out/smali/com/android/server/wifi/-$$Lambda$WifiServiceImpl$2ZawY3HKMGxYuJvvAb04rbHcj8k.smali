.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$2ZawY3HKMGxYuJvvAb04rbHcj8k;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$getScanResults$7(Lcom/android/server/wifi/WifiServiceImpl;Ljava/util/List;)V

    return-void
.end method
