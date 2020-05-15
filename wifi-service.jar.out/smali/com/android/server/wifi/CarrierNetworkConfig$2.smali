.class Lcom/android/server/wifi/CarrierNetworkConfig$2;
.super Landroid/database/ContentObserver;
.source "CarrierNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/CarrierNetworkConfig;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/CarrierNetworkConfig;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$2;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    iput-object p3, p0, Lcom/android/server/wifi/CarrierNetworkConfig$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/CarrierNetworkConfig$2;->this$0:Lcom/android/server/wifi/CarrierNetworkConfig;

    iget-object v1, p0, Lcom/android/server/wifi/CarrierNetworkConfig$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/wifi/CarrierNetworkConfig;->access$000(Lcom/android/server/wifi/CarrierNetworkConfig;Landroid/content/Context;)V

    .line 91
    return-void
.end method
