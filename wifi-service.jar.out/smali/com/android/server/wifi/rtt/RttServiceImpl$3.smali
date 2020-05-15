.class Lcom/android/server/wifi/rtt/RttServiceImpl$3;
.super Landroid/database/ContentObserver;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;->start(Landroid/os/Looper;Lcom/android/server/wifi/Clock;Landroid/net/wifi/aware/IWifiAwareManager;Lcom/android/server/wifi/rtt/RttNative;Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/FrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field final synthetic val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/rtt/RttServiceImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 272
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$3;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput-object p3, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$3;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 275
    iget-object v0, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$3;->this$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$3;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-static {v0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->access$500(Lcom/android/server/wifi/rtt/RttServiceImpl;Lcom/android/server/wifi/FrameworkFacade;)V

    .line 276
    return-void
.end method
