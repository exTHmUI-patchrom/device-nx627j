.class Lcom/android/server/wifi/WifiConfigManager$3;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigManager;->registerUCObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    .line 3272
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$3;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3274
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager$3;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->access$400(Lcom/android/server/wifi/WifiConfigManager;)V

    .line 3275
    return-void
.end method
